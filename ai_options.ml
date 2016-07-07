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

let ai_msg = "analyse the free-list based memory allocator in the input file"

module Self = Plugin.Register
    (struct
      let name = "Memory manager analyser"
      let shortname = "ai"
      let help = ai_msg
    end)

module OptEnabled = Self.False
    (struct
      let option_name = "-ai"
      let help = "when on (off by default), " ^ ai_msg
    end)

module OptOutFile = Self.String
    (struct
      let option_name = "-ai-output"
      let default = "-"
      let arg_name = "output-file"
      let help =
        "file where the invariants computed are output (default: output to the console)"
    end)

module OptNumAnalysis = Self.True
    (struct
      let option_name = "-ai-num"
      let help = "apply numerical analysis, no shape analysis (default)"
    end)

module OptSynAbstraction = Self.True
    (struct
      let option_name = "-ai-syn"
      let help = "apply syntactic transformation by data abstraction (default)"
    end)

let channel_res = ref Format.std_formatter
