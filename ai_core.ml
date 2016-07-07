(**************************************************************************)
(*                                                                        *)
(*  This file is part of CELIA.                                           *)
(*                                                                        *)
(*  Copyright (C) 2015-2016 *)
(*    IRIF  (University Paris Diderot and CNRS)                           *)
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

(** {1 Provides entry points for the analysis of free-list DMA} *)

(** State of the plugin *)
module Ai_state = State_builder.Hashtbl
    (Cil_datatype.Fundec.Hashtbl)
    (Datatype.String)
    (struct
      let name = "Ai.state"
      let dependencies = [ Ast.self; Db.Value.self ]
      let size = 17
    end)
;;

(** Compute and then check the data abstraction *)
let run_compute () =
  begin
    (* Step 0: check and initialise data abstraction *)
    Ai_dabs.init ();
    Ai_options.Self.feedback "Analysed code in full.c@.";
    File.pretty_ast
      ~fmt:(Format.formatter_of_out_channel (open_out "full.c")) ();
    Ai_env.penvs_init ();

    (* Step 1: compute from the generic entry point *)
    Ai_options.Self.feedback "Analysing the application starting at 'main'@.";
    Ai_dflap.compute_from_entry_point ();

    (* Step 2: compute specs using previous results for each function *)
    (* 2a: for minit *)
    Ai_options.Self.feedback "Analysing 'minit'";
    Ai_dflap.compute_for_minit ();
    (* 2b: for malloc *)
    Ai_options.Self.feedback "Analysing 'malloc'";
    Ai_dflap.compute_for_malloc ();
    (* 2c: for mfree *)
    Ai_options.Self.feedback "Analysing 'mfree'";
    Ai_dflap.compute_for_mfree ();

    Ai_dflap.print_results true
  end

(** Print results of the analysis for each DMA methods *)
let print_fun kf fmt =
   begin
     Ai_options.channel_res := fmt; (* Format.std_formatter; *)
     Ai_dflap.print_results_fun true kf
   end
