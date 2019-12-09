(* Auto-generated from "jsonbug.atd" *)
[@@@ocaml.warning "-27-32-35-39"]

type loc = Jsonbug_t.loc = { file: string; lnum: int; cnum: int; enum: int }

type json_trace_item = Jsonbug_t.json_trace_item = {
  level: int;
  filename: string;
  line_number: int;
  column_number: int;
  description: string
}

type extra = Jsonbug_t.extra = {
  cost_polynomial: string option;
  cost_degree: int option
}

type jsonbug = Jsonbug_t.jsonbug = {
  bug_type: string;
  doc_url: string option;
  qualifier: string;
  severity: string;
  line: int;
  column: int;
  procedure: string;
  procedure_start_line: int;
  file: string;
  bug_trace: json_trace_item list;
  key: string;
  node_key: string option;
  hash: string;
  dotty: string option;
  infer_source_loc: loc option;
  bug_type_hum: string;
  linters_def_file: string option;
  traceview_id: int option;
  censored_reason: string option;
  access: string option;
  extras: extra option
}

type report = Jsonbug_t.report

type json_trace = Jsonbug_t.json_trace = { trace: json_trace_item list }

type hum_info = Jsonbug_t.hum_info = {
  hum_polynomial: string;
  hum_degree: string;
  big_o: string
}

type cost_info = Jsonbug_t.cost_info = {
  polynomial_version: int;
  polynomial: string;
  degree: int option;
  hum: hum_info
}

type cost_item = Jsonbug_t.cost_item = {
  hash: string;
  loc: loc;
  procedure_name: string;
  procedure_id: string;
  is_on_ui_thread: bool;
  alloc_cost: cost_info;
  exec_cost: cost_info
}

type costs_report = Jsonbug_t.costs_report

let write_loc : _ -> loc -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"file\":";
    (
      Yojson.Safe.write_string
    )
      ob x.file;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"lnum\":";
    (
      Yojson.Safe.write_int
    )
      ob x.lnum;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"cnum\":";
    (
      Yojson.Safe.write_int
    )
      ob x.cnum;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"enum\":";
    (
      Yojson.Safe.write_int
    )
      ob x.enum;
    Bi_outbuf.add_char ob '}';
)
let string_of_loc ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_loc ob x;
  Bi_outbuf.contents ob
