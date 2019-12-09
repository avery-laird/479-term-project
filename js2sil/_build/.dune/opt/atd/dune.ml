
let () =
  Hashtbl.add Toploop.directive_table "require" (Toploop.Directive_string ignore);
  Hashtbl.add Toploop.directive_table "use" (Toploop.Directive_string (fun _ ->
    failwith "#use is not allowed inside a dune file in OCaml syntax"));
  Hashtbl.add Toploop.directive_table "use_mod" (Toploop.Directive_string (fun _ ->
    failwith "#use is not allowed inside a dune file in OCaml syntax"))

module Jbuild_plugin = struct
  module V1 = struct
    let context       = "opt"
    let ocaml_version = "4.07.1"

    let ocamlc_config =
      [ "version"                   , "4.07.1"
      ; "standard_library_default"  , "/home/avery/.opam/ocaml-variants.4.07.1+flambda/lib/ocaml"
      ; "standard_library"          , "/home/avery/.opam/ocaml-variants.4.07.1+flambda/lib/ocaml"
      ; "standard_runtime"          , "/home/avery/.opam/ocaml-variants.4.07.1+flambda/bin/ocamlrun"
      ; "ccomp_type"                , "cc"
      ; "c_compiler"                , "gcc"
      ; "ocamlc_cflags"             , "-O2 -fno-strict-aliasing -fwrapv -fPIC"
      ; "ocamlopt_cflags"           , "-O2 -fno-strict-aliasing -fwrapv"
      ; "bytecomp_c_compiler"       , "gcc -O2 -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT"
      ; "bytecomp_c_libraries"      , "-lm -ldl -lpthread"
      ; "native_c_compiler"         , "gcc -O2 -fno-strict-aliasing -fwrapv -D_FILE_OFFSET_BITS=64 -D_REENTRANT"
      ; "native_c_libraries"        , "-lm -ldl"
      ; "cc_profile"                , "-pg"
      ; "architecture"              , "amd64"
      ; "model"                     , "default"
      ; "int_size"                  , "63"
      ; "word_size"                 , "64"
      ; "system"                    , "linux"
      ; "asm"                       , "as"
      ; "asm_cfi_supported"         , "true"
      ; "with_frame_pointers"       , "false"
      ; "ext_exe"                   , ""
      ; "ext_obj"                   , ".o"
      ; "ext_asm"                   , ".s"
      ; "ext_lib"                   , ".a"
      ; "ext_dll"                   , ".so"
      ; "os_type"                   , "Unix"
      ; "default_executable_name"   , "a.out"
      ; "systhread_supported"       , "true"
      ; "host"                      , "x86_64-unknown-linux-gnu"
      ; "target"                    , "x86_64-unknown-linux-gnu"
      ; "profiling"                 , "true"
      ; "flambda"                   , "true"
      ; "spacetime"                 , "false"
      ; "safe_string"               , "false"
      ; "exec_magic_number"         , "Caml1999X023"
      ; "cmi_magic_number"          , "Caml1999I024"
      ; "cmo_magic_number"          , "Caml1999O023"
      ; "cma_magic_number"          , "Caml1999A023"
      ; "cmx_magic_number"          , "Caml1999y023"
      ; "cmxa_magic_number"         , "Caml1999z023"
      ; "ast_impl_magic_number"     , "Caml1999M023"
      ; "ast_intf_magic_number"     , "Caml1999N023"
      ; "cmxs_magic_number"         , "Caml1999D023"
      ; "cmt_magic_number"          , "Caml1999T024"
      ; "natdynlink_supported"      , "true"
      ; "supports_shared_libraries" , "true"
      ; "windows_unicode"           , "false"
      ]

    let send s =
      let oc = open_out_bin "../_build/.dune/opt/atd/dune" in
      output_string oc s;
      close_out oc

    let run_and_read_lines cmd =
      let tmp_fname = Filename.temp_file "dune" ".output" in
      at_exit (fun () -> Sys.remove tmp_fname);
      let n =
        Printf.ksprintf Sys.command "%s > %s" cmd (Filename.quote tmp_fname)
      in
      let rec loop ic acc =
        match input_line ic with
        | exception End_of_file -> close_in ic; List.rev acc
        | line -> loop ic (line :: acc)
      in
      let output = loop (open_in tmp_fname) [] in
      if n = 0 then
        output
      else begin
        Printf.ksprintf failwith
          "Command failed: %s\n\
           Exit code: %d\n\
           Output:\n\
           %s"
          cmd n (String.concat "\n" output)
      end
  end
end
# 1 "atd/dune"
(* -*- tuareg -*- *)
(*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)
(* use strings so that it looks like OCaml even before substituting, e.g. to use ocamlformat *)

type build_mode = Default | Opt | Test

let build_mode =
  match Jbuild_plugin.V1.context with
  | "test" ->
      Test
  | "default" ->
      Default
  | "opt" ->
      Opt
  | ctx ->
      invalid_arg ("unknown context: " ^ ctx)


let is_yes = String.equal "yes"

let clang = is_yes "no"

let java = is_yes "yes"

let facebook = is_yes "no"

let extra_cflags = if "" = "" then [] else [""]

let common_cflags =
  (*
   * A known issue: At the moment of writing warning 14 (illegal backslash
   * escape in string) does not manifest as an error, presumably due to
   * peculiarities in communication between preprocessor and compiler.
   * Still leave it for visibility and in hope that the issue will be
   * fixed one day.
   *)
  let fatal_warnings =
    "+3+5+6+8+10+11+12+14+18+19+20+21+23+26+29+27+28+32+33+34+35+37+38+39+50+52+57+60"
  in
  let warnings = fatal_warnings ^ "-4-9-40-41-42-45-48" in
  let common_flags =
    [ "-g"
    ; "-short-paths"
    ; "-safe-string"
    ; "-principal"
    ; "-strict-formats"
    ; "-strict-sequence"
    ; "-bin-annot"
    ; "-w"
    ; warnings ]
  in
  match build_mode with
  | Default | Opt ->
      common_flags
  | Test ->
      "-warn-error" :: fatal_warnings :: common_flags


let common_optflags = match build_mode with Opt -> ["-O3"] | Default | Test -> []

let common_libraries =
  (if java then ["javalib"; "sawja"] else [])
  @ [ "ANSITerminal"
    ; "apron"
    ; "apron.octMPQ"
    ; "async"
    ; "atdgen"
    ; "base"
    ; "base64"
    ; "cmdliner"
    ; "core"
    ; "elina"
    ; "mtime.clock.os"
    ; "ocamlgraph"
    ; "oUnit"
    ; "parmap"
    ; "sqlite3"
    ; "str"
    ; "unix"
    ; "xmlm"
    ; "yojson"
    ; "zarith"
    ; "zip" ]
(* -*- tuareg -*- *)
(*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)
(* NOTE: prepend dune.common to this file! *)

let cflags = common_cflags @ ["-w"; "-27-32-34-35-39"]

;;
Format.sprintf
  {|
(library
 (name InferGenerated)
 (public_name InferGenerated)
 (flags (%s))
 (ocamlopt_flags (%s))
 (libraries atdgen core)
 (preprocess (pps ppx_compare))
)

(documentation
 (package InferGenerated)
 (mld_files index)
)
|}
  (String.concat " " cflags)
  (String.concat " " common_optflags)
|> Jbuild_plugin.V1.send
