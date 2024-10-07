import re
import sys
from collections import namedtuple

FuncAndAddr = namedtuple('FuncAndAddr', ['func_name', 'addr'])

def get_funcs(lines) -> [FuncAndAddr]:
    funcs = []
    for line in lines:
        # check if it's a function line
        if len(line) > 8 and all([c.isdigit() for c in line[:8]]):
            address_hex = line.split()[0]
            address_int = int(address_hex, 16)

            function_name = line.split('<')[1].split('>')[0]
            funcs.append(FuncAndAddr(function_name, address_int))
    return funcs


def main():
    filename = sys.argv[1]
    # Sample input assembly lines (in format 1)
    with open(filename, 'r') as f:
        input_asm = f.read()

    output_asm = convert_format(input_asm)

    # Print or save the converted assembly in format 2
    for line in output_asm:
        print(line)


if __name__ == "__main__":
    main()
