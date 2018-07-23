

### The structure of tool

 
![The structure of tool-w500](https://lh3.googleusercontent.com/-oU_lkts2hyQ/WzIJ6bjnR1I/AAAAAAAAAC4/wg1NBQuJZYkL-NBgBiFZOeyfDvPf7QNNACHMYCw/I/Screenshot%2B2018-06-26%2Bat%2B11.39.28.png)

The structure of the tool is explained in /src/.


### Mman
This is the distribution of the Mman plugin of Frama-C for the analysis of heap-maniputating programs such as free-list dynamic memory allocators. The software is now under construction.

Compilation: To compile the sources, we recommend to install opam and the following packages:

- zarith, conf-gmp, conf-mpfr for high precision numerical computation, 
- conf-ppl, apron for numerical abstract domains,
- frama-c-base for the platform Frama-C

To compile, call make in the src directory. 


```sh
$make
$make install 
```

run 
```sh
$frama-c list
```
The plugin Mman will be shown in the list of plugins of frama-c.


### Execution
The plugin is executed using the -load-module option of Frama-C. Notice that Frama-C requires to specify an entry point, which by default is main. Our analyser shall start by analysing a small main program in order to infer the characteristics of the DMA. Moreover, the program shall pass the value analysis of Frama-C. This may be tested by executing:

```sh
frama-c -val *.c
```
where *.c is the main program fixed and calling the methods of the DMA. This file shall also include the specification of the data abstraction of the DMA in the form of a logic ACSL definition.

#### To execute

To execute the **mman** plugin, launch the following command in the source directory of the plugin:

```sh 
$frama-c -val -load-module ./Mman -mman -mman-out *.c
```

To obtain debug information: 

```sh 
$frama-c -val -load-module ./Mman -mman -debug 1 -mman-out *.c
```

or with debug information from frama-c

```sh 
$frama-c -kernel-msg-key dynlink -kernel-debug 2 -val -load-module ./Mman -mman *.c
```

or directly call Mman

```sh  
$frama-c -mman -debug 2 *.c  
```


where the level of debugging is here one (the smallest). The following information is printed when debugging option is set:

- the full source code used in the analyser is printed in file full.c,
- the list of environments and the mapping of statements (i.e., their unique identifiers) to environments,
- the abstract statements applied and the abstract values obtained,
- the invariants computed.

The invariants computed are available by default in file **inv.out**. The name of the output file may be set using the option **-mman-output**.



