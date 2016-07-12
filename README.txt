
This is the distribution of the Mman plugin of Frama-C
for the analysis of free-list dynamic memory allocators.

To build:
=========
Do
> make
in the current directory.

To execute:
===========
Do
> frama-c -val -load-module ./Mman -mman -mman-out DMAmain.c

To obtain debug information:
============================
Do
> frama-c -val -load-module ./Mman -mman -debug 1 -mman-out DMAmain.c

or with debug information from frama-c
> frama-c -kernel-msg-key dynlink -kernel-debug 2 -val -load-module ./Mman -mman -debug 1 DMAmain.c


frama-c -mman