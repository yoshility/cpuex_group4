import struct
import numpy as np
def float_hex(f):
    return bin(struct.unpack('>I',struct.pack('>f',f))[0])

def main():
    sqrt = []
    for i in range(1024):
        if (i <512):
            sqrt.append(np.sqrt(1 + i /512))
        else :
            sqrt.append(np.sqrt(2 + (i - 512) / 256))
    for i in range(1024):
        a = 0.0
        b = 0.0
        if (i <= 512):
            a = (sqrt[i+1] - sqrt[i]) * 512
            b = sqrt[i] - a * (1 + i / 512)
        elif (i < 1023) :
            a = (sqrt[i+1] - sqrt[i]) * 256
            b = sqrt[i] - a * (1 + i / 256)
        else :
            a = (2.0 - sqrt[i]) * 256
            b = 2.0 - a * 4
        a_b = (float_hex(a))
        b_b = (float_hex(b))
        le = len(a_b)
        #a is 13bit 
        #print('00' + a_b[-23:-12])
        #print('00' +a_b)
        #print(a_b)
        #print(float_hex(sqrt[i])[-24:-1])
        print(float_hex(sqrt[i])[-24:-1] + a_b[le-23:le-10])
main()