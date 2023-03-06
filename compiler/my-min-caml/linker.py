import argparse
parser = argparse.ArgumentParser()
parser.add_argument('asm')
parser.add_argument('targ')
parser.add_argument('lib')
args = parser.parse_args()

with open(args.asm, mode = 'r') as asm:
    with open(args.targ, mode = 'w') as targ:
        with open(args.lib, mode = 'r') as lib:
            line = lib.readline()
            while ".text" not in line:
                targ.write(f"{line}")
                line = lib.readline()
            while "align" not in line:
                line = asm.readline()
            line = asm.readline()
            while ".text" not in line:
                targ.write(f"{line}")
                line = asm.readline()
            tmp = line
            targ.write(f"{line}") # .section	".text"
            line = lib.readline()
            while line:
                targ.write(f"{line}")
                line = lib.readline()
            line = tmp
            while line:
                line = asm.readline()
                targ.write(f"{line}")



            

