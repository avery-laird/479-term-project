Caml1999N023����            5IR/ProcAttributes.mli����  �  �  �  ������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��5IR/ProcAttributes.mliH � ��H � �@@��H � �@@�@�����*ocaml.textq�������< Attributes of a procedure. @��J � ��J � �@@@@���A�    �2objc_accessor_type��L � �� L �@@@��Р+Objc_getter��'L ��(L �@��������#Typ&Struct%field��5L ��6L �%@@�@@@@�@@�Р+Objc_setter��>L �(�?L �3@��������#Typ&Struct%field��LL �7�ML �G@@�@@@@��PL �&@@@A@@��RL � �@@�@���Р:kind_of_objc_accessor_type��[NIM�\NIg@��@����2objc_accessor_type��eNIj�fNI|@@�@@����&string��nNI��oNI�@@�@@�@@@@��sNII@�@���A�    �(var_data��}P���~P��@@@��Р$name���Q����Q��@@�����'Mangled!t���Q����Q��@@�@@���R��@@�Р#typ���R����R��@@�����#Typ!t���R����R��@@�@@���S��@@�Р/modify_in_block���S����S��@@����$bool���S����S��@@�@@���U>A@���)ocaml.doc#�������	[ __block attribute of Objective-C variables, means that it will be modified inside a block @���T����T�=@@@@@�Р,is_constexpr���U>B��U>N@@����$bool���U>P��U>T@@�@@�@@@A@@���P����U>V@@�@���A�    �!t���WX]��WX^@@@��Р&access���Xae��Xak@@�����(PredSymb&access���Xam��Xa|@@�@@���Y��@���Ce�������3 visibility access @��	Xa~�
Xa�@@@@@�Р(captured��Y���Y��@@����$list��Y���Y��@���������'Mangled!t��&Y���'Y��@@�@@������#Typ!t��2Y���3Y��@@�@@@�@@@��7Y��@@�)�9Z��@������������	/ name and type of variables captured in blocks @��FY���GY��@@@@@�Р*exceptions��MZ���NZ�@@����$list��UZ��VZ�@�����&string��^Z��_Z�
@@�@@@�@@��c[;>@����̐������	$ exceptions thrown by the procedure @��pZ��qZ�:@@@@@�Р'formals��w[;?�x[;F@@����$list��[;\��[;`@���������'Mangled!t���[;I��[;R@@�@@������#Typ!t���[;U��[;Z@@�@@@�@@@���[;H@@�)��\��@����	�������	$ name and type of formal parameters @���[;b��[;�@@@@@�Р-const_formals���\����\��@@����$list���\����\��@�����#int���\����\��@@�@@@�@@���]��@���3�������	5 list of indices of formals that are const-qualified @���\����\��@@@@@�Р+is_abstract���]����]��@@����$bool���]����]��@@�@@���^@���1S�������; the procedure is abstract @���]����]�@@@@@�Р4is_biabduction_model���^ ��^4@@����$bool��^6�^:@@�@@��
_y|@���Qs�������	7 the procedure is a model for the biabduction analysis @��^<�^x@@@@@�Р0is_bridge_method��_y}�_y�@@����$bool��&_y��'_y�@@�@@��*`��@���q��������	" the procedure is a bridge method @��7_y��8_y�@@@@@�Р*is_defined��>`���?`��@@����$bool��F`���G`��@@�@@��Ja@������������	9 true if the procedure is defined, and not just declared @��W`���X`�@@@@@�Р6is_cpp_noexcept_method��^a�_a,@@����$bool��fa.�ga2@@�@@��jbtw@����Ӑ������	: the procedure is an C++ method annotated with "noexcept" @��wa4�xas@@@@@�Р;is_java_synchronized_method��~btx�bt�@@����$bool���bt���bt�@@�@@���c��@����󐠠����	- the procedure is a Java synchronized method @���bt���bt�@@@@@�Р,is_no_return���c����c��@@����$bool���c����c��@@�@@���d@�����������	& the procedure is known not to return @���c����c�@@@@@�Р.is_specialized���d��d$@@����$bool���d&��d*@@�@@���evy@���3�������	D the procedure is a clone specialized for dynamic dispatch handling @���d,��du@@@@@�Р3is_synthetic_method���evz��ev�@@����$bool���ev���ev�@@�@@���f��@���1S�������	% the procedure is a synthetic method @���ev���ev�@@@@@�Р+is_variadic���f����f��@@����$bool��f���f��@@�@@��
g @���Qs�������	@ the procedure is variadic, only supported for Clang procedures @��f���f�@@@@@�Р-sentinel_attr��g!�g.@@����&option��&g<�'gB@��������#int��2g1�3g4@@�@@�����#int��<g7�=g:@@�@@@�@@@��Ag0@@�%�Chor@������������	% __attribute__((sentinel(int, int))) @��PgD�Qgn@@@@@�Р1clang_method_kind��Whos�Xho�@@�����/ClangMethodKind!t��aho��bho�@@�@@��ei��@����ΐ������	% the kind of method the procedure is @��rho��sho�@@@@@�Р#loc��yi���zi��@@�����(Location!t���i����i��@@�@@���j@����𐠠����	/ location of this procedure in the source code @���i����i�@@@@@�Р0translation_unit���j��j"@@�����*SourceFile!t���j$��j0@@�@@���kfi@�����������	. source file where the procedure was captured @���j2��je@@@@@�Р&locals���kfr��kfx@A����$list���kf���kf�@�����(var_data���kfz��kf�@@�@@@�@@���kfj��l��@���=�������	. name, type and attributes of local variables @���kf���kf�@@@@@�Р1method_annotation���l����l��@@������%Annot&Method!t���l����l��@@�@@���m		
@���?a�������= annotations for all methods @��l���l�	@@@@@�Р-objc_accessor��m		�m		@@����&option��m		-�m		3@�����2objc_accessor_type��m		�m		,@@�@@@�@@��"n	Z	]@���i��������? type of ObjC accessor, if any @��/m		5�0m		Y@@@@@�Р)proc_name��6n	Z	^�7n	Z	g@@������#Typ(Procname!t��Bn	Z	i�Cn	Z	w@@�@@��Fo	�	�@������������7 name of the procedure @��Sn	Z	y�Tn	Z	�@@@@@�Р(ret_type��Zo	�	��[o	�	�@@�����#Typ!t��do	�	��eo	�	�@@�@@��hp	�	�@����ѐ������- return type @��uo	�	��vo	�	�@@@@@�Р6has_added_return_param��|p	�	��}p	�	�@@����$bool���p	�	���p	�	�@@�@@�@����𐠠����	) whether or not a return param was added @���p	�	���p	�
@@@@@@A@@���WXX��p	�
@@�@���Р'default���r

��r

@��@�����*SourceFile!t���r

 ��r

,@@�@@��@������#Typ(Procname!t���r

0��r

>@@�@@����!t���r

B��r

C@@�@@�@@�@@@���2�������	/ Create a proc_attributes with default values. @���s
D
D��s
D
x@@@@@���r

@�@���Р"pp���u
z
~��u
z
�@��@�����&Format)formatter���u
z
���u
z
�@@�@@��@����!t���u
z
���u
z
�@@�@@����$unit��u
z
��u
z
�@@�@@�@@�@@@@��u
z
z@�@�����&SQLite��w
�
��w
�
�@�������+SqliteUtils$Data��w
�
��w
�
�@�@@����!t��&w
�
��'w
�
�@    ��@@@@A�����!t��2w
�
��3w
�
�@@�@@@��6w
�
�@@�@@@��9w
�
�@�@@