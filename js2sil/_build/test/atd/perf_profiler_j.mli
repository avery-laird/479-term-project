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

val write_perf_profiler_item :
  Bi_outbuf.t -> perf_profiler_item -> unit
  (** Output a JSON value of type {!perf_profiler_item}. *)

val string_of_perf_profiler_item :
  ?len:int -> perf_profiler_item -> string
  (** Serialize a value of type {!perf_profiler_item}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_perf_profiler_item :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> perf_profiler_item
  (** Input JSON data of type {!perf_profiler_item}. *)

val perf_profiler_item_of_string :
  string -> perf_profiler_item
  (** Deserialize JSON data of type {!perf_profiler_item}. *)

val write_perf_profiler :
  Bi_outbuf.t -> perf_profiler -> unit
  (** Output a JSON value of type {!perf_profiler}. *)

val string_of_perf_profiler :
  ?len:int -> perf_profiler -> string
  (** Serialize a value of type {!perf_profiler}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_perf_profiler :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> perf_profiler
  (** Input JSON data of type {!perf_profiler}. *)

val perf_profiler_of_string :
  string -> perf_profiler
  (** Deserialize JSON data of type {!perf_profiler}. *)

