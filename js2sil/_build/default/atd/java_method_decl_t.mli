(* Auto-generated from "java_method_decl.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type java_method_decl = {
  signature: string option;
  unresolved_signature: bool;
  method_name: string;
  source_file: string;
  start_line: int;
  end_line: int
}

type java_method_decls = java_method_decl list
