(*
  Design.register_extension is the entry point for extending the GUI.
  Its argument is a function which takes as argument an object corresponding
  to the main window of the Frama-C GUI. This object provides access to the
  main widgets of the window, and several extension points.

  Here we have implemented a single extension, the “source selector”,
  that allows to add entries to menu obtained when right-clicking on the
  source. This is implemented by the cfg_selector function.

  This function takes a localizable argument, which gives information on
  where the user clicks on the source. Here we do something only if the
  user clicks on the declaration of a variable whose type is a function
  (i.e. when the user clicked on a function declaration or definition).
  In that case, we add an item to the popup menu, that calls the callback
  function if clicked. The callback function calls a Frama-C GUI function
  that displays a graph from dot printing functions. It uses several
  important Frama-C APIs: Globals and Kernel_function, which contain several
  functions for manipulating globals and functions.

  Note that this GUI extension could also have been done through a script
  (instead of a plug-in), but it would have been less than ideal. In particular,
  the GUI OCaml modules are available only when a script is loaded with
  frama-c-gui, and not when loaded with frama-c. When the user wants to view
  the CFG from the GUI, outputting the CFG of all functions in cfg.out is
  useless. A better architectural solution is to split our plug-in in several
  files, with its own Makefile, to better manage its functionalities.

*)

open Cil_types
open Cfg_core
module Options = Cfg_options


let cfg_selector
  (popup_factory:GMenu.menu GMenu.factory) main_ui ~button:_ localizable =
  match localizable with
(*Matches global declarations that are functions. *)
  | Pretty_source.PVDecl(_,_, ({vtype = TFun(_,_,_,_)} as vi)) ->
      let callback () =
      let kf = Globals.Functions.get vi in
      let fundec = Kernel_function.get_definition kf in
      let window:GWindow.window = main_ui#main_window in
        Gtk_helper.graph_window_through_dot
        ~parent:window
        ~title:"Control flow graph"
        (dump_function fundec)
      in
      ignore (popup_factory#add_item "Show_CFG" ~callback)
  | _ -> ()

let main_gui main_ui = main_ui#register_source_selector cfg_selector

let () = Design.register_extension main_gui
