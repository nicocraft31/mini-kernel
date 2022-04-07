# MINI KERNEL

This is my custom kernel. It's very small (I just got 1 .c file), but it will grow.

# Setup and build

First, you need the actual repo on your computer.

        git clone --recursive https://github.com/nicocraft31/discord-bot

Then, check if you have installed the necesary dependecies, which are QEMU, x86_64-elf-gcc and ld, and Make.

After that, to setup all directories and things, use this command on the main directory:

        make setup

Then, run twice this command:

        make build

And to run the project, use:

        qemu-system-x86_64 -hda bin/oso.iso