(* Auto-generated from "jsonbug.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type loc = { file: string; lnum: int; cnum: int; enum: int }

type json_trace_item = {
  level: int;
  filename: string;
  line_number: int;
  column_number: int;
  description: string
}

type extra = { cost_polynomial: string option; cost_degree: int option }

type jsonbug = {
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

type report = jsonbug list

type json_trace = { trace: json_trace_item list }

type hum_info = { hum_polynomial: string; hum_degree: string; big_o: string }

type cost_info = {
  polynomial_version: int;
  polynomial: string;
  degree: int option;
  hum: hum_info
}

type cost_item = {
  hash: string;
  loc: loc;
  procedure_name: string;
  procedure_id: string;
  is_on_ui_thread: bool;
  alloc_cost: cost_info;
  exec_cost: cost_info
}

type costs_report = cost_item list