let read_loc = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_file = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_lnum = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_cnum = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_enum = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          if len = 4 then (
            match String.unsafe_get s pos with
              | 'c' -> (
                  if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 'e' -> (
                  if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 'f' -> (
                  if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 'l' -> (
                  if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
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
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_file := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_lnum := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_cnum := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            field_enum := (
              (
                Atdgen_runtime.Oj_run.read_int
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
            if len = 4 then (
              match String.unsafe_get s pos with
                | 'c' -> (
                    if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                      2
                    )
                    else (
                      -1
                    )
                  )
                | 'e' -> (
                    if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                      3
                    )
                    else (
                      -1
                    )
                  )
                | 'f' -> (
                    if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' then (
                      0
                    )
                    else (
                      -1
                    )
                  )
                | 'l' -> (
                    if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
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
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_file := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_lnum := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_cnum := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              field_enum := (
                (
                  Atdgen_runtime.Oj_run.read_int
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
        if !bits0 <> 0xf then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "file"; "lnum"; "cnum"; "enum" |];
        (
          {
            file = !field_file;
            lnum = !field_lnum;
            cnum = !field_cnum;
            enum = !field_enum;
          }
         : loc)
      )
)
let loc_of_string s =
  read_loc (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_json_trace_item : _ -> json_trace_item -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"level\":";
    (
      Yojson.Safe.write_int
    )
      ob x.level;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"filename\":";
    (
      Yojson.Safe.write_string
    )
      ob x.filename;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"line_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.line_number;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"column_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.column_number;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"description\":";
    (
      Yojson.Safe.write_string
    )
      ob x.description;
    Bi_outbuf.add_char ob '}';
)
let string_of_json_trace_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_json_trace_item ob x;
  Bi_outbuf.contents ob
let read_json_trace_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_level = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_filename = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_line_number = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_column_number = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_description = ref (Obj.magic (Sys.opaque_identity 0.0)) in
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
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'l' then (
                  0
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | 11 -> (
                match String.unsafe_get s pos with
                  | 'd' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | 'l' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'b' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'r' then (
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
            | 13 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'b' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'r' then (
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
            field_level := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_filename := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_line_number := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            field_column_number := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | 4 ->
            field_description := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x10;
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
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'l' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 11 -> (
                  match String.unsafe_get s pos with
                    | 'd' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | 'l' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'b' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'r' then (
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
              | 13 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'b' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'r' then (
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
              field_level := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_filename := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_line_number := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              field_column_number := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | 4 ->
              field_description := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x10;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x1f then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "level"; "filename"; "line_number"; "column_number"; "description" |];
        (
          {
            level = !field_level;
            filename = !field_filename;
            line_number = !field_line_number;
            column_number = !field_column_number;
            description = !field_description;
          }
         : json_trace_item)
      )
)
let json_trace_item_of_string s =
  read_json_trace_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__2 = (
  Atdgen_runtime.Oj_run.write_option (
    Yojson.Safe.write_int
  )
)
let string_of__2 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__2 ob x;
  Bi_outbuf.contents ob
let read__2 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _2_of_string s =
  read__2 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__1 = (
  Atdgen_runtime.Oj_run.write_option (
    Yojson.Safe.write_string
  )
)
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let read__1 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _1_of_string s =
  read__1 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_extra : _ -> extra -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    (match x.cost_polynomial with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"cost_polynomial\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    (match x.cost_degree with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"cost_degree\":";
      (
        Yojson.Safe.write_int
      )
        ob x;
    );
    Bi_outbuf.add_char ob '}';
)
let string_of_extra ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_extra ob x;
  Bi_outbuf.contents ob
let read_extra = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_cost_polynomial = ref (None) in
    let field_cost_degree = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 11 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'p' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'y' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'o' && String.unsafe_get s (pos+11) = 'm' && String.unsafe_get s (pos+12) = 'i' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'l' then (
                  0
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
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_cost_polynomial := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            )
          | 1 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_cost_degree := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            )
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
              | 11 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'p' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'y' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'o' && String.unsafe_get s (pos+11) = 'm' && String.unsafe_get s (pos+12) = 'i' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'l' then (
                    0
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
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_cost_polynomial := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 1 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_cost_degree := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_int
                    ) p lb
                  )
                );
              )
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            cost_polynomial = !field_cost_polynomial;
            cost_degree = !field_cost_degree;
          }
         : extra)
      )
)
let extra_of_string s =
  read_extra (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__5 = (
  Atdgen_runtime.Oj_run.write_option (
    write_extra
  )
)
let string_of__5 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__5 ob x;
  Bi_outbuf.contents ob
let read__5 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_extra
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_extra
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _5_of_string s =
  read__5 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__4 = (
  Atdgen_runtime.Oj_run.write_option (
    write_loc
  )
)
let string_of__4 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__4 ob x;
  Bi_outbuf.contents ob
let read__4 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_loc
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_loc
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _4_of_string s =
  read__4 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__3 = (
  Atdgen_runtime.Oj_run.write_list (
    write_json_trace_item
  )
)
let string_of__3 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__3 ob x;
  Bi_outbuf.contents ob
let read__3 = (
  Atdgen_runtime.Oj_run.read_list (
    read_json_trace_item
  )
)
let _3_of_string s =
  read__3 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_jsonbug : _ -> jsonbug -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"bug_type\":";
    (
      Yojson.Safe.write_string
    )
      ob x.bug_type;
    (match x.doc_url with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"doc_url\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"qualifier\":";
    (
      Yojson.Safe.write_string
    )
      ob x.qualifier;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"severity\":";
    (
      Yojson.Safe.write_string
    )
      ob x.severity;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"line\":";
    (
      Yojson.Safe.write_int
    )
      ob x.line;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"column\":";
    (
      Yojson.Safe.write_int
    )
      ob x.column;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"procedure\":";
    (
      Yojson.Safe.write_string
    )
      ob x.procedure;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"procedure_start_line\":";
    (
      Yojson.Safe.write_int
    )
      ob x.procedure_start_line;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"file\":";
    (
      Yojson.Safe.write_string
    )
      ob x.file;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"bug_trace\":";
    (
      write__3
    )
      ob x.bug_trace;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"key\":";
    (
      Yojson.Safe.write_string
    )
      ob x.key;
    (match x.node_key with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"node_key\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"hash\":";
    (
      Yojson.Safe.write_string
    )
      ob x.hash;
    (match x.dotty with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"dotty\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    (match x.infer_source_loc with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"infer_source_loc\":";
      (
        write_loc
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"bug_type_hum\":";
    (
      Yojson.Safe.write_string
    )
      ob x.bug_type_hum;
    (match x.linters_def_file with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"linters_def_file\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    (match x.traceview_id with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"traceview_id\":";
      (
        Yojson.Safe.write_int
      )
        ob x;
    );
    (match x.censored_reason with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"censored_reason\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    (match x.access with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"access\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    (match x.extras with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"extras\":";
      (
        write_extra
      )
        ob x;
    );
    Bi_outbuf.add_char ob '}';
)
let string_of_jsonbug ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_jsonbug ob x;
  Bi_outbuf.contents ob
let read_jsonbug = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_bug_type = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_doc_url = ref (None) in
    let field_qualifier = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_severity = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_line = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_column = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_procedure = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_procedure_start_line = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_file = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_bug_trace = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_key = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_node_key = ref (None) in
    let field_hash = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_dotty = ref (None) in
    let field_infer_source_loc = ref (None) in
    let field_bug_type_hum = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_linters_def_file = ref (None) in
    let field_traceview_id = ref (None) in
    let field_censored_reason = ref (None) in
    let field_access = ref (None) in
    let field_extras = ref (None) in
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
            | 3 -> (
                if String.unsafe_get s pos = 'k' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'y' then (
                  10
                )
                else (
                  -1
                )
              )
            | 4 -> (
                match String.unsafe_get s pos with
                  | 'f' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' then (
                        8
                      )
                      else (
                        -1
                      )
                    )
                  | 'h' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'h' then (
                        12
                      )
                      else (
                        -1
                      )
                    )
                  | 'l' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'y' then (
                  13
                )
                else (
                  -1
                )
              )
            | 6 -> (
                match String.unsafe_get s pos with
                  | 'a' -> (
                      if String.unsafe_get s (pos+1) = 'c' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 's' then (
                        19
                      )
                      else (
                        -1
                      )
                    )
                  | 'c' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' then (
                        5
                      )
                      else (
                        -1
                      )
                    )
                  | 'e' -> (
                      if String.unsafe_get s (pos+1) = 'x' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 's' then (
                        20
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'l' then (
                  1
                )
                else (
                  -1
                )
              )
            | 8 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' then (
                        0
                      )
                      else (
                        -1
                      )
                    )
                  | 'n' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'k' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'y' then (
                        11
                      )
                      else (
                        -1
                      )
                    )
                  | 's' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'y' then (
                        3
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 9 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'e' then (
                        9
                      )
                      else (
                        -1
                      )
                    )
                  | 'p' -> (
                      if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' then (
                        6
                      )
                      else (
                        -1
                      )
                    )
                  | 'q' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'f' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'r' then (
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
            | 12 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'h' && String.unsafe_get s (pos+10) = 'u' && String.unsafe_get s (pos+11) = 'm' then (
                        15
                      )
                      else (
                        -1
                      )
                    )
                  | 't' -> (
                      if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'v' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'w' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'd' then (
                        17
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'd' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'r' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 's' && String.unsafe_get s (pos+13) = 'o' && String.unsafe_get s (pos+14) = 'n' then (
                  18
                )
                else (
                  -1
                )
              )
            | 16 -> (
                match String.unsafe_get s pos with
                  | 'i' -> (
                      if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'r' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'l' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = 'c' then (
                        14
                      )
                      else (
                        -1
                      )
                    )
                  | 'l' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'f' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'f' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'l' && String.unsafe_get s (pos+15) = 'e' then (
                        16
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 20 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 't' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'l' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'n' && String.unsafe_get s (pos+19) = 'e' then (
                  7
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
            field_bug_type := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_doc_url := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            )
          | 2 ->
            field_qualifier := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 3 ->
            field_severity := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 4 ->
            field_line := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | 5 ->
            field_column := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x10;
          | 6 ->
            field_procedure := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x20;
          | 7 ->
            field_procedure_start_line := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x40;
          | 8 ->
            field_file := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x80;
          | 9 ->
            field_bug_trace := (
              (
                read__3
              ) p lb
            );
            bits0 := !bits0 lor 0x100;
          | 10 ->
            field_key := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x200;
          | 11 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_node_key := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            )
          | 12 ->
            field_hash := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x400;
          | 13 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_dotty := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            )
          | 14 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_infer_source_loc := (
                Some (
                  (
                    read_loc
                  ) p lb
                )
              );
            )
          | 15 ->
            field_bug_type_hum := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x800;
          | 16 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_linters_def_file := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            )
          | 17 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_traceview_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            )
          | 18 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_censored_reason := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            )
          | 19 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_access := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            )
          | 20 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_extras := (
                Some (
                  (
                    read_extra
                  ) p lb
                )
              );
            )
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
              | 3 -> (
                  if String.unsafe_get s pos = 'k' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'y' then (
                    10
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  match String.unsafe_get s pos with
                    | 'f' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' then (
                          8
                        )
                        else (
                          -1
                        )
                      )
                    | 'h' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'h' then (
                          12
                        )
                        else (
                          -1
                        )
                      )
                    | 'l' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'y' then (
                    13
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  match String.unsafe_get s pos with
                    | 'a' -> (
                        if String.unsafe_get s (pos+1) = 'c' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 's' then (
                          19
                        )
                        else (
                          -1
                        )
                      )
                    | 'c' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' then (
                          5
                        )
                        else (
                          -1
                        )
                      )
                    | 'e' -> (
                        if String.unsafe_get s (pos+1) = 'x' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 's' then (
                          20
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'l' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | 'n' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'k' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'y' then (
                          11
                        )
                        else (
                          -1
                        )
                      )
                    | 's' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'y' then (
                          3
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 9 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'e' then (
                          9
                        )
                        else (
                          -1
                        )
                      )
                    | 'p' -> (
                        if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' then (
                          6
                        )
                        else (
                          -1
                        )
                      )
                    | 'q' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'f' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'r' then (
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
              | 12 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'h' && String.unsafe_get s (pos+10) = 'u' && String.unsafe_get s (pos+11) = 'm' then (
                          15
                        )
                        else (
                          -1
                        )
                      )
                    | 't' -> (
                        if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'v' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'w' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'd' then (
                          17
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'd' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'r' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 's' && String.unsafe_get s (pos+13) = 'o' && String.unsafe_get s (pos+14) = 'n' then (
                    18
                  )
                  else (
                    -1
                  )
                )
              | 16 -> (
                  match String.unsafe_get s pos with
                    | 'i' -> (
                        if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'r' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'l' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = 'c' then (
                          14
                        )
                        else (
                          -1
                        )
                      )
                    | 'l' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'f' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'f' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'l' && String.unsafe_get s (pos+15) = 'e' then (
                          16
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 20 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 't' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'l' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'n' && String.unsafe_get s (pos+19) = 'e' then (
                    7
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
              field_bug_type := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_doc_url := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 2 ->
              field_qualifier := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 3 ->
              field_severity := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 4 ->
              field_line := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | 5 ->
              field_column := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x10;
            | 6 ->
              field_procedure := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x20;
            | 7 ->
              field_procedure_start_line := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x40;
            | 8 ->
              field_file := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x80;
            | 9 ->
              field_bug_trace := (
                (
                  read__3
                ) p lb
              );
              bits0 := !bits0 lor 0x100;
            | 10 ->
              field_key := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x200;
            | 11 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_node_key := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 12 ->
              field_hash := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x400;
            | 13 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_dotty := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 14 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_infer_source_loc := (
                  Some (
                    (
                      read_loc
                    ) p lb
                  )
                );
              )
            | 15 ->
              field_bug_type_hum := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x800;
            | 16 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_linters_def_file := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 17 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_traceview_id := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_int
                    ) p lb
                  )
                );
              )
            | 18 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_censored_reason := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 19 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_access := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 20 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_extras := (
                  Some (
                    (
                      read_extra
                    ) p lb
                  )
                );
              )
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0xfff then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "bug_type"; "qualifier"; "severity"; "line"; "column"; "procedure"; "procedure_start_line"; "file"; "bug_trace"; "key"; "hash"; "bug_type_hum" |];
        (
          {
            bug_type = !field_bug_type;
            doc_url = !field_doc_url;
            qualifier = !field_qualifier;
            severity = !field_severity;
            line = !field_line;
            column = !field_column;
            procedure = !field_procedure;
            procedure_start_line = !field_procedure_start_line;
            file = !field_file;
            bug_trace = !field_bug_trace;
            key = !field_key;
            node_key = !field_node_key;
            hash = !field_hash;
            dotty = !field_dotty;
            infer_source_loc = !field_infer_source_loc;
            bug_type_hum = !field_bug_type_hum;
            linters_def_file = !field_linters_def_file;
            traceview_id = !field_traceview_id;
            censored_reason = !field_censored_reason;
            access = !field_access;
            extras = !field_extras;
          }
         : jsonbug)
      )
)
let jsonbug_of_string s =
  read_jsonbug (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__6 = (
  Atdgen_runtime.Oj_run.write_list (
    write_jsonbug
  )
)
let string_of__6 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__6 ob x;
  Bi_outbuf.contents ob
let read__6 = (
  Atdgen_runtime.Oj_run.read_list (
    read_jsonbug
  )
)
let _6_of_string s =
  read__6 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_report = (
  write__6
)
let string_of_report ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_report ob x;
  Bi_outbuf.contents ob
let read_report = (
  read__6
)
let report_of_string s =
  read_report (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_json_trace : _ -> json_trace -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"trace\":";
    (
      write__3
    )
      ob x.trace;
    Bi_outbuf.add_char ob '}';
)
let string_of_json_trace ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_json_trace ob x;
  Bi_outbuf.contents ob
let read_json_trace = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_trace = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          if len = 5 && String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' then (
            0
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_trace := (
              (
                read__3
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
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
            if len = 5 && String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' then (
              0
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_trace := (
                (
                  read__3
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x1 then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "trace" |];
        (
          {
            trace = !field_trace;
          }
         : json_trace)
      )
)
let json_trace_of_string s =
  read_json_trace (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_hum_info : _ -> hum_info -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"hum_polynomial\":";
    (
      Yojson.Safe.write_string
    )
      ob x.hum_polynomial;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"hum_degree\":";
    (
      Yojson.Safe.write_string
    )
      ob x.hum_degree;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"big_o\":";
    (
      Yojson.Safe.write_string
    )
      ob x.big_o;
    Bi_outbuf.add_char ob '}';
)
let string_of_hum_info ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_hum_info ob x;
  Bi_outbuf.contents ob
let read_hum_info = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_hum_polynomial = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_hum_degree = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_big_o = ref (Obj.magic (Sys.opaque_identity 0.0)) in
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
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'o' then (
                  2
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'h' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'd' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'g' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'h' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'p' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 'y' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'm' && String.unsafe_get s (pos+11) = 'i' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'l' then (
                  0
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
            field_hum_polynomial := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_hum_degree := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_big_o := (
              (
                Atdgen_runtime.Oj_run.read_string
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
              | 5 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'o' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'h' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'd' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'g' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'h' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'p' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 'y' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'm' && String.unsafe_get s (pos+11) = 'i' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'l' then (
                    0
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
              field_hum_polynomial := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_hum_degree := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_big_o := (
                (
                  Atdgen_runtime.Oj_run.read_string
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
        if !bits0 <> 0x7 then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "hum_polynomial"; "hum_degree"; "big_o" |];
        (
          {
            hum_polynomial = !field_hum_polynomial;
            hum_degree = !field_hum_degree;
            big_o = !field_big_o;
          }
         : hum_info)
      )
)
let hum_info_of_string s =
  read_hum_info (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_cost_info : _ -> cost_info -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"polynomial_version\":";
    (
      Yojson.Safe.write_int
    )
      ob x.polynomial_version;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"polynomial\":";
    (
      Yojson.Safe.write_string
    )
      ob x.polynomial;
    (match x.degree with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"degree\":";
      (
        Yojson.Safe.write_int
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"hum\":";
    (
      write_hum_info
    )
      ob x.hum;
    Bi_outbuf.add_char ob '}';
)
let string_of_cost_info ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_cost_info ob x;
  Bi_outbuf.contents ob
let read_cost_info = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_polynomial_version = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_polynomial = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_degree = ref (None) in
    let field_hum = ref (Obj.magic (Sys.opaque_identity 0.0)) in
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
            | 3 -> (
                if String.unsafe_get s pos = 'h' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' then (
                  3
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'y' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'l' then (
                  1
                )
                else (
                  -1
                )
              )
            | 18 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'y' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'l' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 's' && String.unsafe_get s (pos+15) = 'i' && String.unsafe_get s (pos+16) = 'o' && String.unsafe_get s (pos+17) = 'n' then (
                  0
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
            field_polynomial_version := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_polynomial := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_degree := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            )
          | 3 ->
            field_hum := (
              (
                read_hum_info
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
              | 3 -> (
                  if String.unsafe_get s pos = 'h' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'y' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'l' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 18 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'y' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'l' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 's' && String.unsafe_get s (pos+15) = 'i' && String.unsafe_get s (pos+16) = 'o' && String.unsafe_get s (pos+17) = 'n' then (
                    0
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
              field_polynomial_version := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_polynomial := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_degree := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_int
                    ) p lb
                  )
                );
              )
            | 3 ->
              field_hum := (
                (
                  read_hum_info
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
        if !bits0 <> 0x7 then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "polynomial_version"; "polynomial"; "hum" |];
        (
          {
            polynomial_version = !field_polynomial_version;
            polynomial = !field_polynomial;
            degree = !field_degree;
            hum = !field_hum;
          }
         : cost_info)
      )
)
let cost_info_of_string s =
  read_cost_info (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_cost_item : _ -> cost_item -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"hash\":";
    (
      Yojson.Safe.write_string
    )
      ob x.hash;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"loc\":";
    (
      write_loc
    )
      ob x.loc;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"procedure_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.procedure_name;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"procedure_id\":";
    (
      Yojson.Safe.write_string
    )
      ob x.procedure_id;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"is_on_ui_thread\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.is_on_ui_thread;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"alloc_cost\":";
    (
      write_cost_info
    )
      ob x.alloc_cost;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"exec_cost\":";
    (
      write_cost_info
    )
      ob x.exec_cost;
    Bi_outbuf.add_char ob '}';
)
let string_of_cost_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_cost_item ob x;
  Bi_outbuf.contents ob
let read_cost_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_hash = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_loc = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_procedure_name = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_procedure_id = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_is_on_ui_thread = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_alloc_cost = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_exec_cost = ref (Obj.magic (Sys.opaque_identity 0.0)) in
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
            | 3 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'c' then (
                  1
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'h' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'h' then (
                  0
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'x' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'c' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 's' && String.unsafe_get s (pos+8) = 't' then (
                  6
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'c' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 's' && String.unsafe_get s (pos+9) = 't' then (
                  5
                )
                else (
                  -1
                )
              )
            | 12 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 'h' && String.unsafe_get s (pos+11) = 'r' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'd' then (
                  4
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
            field_hash := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_loc := (
              (
                read_loc
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_procedure_name := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            field_procedure_id := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | 4 ->
            field_is_on_ui_thread := (
              (
                Atdgen_runtime.Oj_run.read_bool
              ) p lb
            );
            bits0 := !bits0 lor 0x10;
          | 5 ->
            field_alloc_cost := (
              (
                read_cost_info
              ) p lb
            );
            bits0 := !bits0 lor 0x20;
          | 6 ->
            field_exec_cost := (
              (
                read_cost_info
              ) p lb
            );
            bits0 := !bits0 lor 0x40;
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
              | 3 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'c' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'h' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'h' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'x' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'c' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 's' && String.unsafe_get s (pos+8) = 't' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'c' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 's' && String.unsafe_get s (pos+9) = 't' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | 12 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 'h' && String.unsafe_get s (pos+11) = 'r' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'd' then (
                    4
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
              field_hash := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_loc := (
                (
                  read_loc
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_procedure_name := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              field_procedure_id := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | 4 ->
              field_is_on_ui_thread := (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              );
              bits0 := !bits0 lor 0x10;
            | 5 ->
              field_alloc_cost := (
                (
                  read_cost_info
                ) p lb
              );
              bits0 := !bits0 lor 0x20;
            | 6 ->
              field_exec_cost := (
                (
                  read_cost_info
                ) p lb
              );
              bits0 := !bits0 lor 0x40;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x7f then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "hash"; "loc"; "procedure_name"; "procedure_id"; "is_on_ui_thread"; "alloc_cost"; "exec_cost" |];
        (
          {
            hash = !field_hash;
            loc = !field_loc;
            procedure_name = !field_procedure_name;
            procedure_id = !field_procedure_id;
            is_on_ui_thread = !field_is_on_ui_thread;
            alloc_cost = !field_alloc_cost;
            exec_cost = !field_exec_cost;
          }
         : cost_item)
      )
)
let cost_item_of_string s =
  read_cost_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__7 = (
  Atdgen_runtime.Oj_run.write_list (
    write_cost_item
  )
)
let string_of__7 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__7 ob x;
  Bi_outbuf.contents ob
let read__7 = (
  Atdgen_runtime.Oj_run.read_list (
    read_cost_item
  )
)
let _7_of_string s =
  read__7 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_costs_report = (
  write__7
)
let string_of_costs_report ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_costs_report ob x;
  Bi_outbuf.contents ob
let read_costs_report = (
  read__7
)
let costs_report_of_string s =
  read_costs_report (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
