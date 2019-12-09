(* Auto-generated from "perf_profiler.atd" *)
[@@@ocaml.warning "-27-32-35-39"]

type perf_profiler_item = Perf_profiler_t.perf_profiler_item = {
  function_name: string;
  count_trace_id: int;
  sum_inclusive_cpu_time: float;
  avg_inclusive_cpu_time_ms: float;
  sum_exclusive_cpu_time: float;
  avg_exclusive_cpu_time_ms: float;
  p90_inclusive_cpu_time_ms: float;
  p90_exclusive_cpu_time_ms: float;
  p50_inclusive_cpu_time_ms: float;
  p50_exclusive_cpu_time_ms: float;
  p25_inclusive_cpu_time_ms: float;
  p25_exclusive_cpu_time_ms: float
}

type perf_profiler = Perf_profiler_t.perf_profiler

let write_perf_profiler_item : _ -> perf_profiler_item -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"function_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.function_name;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"count_trace_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.count_trace_id;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"sum_inclusive_cpu_time\":";
    (
      Yojson.Safe.write_float
    )
      ob x.sum_inclusive_cpu_time;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"avg_inclusive_cpu_time_ms\":";
    (
      Yojson.Safe.write_float
    )
      ob x.avg_inclusive_cpu_time_ms;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"sum_exclusive_cpu_time\":";
    (
      Yojson.Safe.write_float
    )
      ob x.sum_exclusive_cpu_time;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"avg_exclusive_cpu_time_ms\":";
    (
      Yojson.Safe.write_float
    )
      ob x.avg_exclusive_cpu_time_ms;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"p90_inclusive_cpu_time_ms\":";
    (
      Yojson.Safe.write_float
    )
      ob x.p90_inclusive_cpu_time_ms;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"p90_exclusive_cpu_time_ms\":";
    (
      Yojson.Safe.write_float
    )
      ob x.p90_exclusive_cpu_time_ms;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"p50_inclusive_cpu_time_ms\":";
    (
      Yojson.Safe.write_float
    )
      ob x.p50_inclusive_cpu_time_ms;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"p50_exclusive_cpu_time_ms\":";
    (
      Yojson.Safe.write_float
    )
      ob x.p50_exclusive_cpu_time_ms;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"p25_inclusive_cpu_time_ms\":";
    (
      Yojson.Safe.write_float
    )
      ob x.p25_inclusive_cpu_time_ms;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"p25_exclusive_cpu_time_ms\":";
    (
      Yojson.Safe.write_float
    )
      ob x.p25_exclusive_cpu_time_ms;
    Bi_outbuf.add_char ob '}';
)
let string_of_perf_profiler_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_perf_profiler_item ob x;
  Bi_outbuf.contents ob
