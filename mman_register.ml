(**************************************************************************)
(*                                                                        *)
(*  This file is part of CELIA.                                           *)
(*                                                                        *)
(*  Copyright (C) 2015-2016 *)
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

(*
 * Initialise plugin project and start working
 *)
let run () =
  begin
    Mman_options.Self.result "Welcome to the Mman plugin@.";
    let fout =
      if Mman_options.OptOutFile.is_default()
      then "inv.out"
      else Mman_options.OptOutFile.get ()
    in
    let cout = open_out fout in
    let _ = Mman_options.channel_res := Format.formatter_of_out_channel cout in
    begin
      Mman_core.run_compute ();
      (* results are printed in compute *)
      close_out cout
    end
  end


let run_and_catch_error () =
  try run ()
  with exn ->
    Mman_options.Self.fatal
      "Unexpected exception.@\nPlease submit bug report (Ref. \"%s\")."
      (Printexc.to_string exn)

(**                                                                            
 * Plugin registration                                                         
*)
let run_and_catch_error =
  Dynamic.register ~plugin:"Mman"
    "run_and_catch_error" (Datatype.func Datatype.unit Datatype.unit)
    ~journalize:true
    run_and_catch_error

let main () = if Mman_options.OptEnabled.get () then run_and_catch_error ()

(** Static *)
let () = Db.Main.extend main 

(** Dynamic 
    let () = Dynamic.get ~plugin:"Mman"
    "run_and_catch_error" (Datatype.func Datatype.unit Datatype.unit)
    ()
*)

