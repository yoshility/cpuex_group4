#!python3

# CPU Experiment server program
# Original Program by Nobuho Hashimoto

import serial
import numpy as np
from PIL import Image
from tqdm import tqdm
import traceback
import time
import sys
import os
import argparse
from reader import bin_reader, data_reader


def char2byte(c: str):
    return c.encode('utf-8')


def byte2char(b: bytes):
    return b.decode('utf-8')


def bytes2int(b: bytes):
    return int.from_bytes(b, 'big')


def isspace(b: bytes):
    for c in ['\t', '\n', '\v', '\f', '\r', ' ']:
        if b == char2byte(c):
            return True
    return False


class UART:
    def __init__(self, port: str, one_byte_each: bool, max_n_bytes_per_recv: int, baudrate: int, parity, stopbits, no_progress: bool):
        """
        prepare and initialize UART port

        Parameters
        ----------
        port        : str
            UART port name
        one_byte_each : bool
            True  -> read one byte each |
            False -> read max_n_bytes_per_recv bytes each
        max_n_bytes_per_recv : int
            maximum number of bytes to be received at a time
        baudrate    : int
            Baud rate such as 9600 or 115200 etc
        parity
            Enable parity checking
        stopbits
            Number of stop bits
        no_progress : bool
            True  -> hide progress bar |
            False -> show progress bar
        """

        print("open port.")
        try:
            self.uartport = serial.Serial(
                port=port,
                baudrate=baudrate,
                parity=parity,
                stopbits=stopbits
            )
        except serial.SerialException:
            print(traceback.format_exc())
            print("UART open failed for unknown reason")
            sys.exit()

        self.uartport.reset_input_buffer()
        self.uartport.reset_output_buffer()
        time.sleep(1)

        self.one_byte_each = one_byte_each
        self.progress = not(no_progress)
        self.max_n_bytes_per_recv = max_n_bytes_per_recv

        self.ungetc_byte = None
        self.raw_bin = None
        self.ppm_info = None
        self.ppm_img = None

        self.startTime = None
        self.endTime = None

    def _recv_bytes(self, n_bytes: int = 1):
        """
        receive `n_bytes` byte(s) from COM port

        Parameters
        ----------
        n_bytes : int
            number of bytes to receive (default: 1)

        Returns
        -------
        b : bytes
            the next byte from the COM port
        """

        if self.ungetc_byte is not None:
            b = self.ungetc_byte
            self.ungetc_byte = None
            return b

        try:
            b = self.uartport.read(n_bytes)
        except serial.SerialException:
            print(traceback.format_exc())
            print("UART read failed for unknown reason")
            sys.exit()

        # write the received byte to raw_bin when it is not None
        if self.raw_bin is not None:
            self.raw_bin += b

        return b

    def wait_for_0x99(self):
        """
        wait until a 0x99 byte is received
        """

        print("waiting for a 0x99 byte:")
        while self._recv_bytes() != b'\x99':
            pass
        print("\treceived.")

    def wait_for_0xaa(self):
        """
        wait until a 0xaa byte is received
        """

        print("waiting for a 0xaa byte:")
        while self._recv_bytes() != b'\xaa':
            pass
        print("\treceived.")

    def send_bytes(self, bytes: bytes, name: str):
        """
        send data in a binary format

        Parameters
        ----------
        bytes : bytes
            file contents in a binary format
        name  : str
            name of the sending data: binary | SLD
        """

        print("sending %s data:" % name)
        if self.startTime is None:
            self.startTime = time.perf_counter()
        try:
            self.uartport.write(bytes)
        except serial.SerialException:
            print(traceback.format_exc())
            print("UART write failed for unknown reason")
            sys.exit()
        print("\tdone.")

    def _ppm_recv_text_number(self):
        """
        receive an integer value in text format

        Returns
        -------
        n : int
            -1     -> error |
            others -> the integer read from the USB device
        """

        n = 0
        b = None
        integer_detected = False

        # skip preceding characters
        while True:
            b = self._recv_bytes()
            while isspace(b):  # skip spaces
                b = self._recv_bytes()

            if b == char2byte('#'):  # skip a comment line
                b = self._recv_bytes()
                while b != char2byte('\n'):
                    b = self._recv_bytes()
            else:
                break

        # parse an integer
        c = byte2char(b)
        while '0' <= c <= '9':
            n = n * 10 + int(c)
            b = self._recv_bytes()
            c = byte2char(b)
            integer_detected = True

        self.ungetc_byte = b
        return n if integer_detected else -1

    def _ppm_recv_header(self):
        """
        receive a PPM header

        Returns
        -------
        value : bool
            True  -> success |
            False -> error
        """

        if self._recv_bytes() != char2byte('P'):
            return False

        c = byte2char(self._recv_bytes())
        if c == '3':
            self.ppm_info["version"] = 3
        elif c == '6':
            self.ppm_info["version"] = 6
        else:
            return False

        # width, height, max value (read but not used)
        for key in ["height", "width", "max"]:
            self.ppm_info[key] = self._ppm_recv_text_number()
            if self.ppm_info[key] < 0:
                return False

        # header must end with a space character
        if not(isspace(self._recv_bytes())):
            return False

        return True

    def _ppm_recv_text_pixel(self):
        """
        receive a RGB pixel in text format

        Returns
        -------
        value : bool
            True  -> success |
            False -> error
        """

        rgb = []
        for _ in range(3):
            n = self._ppm_recv_text_number()
            if n < 0:
                return False
            rgb.append(n)
        self.ppm_img.append(rgb)
        return True

    def _ppm_recv_bin_pixel(self):
        """
        receive a RGB pixel in binary format

        Returns
        -------
        value : bool
            True -> success (always)
        """

        rgb = []
        for _ in range(3):
            n = bytes2int(self._recv_bytes())
            rgb.append(n)
        self.ppm_img.append(rgb)
        return True

    def _ppm_recv_pixel(self):
        """
        receive a RGB pixel

        Returns
        -------
        value : bool
            True  -> success |
            False -> error
        """

        if self.ppm_info["version"] == 3:
            return self._ppm_recv_text_pixel()
        elif self.ppm_info["version"] == 6:
            return self._ppm_recv_bin_pixel()
        else:
            return False

    def _parse_pixels_for_v3(self, b: bytes):
        """
        receive a RGB pixel in binary format

        Parameters
        -------
        b : bytes
            bytes for rgb pixels
        """

        rgb = []
        p = []
        for c in b:
            if isspace(char2byte(chr(c))):
                if len(p) > 0:
                    n = 0
                    for d in p:
                        n = n * 10 + d
                    rgb.append(n)
                    p = []

                    if len(rgb) == 3:
                        self.ppm_img.append(rgb)
                        rgb = []
            else:
                p.append(c - ord('0'))

    def _parse_pixels_for_v6(self, b: bytes):
        """
        receive a RGB pixel in binary format

        Parameters
        -------
        b : bytes
            bytes for rgb pixels
        """

        rgb = []
        for n in b:
            rgb.append(n)
            if len(rgb) == 3:
                self.ppm_img.append(rgb)
                rgb = []

    def recv_ppm_data(self):
        """
        receive the resulting PPM image from the USB device
        """

        print("receiving PPM data:")
        self.raw_bin = b''
        self.ppm_info = {}
        self.ppm_img = []

        if not(self._ppm_recv_header()):
            print("error in PPM header")
            sys.exit()

        n_pixels = self.ppm_info["width"] * self.ppm_info["height"]

        print("\tversion: %d\tsize: %d x %d"
              % (self.ppm_info["version"], self.ppm_info["width"], self.ppm_info["height"]))

        if self.one_byte_each:
            ps = range(n_pixels)
            if self.progress:
                ps = tqdm(ps)
                ps.set_description("received pixels")

            for u in ps:
                if not(self._ppm_recv_pixel()):
                    print("error in receiving pixels(%d more pixel(s) expected)."
                          % (n_pixels - u))
                    sys.exit()

            self.endTime = time.perf_counter()
        else:
            # calculate the number of total bytes to be received
            if self.ppm_info["version"] == 3:
                remaining_bytes = n_pixels * 3 * 4
            elif self.ppm_info["version"] == 6:
                remaining_bytes = n_pixels * 3

            bs = range(remaining_bytes)
            if self.progress:
                bs = tqdm(bs)
                bs.set_description("received bytes")

            b = b''
            while remaining_bytes > 0:
                n_bytes_to_recv = min(remaining_bytes, self.max_n_bytes_per_recv)
                b += self._recv_bytes(n_bytes_to_recv)
                remaining_bytes -= n_bytes_to_recv

                if self.progress:
                    bs.update(n_bytes_to_recv)
            bs.close()

            self.endTime = time.perf_counter()

            if self.ppm_info["version"] == 3:
                self._parse_pixels_for_v3(b)
            elif self.ppm_info["version"] == 6:
                self._parse_pixels_for_v6(b)

        print("\tdone.")

    def recv_raw_data(self, n_bytes: int):
        """
        receive n_bytes bytes of raw data from the USB device

        Parameters
        ----------
        n_bytes : int
            number of bytes to receive
        """

        print("receiving raw data:")
        self.raw_bin = b''

        bs = range(n_bytes)
        if self.progress:
            bs = tqdm(bs)
            bs.set_description("received pixels")

        remaining_bytes = n_bytes
        while remaining_bytes > 0:
            n_bytes_to_recv = min(remaining_bytes, self.max_n_bytes_per_recv)
            self._recv_bytes(n_bytes_to_recv)
            remaining_bytes -= n_bytes_to_recv

            if self.progress:
                bs.update(n_bytes_to_recv)
        bs.close()

        self.endTime = time.perf_counter()
        print("\tdone.")

    def close(self):
        print("close port.")
        self.uartport.close()


