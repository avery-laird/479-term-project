let matchExpression expr =
  match expr with
  | Some expt ->
    (match expt with
     | (_, exp) ->
       (match exp with
        | Ast.Expression.Literal {Ast.Literal.value=value; _;} ->
          (match value with
           | Ast.Literal.Number num -> Some num
           | _ -> None)
        | _ -> None))
  | _ -> None
    

let matchPattern pattern =
  Ast.Pattern.(
    match pattern with
    | (_, Identifier id) ->
      (match id with
       | {Identifier.name=name; _;} ->
         (match name with
          | (_, str) -> Some str))
    | _ -> None)


let matchDeclList dlist =
  match dlist with
  | [] -> None
  | (_, decl) :: [] -> Ast.Statement.VariableDeclaration.Declarator.(
      match decl with
      | {id; init} ->
        let name = matchPattern id in
        let init = matchExpression init in
        (match name with
         | Some n ->
          (match init with
           | Some i -> Some (n, i)
           | _ -> None)
        | _ -> None))
  | _ -> None


let matchVariableDecl decl =
  Ast.Statement.VariableDeclaration.(
    match decl with
    | {
      declarations=declaration_list;
      kind=def_kind
    } ->
      let name_init_pair = matchDeclList declaration_list in
      (match def_kind with
      | Let ->
        (match name_init_pair with
         | Some (name, init) -> Some (name, init)
         | _ -> None)
      | _ -> None))


(* Ast.Statement *)
let matchStatement (stmt: 'loc Ast.Statement.t) =
  Ast.Statement.(
  match stmt with
  | (_, VariableDeclaration decl) -> matchVariableDecl decl
  | _ -> None)


let mkLoad name init =
  let instr = InferIR.(Sil.Load {
    id=Ident.create_normal (Ident.string_to_name name) 0;
    e =Exp.Const (Const.Cint (IntLit.of_int (int_of_float init)));
    root_typ= {
      Typ.desc=Typ.Tint Typ.IInt;
      Typ.quals=Typ.mk_type_quals ()
    };
    typ= {
      Typ.desc=Typ.Tint Typ.IInt;
      Typ.quals=Typ.mk_type_quals ()
    };
    loc={
      line= -1;
      col = -1;
      file=InferBase.SourceFile.create "test"
    }
  }) in
  Some instr

let generate_ir x =
  let name_init_pair = matchStatement x in
  match name_init_pair with
  | Some (name, init) -> mkLoad name init
  | None -> None

  (*| _ -> Sil.Load {
      id=Ident.create_normal (Ident.string_to_name "x") 0;
      e =Exp.Const (Const.Cint (IntLit.of_int 1));
      root_typ= {
        Typ.desc=Typ.Tint Typ.IInt;
        Typ.quals=Typ.mk_type_quals ()
      };
      typ= {
        Typ.desc=Typ.Tint Typ.IInt;
        Typ.quals=Typ.mk_type_quals ()
      };
      loc={
        line= -1;
        col = -1;
        file=SourceFile.create "test"
      }
    }*)
        

let () =
  let to_translate =
    if Array.length Sys.argv == 1
    then "let x = 1;"
    else
      Sys.argv.(1)
  in
  let (prog, _) =
    Parser_flow.program to_translate
  in
  let (_, statement_list, _) =
    prog
  in
  let ir_list =
    List.map
      (generate_ir)
      statement_list
  in
  List.iter
    (fun x ->
       match x with
       | Some instr ->
       InferIR.(Sil.pp_instr
         ~print_types:true
         InferStdlib.Pp.text_break
         Format.std_formatter instr)
       | None -> ()
    ) ir_list
  
