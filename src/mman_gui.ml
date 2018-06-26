(**************************************************************************)
(*                                                                        *)
(*  This file is part of CELIA.                                           *)
(*                                                                        *)
(*  Copyright (C) 2015 *)
(*    IRIF  (University of Paris Diderot and CNRS)                        *)
(*                                                                        *)
(*                                                                        *)
(*  you can redistribute it and/or modify it under the terms of the GNU   *)
(*  Lesser General Public License as published by the Free Software       *)
(*  Foundation, version 3.                                                *)
(*                                                                        *)
(*  It is distributed in the hope that it will be useful,                 *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of        *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *)
(*  GNU Lesser General Public License for more details.                   *)
(*                                                                        *)
(*  See the GNU Lesser General Public License version 3.                  *)
(*  for more details (enclosed in the file LICENSE).                      *)
(*                                                                        *)
(**************************************************************************)

open Cil_types

module Options = Mman_options

let cfg_selector
    (popup_factory:GMenu.menu GMenu.factory) main_ui ~button:_ localizable =
  match localizable with
  (* Matches global declarations that are functions. *)
  | Pretty_source.PVDecl(_, _, ({vtype = TFun(_,_,_,_)} as vi)) ->
      let callback () =
        let kf = Globals.Functions.get vi in
        let window:GWindow.window = main_ui#main_window in
        Gtk_helper.graph_window_through_dot
          ~parent:window ~title:"Control flow graph"
          (Mman_core.print_fun kf)
      in
      ignore (popup_factory#add_item "Show _CFG" ~callback)
  | _ -> ()


let main_gui main_ui = main_ui#register_source_selector cfg_selector


let () = Design.register_extension main_gui

