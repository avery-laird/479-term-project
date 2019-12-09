(* Auto-generated from "runstate.atd" *)
[@@@ocaml.warning "-27-32-35-39"]

type infer_version = Runstate_t.infer_version = {
  major: int;
  minor: int;
  patch: int;
  commit: string
}

type command = Runstate_t.command

type run_info = Runstate_t.run_info = {
  date: string;
  command: command;
  infer_version: infer_version
}

type t = Runstate_t.t = {
  run_sequence: run_info list;
  results_dir_format: string;
  should_merge_capture: bool
}

let write_infer_version : _ -> infer_version -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"major\":";
    (
      Yojson.Safe.write_int
    )
      ob x.major;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"minor\":";
    (
      Yojson.Safe.write_int
    )
      ob x.minor;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"patch\":";
    (
      Yojson.Safe.write_int
    )
      ob x.patch;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"commit\":";
    (
      Yojson.Safe.write_string
    )
      ob x.commit;
    Bi_outbuf.add_char ob '}';
)
let string_of_infer_version ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_infer_version ob x;
  Bi_outbuf.contents ob
let read_infer_version = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_major = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_minor = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_patch = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_commit = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 5 -> (
                match String.unsafe_get s pos with
                  | 'm' -> (
                      match String.unsafe_get s (pos+1) with
                        | 'a' -> (
                            if String.unsafe_get s (pos+2) = 'j' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' then (
                              0
                            )
                            else (
                              -1
                            )
                          )
                        | 'i' -> (
                            if String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' then (
                              1
                            )
                            else (
                              -1
                            )
                          )
                        | _ -> (
                            -1
                          )
                    )
                  | 'p' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'h' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' then (
                  3
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_major := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_minor := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_patch := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            field_commit := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 5 -> (
                  match String.unsafe_get s pos with
                    | 'm' -> (
                        match String.unsafe_get s (pos+1) with
                          | 'a' -> (
                              if String.unsafe_get s (pos+2) = 'j' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' then (
                                0
                              )
                              else (
                                -1
                              )
                            )
                          | 'i' -> (
                              if String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' then (
                                1
                              )
                              else (
                                -1
                              )
                            )
                          | _ -> (
                              -1
                            )
                      )
                    | 'p' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'h' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_major := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_minor := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_patch := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              field_commit := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0xf then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "major"; "minor"; "patch"; "commit" |];
        (
          {
            major = !field_major;
            minor = !field_minor;
            patch = !field_patch;
            commit = !field_commit;
          }
         : infer_version)
      )
)
let infer_version_of_string s =
  read_infer_version (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__1 = (
  fun ob x -> (
    let x = ( InferCommand.to_string ) x in (
      Yojson.Safe.write_string
    ) ob x)
)
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let read__1 = (
  fun p lb ->
    let x = (
      Atdgen_runtime.Oj_run.read_string
    ) p lb in
    ( InferCommand.of_string ) x
)
let _1_of_string s =
  read__1 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_command = (
  write__1
)
let string_of_command ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_command ob x;
  Bi_outbuf.contents ob
let read_command = (
  read__1
)
let command_of_string s =
  read_command (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_run_info : _ -> run_info -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.date;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"command\":";
    (
      write_command
    )
      ob x.command;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"infer_version\":";
    (
      write_infer_version
    )
      ob x.infer_version;
    Bi_outbuf.add_char ob '}';
)
let string_of_run_info ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_run_info ob x;
  Bi_outbuf.contents ob
let read_run_info = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_date = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_command = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_infer_version = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'd' then (
                  1
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'v' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'o' && String.unsafe_get s (pos+12) = 'n' then (
                  2
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_date := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_command := (
              (
                read_command
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_infer_version := (
              (
                read_infer_version
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'd' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'v' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'o' && String.unsafe_get s (pos+12) = 'n' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_date := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_command := (
                (
                  read_command
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_infer_version := (
                (
                  read_infer_version
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x7 then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "date"; "command"; "infer_version" |];
        (
          {
            date = !field_date;
            command = !field_command;
            infer_version = !field_infer_version;
          }
         : run_info)
      )
)
let run_info_of_string s =
  read_run_info (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__2 = (
  Atdgen_runtime.Oj_run.write_list (
    write_run_info
  )
)
let string_of__2 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__2 ob x;
  Bi_outbuf.contents ob
let read__2 = (
  Atdgen_runtime.Oj_run.read_list (
    read_run_info
  )
)
let _2_of_string s =
  read__2 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_t : _ -> t -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"run_sequence\":";
    (
      write__2
    )
      ob x.run_sequence;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"results_dir_format\":";
    (
      Yojson.Safe.write_string
    )
      ob x.results_dir_format;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"should_merge_capture\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.should_merge_capture;
    Bi_outbuf.add_char ob '}';
)
let string_of_t ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_t ob x;
  Bi_outbuf.contents ob
let read_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_run_sequence = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_results_dir_format = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_should_merge_capture = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 12 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'q' && String.unsafe_get s (pos+7) = 'u' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'e' then (
                  0
                )
                else (
                  -1
                )
              )
            | 18 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'i' && String.unsafe_get s (pos+10) = 'r' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'f' && String.unsafe_get s (pos+13) = 'o' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 'm' && String.unsafe_get s (pos+16) = 'a' && String.unsafe_get s (pos+17) = 't' then (
                  1
                )
                else (
                  -1
                )
              )
            | 20 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 'h' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' && String.unsafe_get s (pos+10) = 'g' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'c' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 't' && String.unsafe_get s (pos+17) = 'u' && String.unsafe_get s (pos+18) = 'r' && String.unsafe_get s (pos+19) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_run_sequence := (
              (
                read__2
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_results_dir_format := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_should_merge_capture := (
              (
                Atdgen_runtime.Oj_run.read_bool
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 12 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'q' && String.unsafe_get s (pos+7) = 'u' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 18 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'i' && String.unsafe_get s (pos+10) = 'r' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'f' && String.unsafe_get s (pos+13) = 'o' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 'm' && String.unsafe_get s (pos+16) = 'a' && String.unsafe_get s (pos+17) = 't' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 20 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 'h' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' && String.unsafe_get s (pos+10) = 'g' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'c' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 't' && String.unsafe_get s (pos+17) = 'u' && String.unsafe_get s (pos+18) = 'r' && String.unsafe_get s (pos+19) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_run_sequence := (
                (
                  read__2
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_results_dir_format := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_should_merge_capture := (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x7 then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "run_sequence"; "results_dir_format"; "should_merge_capture" |];
        (
          {
            run_sequence = !field_run_sequence;
            results_dir_format = !field_results_dir_format;
            should_merge_capture = !field_should_merge_capture;
          }
         : t)
      )
)
let t_of_string s =
  read_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
