#!/bin/bash

# Ensure a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 FILENAME.c"
    exit 1
fi

FILENAME=$1
BASENAME=$(basename "$FILENAME" .c)


# copy over the c file
cp $FILENAME ../magic-decomp/temp.c

# Change to the magic-decompiler directory

cd ../magic-decomp || { echo "Directory not found! Exiting."; exit 1; }

# Run the compile.py script
python3 compile.py "temp.c"

# Execute the dtk tool
../melee/build/tools/dtk elf disasm build/temp.o build/temp.s

# Move the .s file to the target directory
mv build/temp.s "../decomp-0-context-training/general/$BASENAME.s"

echo "Process completed successfully."
