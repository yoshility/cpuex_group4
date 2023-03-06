import sys
import struct
from typing import Union

def change(a):
    if (a == '0000'):
        return '0'
    if (a == '0001'):
        return '1'
    if (a == '0010'):
        return '2'
    if (a == '0011'):
        return '3'
    if (a == '0100'):
        return '4'
    if (a == '0101'):
        return '5'
    if (a == '0110'):
        return '6'
    if (a == '0111'):
        return '7'
    if (a == '1000'):
        return '8'
    if (a == '1001'):
        return '9'
    if (a == '1010'):
        return 'A'
    if (a == '1011'):
        return 'B'
    if (a == '1100'):
        return 'C'
    if (a == '1101'):
        return 'D'
    if (a == '1110'):
        return 'E'
    if (a == '1111'):
        return 'F'
def num2bytes(n: Union[int, float], endian: str = '<'):
    """
    convert number to bytes

    Parameters
    ----------
    n      : int | float
        number to convert
    endian : str
        < -> little endian |
        > -> big endian

    Returns
    -------
    value : bytes
        4 bytes data with the specified endian
    """

    if isinstance(n, int):
        return struct.pack(endian + 'i', n)
    elif isinstance(n, float):
        return struct.pack(endian + 'f', n)
    else:
        print("illegal input: must be [int | float]")
        sys.exit()


def bin_reader(bin_file_name: str, endian: str='<', length: bool=False):
    """
    read the input binary program file

    Parameters
    ----------
    bin_file_name : str
        binary file name
    endian        : str
        < -> little endian |
        > -> big endian
    length        : bool
        True  -> return byte length + bytes
        False -> return bytes only

    Returns
    -------
    bin_bytes : bytes
        binary file contents in a binary format
    """

    if bin_file_name is None:
        return None

    print("reading binary file:")

    with open(bin_file_name, 'rb') as bin_fp:
        bin_bytes = bin_fp.read()

    #if length:
        ##bin_bytes = num2bytes(len(bin_bytes), endian) + bin_bytes

    print("\tdone.")

    return bin_bytes

class SLD:
    def __init__(self, sld_file_name: str, max_n_words: int=4096):
        """
        initialize variables for sld_reader

        Parameters
        ----------
        sld_file_name : str
            SLD file name
        max_n_words   : itn
            maximum number of words to read
        """

        with open(sld_file_name, 'r') as sld_fp:
            self.sld_raw = sld_fp.read().split()

        self.sld_data = []
        self.sld_idx = 0
        self.max_n_words = max_n_words


    def _read_float(self):
        """
        read a float in the SLD file and append it to the array sld_words.

        Returns
        -------
        sld_data[-1] : float
            the float read from the file
        """

        if self.sld_idx >= self.max_n_words:
            print("read_float : too many sld words.")
            sys.exit()

        if self.sld_idx >= len(self.sld_raw):
            print("failed to read a float")
            sys.exit()

        self.sld_data.append(float(self.sld_raw[self.sld_idx]))
        self.sld_idx += 1
        return self.sld_data[-1]


    def _read_int(self):
        """
        read an integer in the SLD file and append it to the array sld_words.

        Returns
        -------
        sld_data[-1] : int
            the integer read from the file
        """

        if self.sld_idx >= self.max_n_words:
            print("read_int : too many sld words.")
            sys.exit()

        if self.sld_idx >= len(self.sld_raw):
            print("failed to read an int")
            sys.exit()

        self.sld_data.append(int(self.sld_raw[self.sld_idx]))
        self.sld_idx += 1
        return self.sld_data[-1]


    def _read_vec3(self):
        """
        read a 3D float vector and append it to the array sld_words.
        """

        for _ in range(3):
            self._read_float()


    def read_sld_env(self):
        """
        read the scene environments
        """

        # screen pos
        self._read_vec3()
        # screen rotation
        self._read_float()
        self._read_float()
        # n_lights : Actually, it should be an int value !
        self._read_int()
        # light rotation
        self._read_float()
        self._read_float()
        # beam
        self._read_float()


    def read_objects(self):
        """
        read all the objects
        """

        while self._read_int() != -1:  # texture : -1 -> end
            # form
            self._read_int()
            # refltype
            self._read_int()
            # isrot_p
            is_rot = self._read_int()
            # abc
            self._read_vec3()
            # xyz
            self._read_vec3()
            # is_invert
            self._read_float()
            # refl_param
            self._read_float()
            self._read_float()
            # color
            self._read_vec3()
            # rot
            if is_rot != 0:
                self._read_vec3()


    def read_and_network(self):
        """
        read the AND-network
        """

        while self._read_int() != -1:
            while self._read_int() != -1:
                pass


    def read_or_network(self):
        """
        read the OR-network
        """

        while self._read_int() != -1:
            while self._read_int() != -1:
                pass



def sld_reader(sld_file_name: str, endian: str='<'):
    """
    convert the input SLD text file into a binary format

    Parameters
    ----------
    sld_file_name : str
        SLD file name
    endian : str
        < -> little endian |
        > -> big endian

    Returns
    -------
    sld_bytes : bytes
        SLD file contents in a binary format
    """

    print("reading SLD file:")

    sld = SLD(sld_file_name)
    sld.read_sld_env()
    sld.read_objects()
    sld.read_and_network()
    sld.read_or_network()

    sld_bytes = b''.join([num2bytes(n, endian) for n in sld.sld_data])

    print("\tdone.")
    return sld_bytes


def txt_reader(txt_file_name: str, endian: str='<'):
    """
    convert the input text file (32 bit float separated by ' ', '\n', or '\t') into a binary format

    Parameters
    ----------
    txt_file_name : str
        txt file name
    endian : str
        < -> little endian |
        > -> big endian

    Returns
    -------
    txt_bytes : bytes
        txt file contents in a binary format
    """

    print("reading txt file:")

    with open(txt_file_name, 'r') as txt_fp:
        txt_raw = txt_fp.read().split()

    txt_bytes = b''.join([num2bytes(float(d), endian) for d in txt_raw])
    print("\tdone.")
    return txt_bytes


def data_reader(data_file_name: str, endian: str='<'):
    """
    convert the input SLD text file into a binary format

    Parameters
    ----------
    data_file_name : str
        data file name (.sld, .txt, or others regarded as binary)
    endian : str
        < -> little endian |
        > -> big endian

    Returns
    -------
    data_bytes : bytes
        data file contents in a binary format
    """

    ext = data_file_name.rsplit('.', 1)[-1]

    if ext == 'sld':
        return sld_reader(data_file_name, endian)
    elif ext == 'txt':
        return txt_reader(data_file_name, endian)
    else:
        return bin_reader(data_file_name)

t = sld_reader("contest.sld", '>')
