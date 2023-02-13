import struct
import numpy as np
import math
def float_hex(f):
    return bin(struct.unpack('>Q',struct.pack('>d',f))[0])

def main():
    sqrt = []
    sqrt_table = []
    for i in range(1024):
        if (i <512):
            sqrt.append(math.sqrt(1 + i /512))
        else :
            sqrt.append(math.sqrt(2 + (i -512) / 256))
    sqrt.append(2.0)
    for i in range(1024):
        a = 0.0
        b = 0.0
        c = 0.
        delta = 0.
        if (i <= 512):
            a = sqrt[i+1]*512 - sqrt[i]*512 
            b = sqrt[i] - a * (1 + i / 512)
            c = math.sqrt(1 + (i + i+ 1)/1024)
            delta = c/2 - (sqrt[i] + sqrt[i+1]) / 4
            #sqrt_table.append(sqrt[i] + delta)
        elif (i < 1024) :
            c = math.sqrt(2 + (i + i+ 1 - 1024)/512)
            delta =   (c - (sqrt[i] + sqrt[i+1]) / 2)/2
            #sqrt_table.append(sqrt[i] + delta)
            a = sqrt[i+1]*256 - sqrt[i] * 256
            b = sqrt[i] - a * (1 + i / 256)
        else :
            a = (2.0 - sqrt[i]) * 256
            b = 2.0 - a * 4
        a_b = (float_hex(a))
        b_b = (float_hex(b))
        
        sqrt_table.append(sqrt[i] + delta)
        
        #print(sqrt_table[i])
        le = len(a_b)
        l = len(float_hex(sqrt[i]))
        print(float_hex(sqrt_table[i])[-52:-29] + a_b[-52:-39])
    print(float_hex(sqrt_table[307]))
    print(sqrt_table[307])
    print(sqrt[307])
    print(sqrt[308])
main()