let read_perf_profiler_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_function_name = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_count_trace_id = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_sum_inclusive_cpu_time = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_avg_inclusive_cpu_time_ms = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_sum_exclusive_cpu_time = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_avg_exclusive_cpu_time_ms = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_p90_inclusive_cpu_time_ms = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_p90_exclusive_cpu_time_ms = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_p50_inclusive_cpu_time_ms = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_p50_exclusive_cpu_time_ms = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_p25_inclusive_cpu_time_ms = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_p25_exclusive_cpu_time_ms = ref (Obj.magic (Sys.opaque_identity 0.0)) in
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
            | 13 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'm' && String.unsafe_get s (pos+12) = 'e' then (
                  0
                )
                else (
                  -1
                )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'c' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'i' && String.unsafe_get s (pos+13) = 'd' then (
                  1
                )
                else (
                  -1
                )
              )
            | 22 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = '_' then (
                  match String.unsafe_get s (pos+4) with
                    | 'e' -> (
                        if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | 'i' -> (
                        if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' then (
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
                else (
                  -1
                )
              )
            | 25 -> (
                match String.unsafe_get s pos with
                  | 'a' -> (
                      if String.unsafe_get s (pos+1) = 'v' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' then (
                        match String.unsafe_get s (pos+4) with
                          | 'e' -> (
                              if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                5
                              )
                              else (
                                -1
                              )
                            )
                          | 'i' -> (
                              if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
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
                      else (
                        -1
                      )
                    )
                  | 'p' -> (
                      match String.unsafe_get s (pos+1) with
                        | '2' -> (
                            if String.unsafe_get s (pos+2) = '5' && String.unsafe_get s (pos+3) = '_' then (
                              match String.unsafe_get s (pos+4) with
                                | 'e' -> (
                                    if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                      11
                                    )
                                    else (
                                      -1
                                    )
                                  )
                                | 'i' -> (
                                    if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                      10
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
                          )
                        | '5' -> (
                            if String.unsafe_get s (pos+2) = '0' && String.unsafe_get s (pos+3) = '_' then (
                              match String.unsafe_get s (pos+4) with
                                | 'e' -> (
                                    if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                      9
                                    )
                                    else (
                                      -1
                                    )
                                  )
                                | 'i' -> (
                                    if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                      8
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
                          )
                        | '9' -> (
                            if String.unsafe_get s (pos+2) = '0' && String.unsafe_get s (pos+3) = '_' then (
                              match String.unsafe_get s (pos+4) with
                                | 'e' -> (
                                    if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                      7
                                    )
                                    else (
                                      -1
                                    )
                                  )
                                | 'i' -> (
                                    if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                      6
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
                          )
                        | _ -> (
                            -1
                          )
                    )
                  | _ -> (
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
            field_function_name := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_count_trace_id := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_sum_inclusive_cpu_time := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            field_avg_inclusive_cpu_time_ms := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | 4 ->
            field_sum_exclusive_cpu_time := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x10;
          | 5 ->
            field_avg_exclusive_cpu_time_ms := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x20;
          | 6 ->
            field_p90_inclusive_cpu_time_ms := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x40;
          | 7 ->
            field_p90_exclusive_cpu_time_ms := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x80;
          | 8 ->
            field_p50_inclusive_cpu_time_ms := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x100;
          | 9 ->
            field_p50_exclusive_cpu_time_ms := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x200;
          | 10 ->
            field_p25_inclusive_cpu_time_ms := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x400;
          | 11 ->
            field_p25_exclusive_cpu_time_ms := (
              (
                Atdgen_runtime.Oj_run.read_number
              ) p lb
            );
            bits0 := !bits0 lor 0x800;
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
              | 13 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'm' && String.unsafe_get s (pos+12) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'c' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'i' && String.unsafe_get s (pos+13) = 'd' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 22 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = '_' then (
                    match String.unsafe_get s (pos+4) with
                      | 'e' -> (
                          if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' then (
                            4
                          )
                          else (
                            -1
                          )
                        )
                      | 'i' -> (
                          if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' then (
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
                  else (
                    -1
                  )
                )
              | 25 -> (
                  match String.unsafe_get s pos with
                    | 'a' -> (
                        if String.unsafe_get s (pos+1) = 'v' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' then (
                          match String.unsafe_get s (pos+4) with
                            | 'e' -> (
                                if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                  5
                                )
                                else (
                                  -1
                                )
                              )
                            | 'i' -> (
                                if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
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
                        else (
                          -1
                        )
                      )
                    | 'p' -> (
                        match String.unsafe_get s (pos+1) with
                          | '2' -> (
                              if String.unsafe_get s (pos+2) = '5' && String.unsafe_get s (pos+3) = '_' then (
                                match String.unsafe_get s (pos+4) with
                                  | 'e' -> (
                                      if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                        11
                                      )
                                      else (
                                        -1
                                      )
                                    )
                                  | 'i' -> (
                                      if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                        10
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
                            )
                          | '5' -> (
                              if String.unsafe_get s (pos+2) = '0' && String.unsafe_get s (pos+3) = '_' then (
                                match String.unsafe_get s (pos+4) with
                                  | 'e' -> (
                                      if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                        9
                                      )
                                      else (
                                        -1
                                      )
                                    )
                                  | 'i' -> (
                                      if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                        8
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
                            )
                          | '9' -> (
                              if String.unsafe_get s (pos+2) = '0' && String.unsafe_get s (pos+3) = '_' then (
                                match String.unsafe_get s (pos+4) with
                                  | 'e' -> (
                                      if String.unsafe_get s (pos+5) = 'x' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                        7
                                      )
                                      else (
                                        -1
                                      )
                                    )
                                  | 'i' -> (
                                      if String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'p' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = '_' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = 'i' && String.unsafe_get s (pos+20) = 'm' && String.unsafe_get s (pos+21) = 'e' && String.unsafe_get s (pos+22) = '_' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 's' then (
                                        6
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
                            )
                          | _ -> (
                              -1
                            )
                      )
                    | _ -> (
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
              field_function_name := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_count_trace_id := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_sum_inclusive_cpu_time := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              field_avg_inclusive_cpu_time_ms := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | 4 ->
              field_sum_exclusive_cpu_time := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x10;
            | 5 ->
              field_avg_exclusive_cpu_time_ms := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x20;
            | 6 ->
              field_p90_inclusive_cpu_time_ms := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x40;
            | 7 ->
              field_p90_exclusive_cpu_time_ms := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x80;
            | 8 ->
              field_p50_inclusive_cpu_time_ms := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x100;
            | 9 ->
              field_p50_exclusive_cpu_time_ms := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x200;
            | 10 ->
              field_p25_inclusive_cpu_time_ms := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x400;
            | 11 ->
              field_p25_exclusive_cpu_time_ms := (
                (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              );
              bits0 := !bits0 lor 0x800;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0xfff then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "function_name"; "count_trace_id"; "sum_inclusive_cpu_time"; "avg_inclusive_cpu_time_ms"; "sum_exclusive_cpu_time"; "avg_exclusive_cpu_time_ms"; "p90_inclusive_cpu_time_ms"; "p90_exclusive_cpu_time_ms"; "p50_inclusive_cpu_time_ms"; "p50_exclusive_cpu_time_ms"; "p25_inclusive_cpu_time_ms"; "p25_exclusive_cpu_time_ms" |];
        (
          {
            function_name = !field_function_name;
            count_trace_id = !field_count_trace_id;
            sum_inclusive_cpu_time = !field_sum_inclusive_cpu_time;
            avg_inclusive_cpu_time_ms = !field_avg_inclusive_cpu_time_ms;
            sum_exclusive_cpu_time = !field_sum_exclusive_cpu_time;
            avg_exclusive_cpu_time_ms = !field_avg_exclusive_cpu_time_ms;
            p90_inclusive_cpu_time_ms = !field_p90_inclusive_cpu_time_ms;
            p90_exclusive_cpu_time_ms = !field_p90_exclusive_cpu_time_ms;
            p50_inclusive_cpu_time_ms = !field_p50_inclusive_cpu_time_ms;
            p50_exclusive_cpu_time_ms = !field_p50_exclusive_cpu_time_ms;
            p25_inclusive_cpu_time_ms = !field_p25_inclusive_cpu_time_ms;
            p25_exclusive_cpu_time_ms = !field_p25_exclusive_cpu_time_ms;
          }
         : perf_profiler_item)
      )
)
let perf_profiler_item_of_string s =
  read_perf_profiler_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__1 = (
  Atdgen_runtime.Oj_run.write_list (
    write_perf_profiler_item
  )
)
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let read__1 = (
  Atdgen_runtime.Oj_run.read_list (
    read_perf_profiler_item
  )
)
let _1_of_string s =
  read__1 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_perf_profiler = (
  write__1
)
let string_of_perf_profiler ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_perf_profiler ob x;
  Bi_outbuf.contents ob
let read_perf_profiler = (
  read__1
)
let perf_profiler_of_string s =
  read_perf_profiler (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
