
 

### The structure of tool

 
![The structure of tool-w500](https://lh3.googleusercontent.com/-oU_lkts2hyQ/WzIJ6bjnR1I/AAAAAAAAAC4/wg1NBQuJZYkL-NBgBiFZOeyfDvPf7QNNACHMYCw/I/Screenshot%2B2018-06-26%2Bat%2B11.39.28.png)

#### mman_register
The entry point of the plug-in, this module: (i) checks the preconditions for the plug-in launching, (ii) initialise the plug-in project, and (iii) call the mman_core module. Follows the principles given for the development of a Frama-C plugin, Section 3.


#### mman_options
This module inherits from the Frama-C module for options. It adds the specific options for the plugin. By inheritance, it provides the functions for feedback to the user: issue an warning, an error, a message.

#### mman_core
The module contains the flow of the analysis: call of the data abstraction analysis and initialisation, call of the analysis on the main program, generalisation of the invariants obtained, relaunch of the analysis on each method of the interface, and printing of results.


#### mman_dabs
The module contains the types encoding the data abstraction and the methods for parsing the ACSL specifications (see Section 3) and for type- checking them. It also provides methods for building the features sets at H-list and F-list levels.

#### mman_asyn
The module encode the abstract syntax, i.e., the CIL instructions (i.e., simple statements) and boolean expressions transformed by the data abstraction. It also provides methods for the memoization of commands (assignment and assume) as lambda terms on the pointer variables.

#### mman_dflow
The module provides the main analysis functions called by the mman_core module. For this, it instantiate the Frama-C module Dataflows which provides a fix-point computation. The abstract value parameter of this computation is the abstract domain built for this analysis, i.e., the mman_value module. The analysis done is inter-procedural but not relational. Shall also include a meaning for generalisation of the invariants obtained by the analysis.

#### mman_value
This module is an interface for the different implementations of the abstract domains needed by the analysis. It uses the module **mman_env** to manage (insert, project out) the list of program and symbolic variable. The implementation available for this module, **mman_valsw**, encodes a cofibered product between an extended shape domain (module **mman_eshape.ml**) managing the heap and free lists and a data word domain (module **mman_dword.ml**).


#### mman_env, mman_svar
These modules are use to store the domains of configurations represented by the abstract values into a global store. One such domain is called an environment and it stores program variables and the following ghost variables:


- __retres: variable representing the return value of a function which return type is not void (name fixed in Frama-C).
- __hst,__hli: variables storing the address of the start resp. the end of the data segment.
- __hole: variable used to transform the code and representing an undefined address value.
- __null: variable representing the null (0) location.
- for each program variable p whose address is taken (i.e., the expression &p is reachable in the code) there is a symbolic variable sa__n, where n is the index of p in the current environment.


