import argparse
parser = argparse.ArgumentParser()
parser.add_argument('first')
parser.add_argument('second')
parser.add_argument('targ')
args = parser.parse_args()

with open(args.first, mode = 'r') as first:
    with open(args.targ, mode = 'w') as targ:
        with open(args.second, mode = 'r') as second:
            line = first.read()
            targ.write(line)
            line = second.read()
            targ.write(line)

            