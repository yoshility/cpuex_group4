import argparse
parser = argparse.ArgumentParser()
parser.add_argument('globals')
parser.add_argument('lib')
parser.add_argument('main')
parser.add_argument('targ')
args = parser.parse_args()

if args.lib.strip() == "no":
        with open(args.globals, mode = 'r') as globals:
            with open(args.targ, mode = 'w') as targ:
                with open(args.main, mode = 'r') as main:
                    line = globals.read()
                    targ.write(line)
                    line = main.read()
                    targ.write(line)

else: 
    with open(args.lib, mode = 'r') as lib:
        with open(args.globals, mode = 'r') as globals:
            with open(args.targ, mode = 'w') as targ:
                with open(args.main, mode = 'r') as main:
                    line = globals.read()
                    targ.write(line)
                    line = lib.read()
                    targ.write(line)
                    line = main.read()
                    targ.write(line)

            