def parse_endian(endian: str):
    if endian == 'little':
        return '<'
    elif endian == 'big':
        return '>'
    else:
        print("illegal endian: must be [little | big]")
        sys.exit()


def parse_parity(parity: str):
    if parity == 'none':
        return serial.PARITY_NONE
    elif parity == 'odd':
        return serial.PARITY_EVEN
    elif parity == 'even':
        return serial.PARITY_ODD
    elif parity == 'mark':
        return serial.PARITY_MARK
    elif parity == 'space':
        return serial.PARITY_SPACE
    else:
        print("illegal parity: must be [none | odd | even | mark | space]")
        sys.exit()


def parse_stopbits(stopbits: str):
    if stopbits == '1':
        return serial.STOPBITS_ONE
    elif stopbits == '1.5':
        return serial.STOPBITS_ONE_POINT_FIVE
    elif stopbits == '2':
        return serial.STOPBITS_TWO
    else:
        print("illegal stopbits: must be [1 | 1.5 | 2]")
        sys.exit()


def parse_output(output: str):
    basename_without_ext = os.path.splitext(os.path.basename(output))[0]
    abspath = os.path.abspath(os.path.dirname(output))
    if not(os.path.isdir(abspath)):
        print("Directory Not Found for output option: %s" % abspath)
        sys.exit(1)
    return os.path.join(abspath, basename_without_ext)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Contest server for CPU Experiment')
    parser.add_argument(
        'port', type=str, help='port FULL name (ex: COM3, /dev/ttyUSB*, /dev/tty.usbserial*)')
    parser.add_argument('-p', '--program', metavar='FILE', type=str, default=None,
                        help='input binary program name (default: None)')
    parser.add_argument('-d', '--data', metavar='FILE', type=str,
                        default='contest.sld', help='input data file name (default: contest.sld)')
    parser.add_argument('-o', '--output', metavar='FILE', type=str, default='output',
                        help='output files name (file extension is ignored) (default: output)')
    parser.add_argument('--raw_output', metavar='N', type=int, default=None,
                        help='number of output bytes (if you need a ppm image, set nothing)')
    parser.add_argument(
        '--one_byte_each',
        action='store_true',
        help='read one byte each (caution: may lose bits in high baudrate, but parse PPM formally)')
    parser.add_argument('--max_n_bytes', metavar='N', type=int, default=1024, help='maximum number of bytes to be received at a time (default: 1024)')
    parser.add_argument('--baudrate', metavar='N', type=int,
                        default=115200, help='baudrate (default: 115200)')
    parser.add_argument('-e', '--endian', type=str, choices=['little', 'big'], default='little',
                        help='send data in [little | big] endian format (default: little)')
    parser.add_argument('--parity', type=str, choices=['none', 'odd', 'even', 'mark', 'space'],
                        default='none', help='parity type: [none | odd | even | mark | space] (default: none)')
    parser.add_argument('--stopbits', type=str, choices=['1', '1.5', '2'],
                        default='1', help='stop bit length: [1 | 1.5 | 2] (default: 1)')
    parser.add_argument('--no_progress', action='store_true', help='hide progress bar')
    args = parser.parse_args()
    args.endian = parse_endian(args.endian)
    args.parity = parse_parity(args.parity)
    args.stopbits = parse_stopbits(args.stopbits)
    output_name = parse_output(args.output)

    if args.raw_output is not None and args.one_byte_each:
        print("WARNING: '--one_byte_each' is ignored when '--raw_output' is set.")

    # load binary/SLD data
    program_bytes = bin_reader(args.program, args.endian, length=True)
    data_bytes = data_reader(args.data, args.endian)

    uart = UART(args.port, args.one_byte_each, args.max_n_bytes, args.baudrate, args.parity, args.stopbits, args.no_progress)

    if program_bytes is not None:
        # wait for a 0x99 byte
        uart.wait_for_0x99()
        # send the binary data
        uart.send_bytes(program_bytes, "binary")

    # wait for a 0xaa byte
    uart.wait_for_0xaa()
    # send the SLD data
    uart.send_bytes(data_bytes, "SLD")

    if args.raw_output is None:
        # receive the PPM image
        uart.recv_ppm_data()

        print("saving images:")

        # save txt image
        with open(output_name + ".txt", 'w') as txt_fp:
            txt_fp.write("P%d # version\n" % uart.ppm_info["version"])
            txt_fp.write("%d %d %d # (height, width, max value)\n"
                         % (uart.ppm_info["height"], uart.ppm_info["width"], uart.ppm_info["max"]))
            comment = " # (r, g, b)"
            for r, g, b in uart.ppm_img:
                txt_fp.write("%3d %3d %3d%s\n" % (r, g, b, comment))
                comment = ""

        # save ppm image
        with open(output_name + ".ppm", 'wb') as ppm_fp:
            ppm_fp.write(uart.raw_bin)

        # save png image
        np_img = np.array(uart.ppm_img, dtype=np.uint8).reshape(uart.ppm_info["height"], uart.ppm_info["width"], 3)
        Image.fromarray(np_img).save(output_name + ".png")

        print("\tsaved in \"%s.[txt | ppm | png]\"." % output_name)
    else:
        # receive args.raw_output bytes of raw data
        uart.recv_raw_data(args.raw_output)

        print("saving raw data:")
        with open(output_name, 'wb') as bin_fp:
            bin_fp.write(uart.raw_bin)
        print("\tsaved in \"%s\"." % output_name)

    uart.close()

    print("elapsed_time: %.4f s" % (uart.endTime - uart.startTime))
