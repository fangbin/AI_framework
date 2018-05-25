
TODO
--

---
mman_asyn.ml

Mpzf.to_float


 Mman_dflap.compute_from_entry_point ();

=> 
 Mman_dflap.get_init_state

=>
Mman_valap.init_globals

=> mman_valap.ml 
do_assign


Mman_options.Self.debug ~level:2 "lval2exp: found %s"  nvi.vname

1. transform AddrOf(lval) into expression in abstract domain 


# structure of Mman

mman_register.ml 
> registers the plugin in frama-c

mman_options.ml 
> defines the options of the plugin

mman_core.ml
> Provides entry points for the analysis
> gives  steps of the analysis

mman_dabs.ml 
> checks data types


mman_env.ml
> initialise the environment tables


mman_asyn.ml 
> Abstract syntax tree used for expressions obtained 
> by translating Cil expressions using the data abstraction 



mman_dfap.ml
> Analysis of statements and function bodies 
> based on the Mman_valap.Model.t abstract domain.


mman_svar.ml 
> symbolic variables and the interface 





