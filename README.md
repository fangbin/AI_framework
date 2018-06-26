
This is the distribution of the Mman plugin of Frama-C for the analysis of heap-maniputating programs such as free-list dynamic memory allocators. The software is now under construction.

#### To Registered as a plugin of frama-c :

```sh
$make
$make install 
```

run 
```sh
$frama-c list
```
The plugin Mman will be in the list of plugins of frama-c.


#### To execute:

```sh 
$frama-c -val -load-module ./Mman -mman -mman-out *.c
```

#### To obtain debug information: 

```sh 
frama-c -val -load-module ./Mman -mman -debug 1 -mman-out *.c
```

or with debug information from frama-c

```sh 
frama-c -kernel-msg-key dynlink -kernel-debug 2 -val -load-module ./Mman -mman *.c
```


#### if the mman plugin is registered in frama-c list 

```sh 
make
make install
frama-c -mman -debug 2 *.c  
```

