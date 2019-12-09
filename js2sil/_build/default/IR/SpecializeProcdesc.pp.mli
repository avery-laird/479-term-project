Caml1999N023����            9IR/SpecializeProcdesc.mli����    `  j  젠���1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��9IR/SpecializeProcdesc.mliH � ��H � �@@��H � �@@�@�����3UnmatchedParameters��J � ��J � �@��@@��J � �@@�@���Р2with_formals_types��L � ��L � �@���/has_clang_model����$bool��'M�(M@@�@@��@�����(Procdesc!t��4M�5M&@@�@@��@������#Typ(Procname!t��CM*�DM8@@�@@��@����$list��NML�OMP@���������#Exp!t��\M=�]MB@@�@@������#Typ!t��hME�iMJ@@�@@@�@@@��mM<@@�����(Procdesc!t��vMT�wM^@@�@@�@@�8@@�H@@��}M@@@���)ocaml.doc琠�����
  L Creates a copy of a procedure description and a list of type substitutions of the form
    (name, typ) where name is a parameter. The resulting procdesc is isomorphic but
    all the type of the parameters are replaced in the instructions according to the list.
    The virtual calls are also replaced to match the parameter types @���N__��Qi�@@@@@���L � �@�@���Р/with_block_args���S����S��@��@�����(Procdesc!t���S����S��@@�@@��@������#Typ(Procname!t���S����S��@@�@@��@����$list���S����S��@�����&option���S����S��@������#Exp'closure���S����S��@@�@@@�@@@�@@�����(Procdesc!t���S���S�@@�@@�@@�1@@�A@@@���fL�������
  I Creates a copy of a procedure description given a list of possible closures
  that are passed as arguments to the method. The resulting procdesc is isomorphic but
  a) the block parameters are replaces with the closures
  b) the parameters of the method are extended with parameters for the captured variables
  in the closures @���T��XH\@@@@@���S��@�@@