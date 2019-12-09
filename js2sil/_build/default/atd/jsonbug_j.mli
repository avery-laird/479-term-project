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

val write_loc :
  Bi_outbuf.t -> loc -> unit
  (** Output a JSON value of type {!loc}. *)

val string_of_loc :
  ?len:int -> loc -> string
  (** Serialize a value of type {!loc}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_loc :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> loc
  (** Input JSON data of type {!loc}. *)

val loc_of_string :
  string -> loc
  (** Deserialize JSON data of type {!loc}. *)

val write_json_trace_item :
  Bi_outbuf.t -> json_trace_item -> unit
  (** Output a JSON value of type {!json_trace_item}. *)

val string_of_json_trace_item :
  ?len:int -> json_trace_item -> string
  (** Serialize a value of type {!json_trace_item}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_json_trace_item :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> json_trace_item
  (** Input JSON data of type {!json_trace_item}. *)

val json_trace_item_of_string :
  string -> json_trace_item
  (** Deserialize JSON data of type {!json_trace_item}. *)

val write_extra :
  Bi_outbuf.t -> extra -> unit
  (** Output a JSON value of type {!extra}. *)

val string_of_extra :
  ?len:int -> extra -> string
  (** Serialize a value of type {!extra}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_extra :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> extra
  (** Input JSON data of type {!extra}. *)

val extra_of_string :
  string -> extra
  (** Deserialize JSON data of type {!extra}. *)

val write_jsonbug :
  Bi_outbuf.t -> jsonbug -> unit
  (** Output a JSON value of type {!jsonbug}. *)

val string_of_jsonbug :
  ?len:int -> jsonbug -> string
  (** Serialize a value of type {!jsonbug}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_jsonbug :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> jsonbug
  (** Input JSON data of type {!jsonbug}. *)

val jsonbug_of_string :
  string -> jsonbug
  (** Deserialize JSON data of type {!jsonbug}. *)

val write_report :
  Bi_outbuf.t -> report -> unit
  (** Output a JSON value of type {!report}. *)

val string_of_report :
  ?len:int -> report -> string
  (** Serialize a value of type {!report}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_report :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> report
  (** Input JSON data of type {!report}. *)

val report_of_string :
  string -> report
  (** Deserialize JSON data of type {!report}. *)

val write_json_trace :
  Bi_outbuf.t -> json_trace -> unit
  (** Output a JSON value of type {!json_trace}. *)

val string_of_json_trace :
  ?len:int -> json_trace -> string
  (** Serialize a value of type {!json_trace}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_json_trace :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> json_trace
  (** Input JSON data of type {!json_trace}. *)

val json_trace_of_string :
  string -> json_trace
  (** Deserialize JSON data of type {!json_trace}. *)

val write_hum_info :
  Bi_outbuf.t -> hum_info -> unit
  (** Output a JSON value of type {!hum_info}. *)

val string_of_hum_info :
  ?len:int -> hum_info -> string
  (** Serialize a value of type {!hum_info}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_hum_info :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> hum_info
  (** Input JSON data of type {!hum_info}. *)

val hum_info_of_string :
  string -> hum_info
  (** Deserialize JSON data of type {!hum_info}. *)

val write_cost_info :
  Bi_outbuf.t -> cost_info -> unit
  (** Output a JSON value of type {!cost_info}. *)

val string_of_cost_info :
  ?len:int -> cost_info -> string
  (** Serialize a value of type {!cost_info}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_cost_info :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> cost_info
  (** Input JSON data of type {!cost_info}. *)

val cost_info_of_string :
  string -> cost_info
  (** Deserialize JSON data of type {!cost_info}. *)

val write_cost_item :
  Bi_outbuf.t -> cost_item -> unit
  (** Output a JSON value of type {!cost_item}. *)

val string_of_cost_item :
  ?len:int -> cost_item -> string
  (** Serialize a value of type {!cost_item}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_cost_item :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> cost_item
  (** Input JSON data of type {!cost_item}. *)

val cost_item_of_string :
  string -> cost_item
  (** Deserialize JSON data of type {!cost_item}. *)

val write_costs_report :
  Bi_outbuf.t -> costs_report -> unit
  (** Output a JSON value of type {!costs_report}. *)

val string_of_costs_report :
  ?len:int -> costs_report -> string
  (** Serialize a value of type {!costs_report}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_costs_report :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> costs_report
  (** Input JSON data of type {!costs_report}. *)

val costs_report_of_string :
  string -> costs_report
  (** Deserialize JSON data of type {!costs_report}. *)

