Caml1999N023����            /IR/PredSymb.mli����  /�  	  "�   ᠠ���1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]�����*ocaml.textc�������	8 The Smallfoot Intermediate Language: Predicate Symbols @��/IR/PredSymb.mliI � ��I �%@@@@������$IStd��K'-�K'1@@��K''@@�@�������������8 {2 Programs and Types} @��M33�M3P@@@@���A�    �&access��(Pot�)Poz@@@��Р'Default��0Po}�1Po�@�@@�@@�Р&Public��9Po��:Po�@�@@��=Po�@@�Р'Private��CPo��DPo�@�@@��GPo�@@�Р)Protected��MPo��NPo�@�@@��QPo�@@@A@���)ocaml.doc������7 Visibility modifiers. @��_ORR�`ORn@@@@���(deriving��fPo��gPo�@��������'compare��rPo��sPo�@�@@@@@��vPoo�wPo�@@�@�����������-ocaml.warning�������#-32@@@@���Р.compare_accessl��@����sr@r@��@����yx@x@����#int}@}@}@}@@@//@,@,���)ocaml.doc0�������'@inline@8@@8@@8���Р,equal_access���R����R��@��@����&access���R����R��@@�@@��@����&access���R����R��@@�@@����$bool���R����R��@@�@@�@@�@@@@���R��@�@���Р0string_of_access���T����T��@��@����&access���T����T�@@�@@����&string���T���T�@@�@@�@@@@���T��@�@���A�    �(mem_kind��V�V@@@��Р'Mmalloc��W $�W +@�@@��W "@������������> memory allocated with malloc @��W -� W P@@@@@�Р$Mnew��&XQU�'XQY@�@@��*XQS@������������; memory allocated with new @��7XQ[�8XQ{@@@@@�Р*Mnew_array��>Y|��?Y|�@�@@��BY|~@������������= memory allocated with new[] @��OY|��PY|�@@@@@�Р%Mobjc��VZ���WZ��@�@@��ZZ��@���	ʐ������	) memory allocated with objective-c alloc @��gZ���hZ��@@@@@@A@���(deriving��n[���o[��@��������'compare��z[���{[��@�@@@@@��~V�[��@@�@������������������@@@@���Р0compare_mem_kind���@������@�@��@������@�@�����@�@�@�@@@,,@)@)���,�������@3@@3@@3���A�    �(resource���^%*��^%2@@@��Р'Rmemory���^%5��^%<@������(mem_kind���^%@��^%H@@�@@@@�@@�Р%Rfile���^%K��^%P@�@@���^%I@@�Р'Rignore���^%S��^%Z@�@@���^%Q@@�Р%Rlock���^%]��^%b@�@@���^%[@@@A@����^�������	  resource that can be allocated @���]����]�$@@@@���(deriving��^%f�^%n@��������'compare��^%o�^%v@�@@@@@��^%%�^%w@@�@��������������������@@@@���Р0compare_resources��@����zy@y@��@�����@@������@�@�@�@@@,,@)@)����,��������@3@@3@@3���A�    �,res_act_kind��Oa���Pa��@@@��Р(Racquire��Wa���Xa��@�@@�@@�Р(Rrelease��`a���aa��@�@@��da��@@@A@���Ԑ������9 kind of resource action @��q`yy�r`y�@@@@���(deriving��xa���ya��@��������'compare���a����a��@�@@@@@���a����a��@@�@������������������@@@@���Р4compare_res_act_kindU��@����\[@[@��@����ba@a@����e@e@e@e@@@,,@)@)���,�������@3@@3@@3���Р2equal_res_act_kind���c����c��@��@����,res_act_kind���c����c��@@�@@��@����,res_act_kind���c����c�@@�@@����$bool���c���c�@@�@@�@@�@@@@���c��@�@���A�    �-dangling_kind���f6;��f6H@@@��Р(DAuninit���gKO��gKW@�@@���gKM@����n�������	1 pointer is dangling because it is uninitialized @��gKY�gK�@@@@@�Р0DAaddr_stack_var��h���h��@�@@��h��@������������	[ pointer is dangling because it is the address of a stack variable which went out of scope @��#i���$i�@@@@@�Р*DAminusone��*j�+j@�@@��.j@������������/ pointer is -1 @��;j�<j0@@@@@@A@������������; kind of dangling pointers @��Ie�Je5@@@@@��Lf66"@@�#@���A�    �(path_pos��Vm`e�Wm`m@@@@A����������#Typ(Procname!t��fm`p�gm`~@@�@@�����#int��pm`��qm`�@@�@@@�@@���"㐠�����	( position in a path: proc name, node id @���l22��l2_@@@@���(deriving���m`���m`�@��������'compare���m`���m`�@�@@@@@���m``��m`�@@�@�����������!������� @@@@���Р0compare_path_pos]��@����dc@c@��@����ji@i@����m@m@m@m@@@,,@)@)���,�������@3@@3@@3���Р.equal_path_pos���o����o��@��@����(path_pos���o����o��@@�@@��@����(path_pos���o����o��@@�@@����$bool���o����o��@@�@@�@@�@@@@���o��@�@���A�    �*res_action��r���r�	@@@��Р'ra_kind��	s�
s@@����,res_act_kind��s�s%@@�@@��t=@@������������0 kind of action @��"s'�#s<@@@@@�Р&ra_res��)t=A�*t=G@@����(resource��1t=I�2t=Q@@�@@��5ukn@������������2 kind of resource @��Bt=S�Ct=j@@@@@�Р(ra_pname��Iuko�Jukw@@������#Typ(Procname!t��Uuky�Vuk�@@�@@��Yv��@���ɐ������	< name of the procedure used to acquire/release the resource @��fuk��guk�@@@@@�Р&ra_loc��mv���nv��@@�����(Location!t��wv���xv��@@�@@��{w
@���*될�����	! location of the acquire/release @���v����v�	@@@@@�Р(ra_vpath���w
��w
@@�����-DecompiledExp%vpath���w
��w
+@@�@@�@���K�������= vpath of the resource value @���w
-��w
O@@@@@@A@���Y�������	& acquire/release action on a resource @���q����q��@@@@@���r����w
Q@@�@���A�    �!t��� A
*
/�� A
*
0@@@��Р)Aresource��� B
3
7�� B
3
@@������*res_action��� B
3
D�� B
3
N@@�@@@@��� B
3
5@����K�������: resource acquire/release @��� B
3
P�� B
3
o@@@@@�Р,Aautorelease��� C
p
t�� C
p
�@�@@��� C
p
r@@�Р)Adangling��� D
�
��� D
�
�@������-dangling_kind�� D
�
�� D
�
�@@�@@@@�� D
�
�@����w�������2 dangling pointer @�� D
�
�� D
�
�@@@@@�Р&Aundef�� E
�
�� E
�
�@��������#Typ(Procname!t��) E
�
��* E
�
�@@�@@�������%Annot$Item!t��7 E
�
��8 E
�
�@@�@@������(Location!t��C E
�
��D E
�
�@@�@@�����(path_pos��M E
�
��N E
�
�@@�@@@@��Q E
�
�@@�Р'Alocked��W F
��X F
�@�@@��[ F
�
�@@�Р)Aunlocked��a G	�b G	@�@@��e G	@@�Р%Adiv0��k H�l H @������(path_pos��u H$�v H,@@�@@@@��y H@���(鐠�����	F value appeared in second argument of division at given path position @��� H.�� Hy@@@@@�Р*Aobjc_null��� Iz~�� Iz�@�@@��� Iz|@���@�������	S attributed exp is null due to a call to a method with given path as null receiver @��� J���� J��@@@@@�Р'Aretval��� K���� K��@��������#Typ(Procname!t��� K���� K�@@�@@�������%Annot$Item!t��� K��� K�@@�@@@@��� K��@���t5�������	\ value was returned from a call to the given procedure, plus the annots of the return value @��� L�� L|@@@@@�Р)Aobserver��� M}��� M}�@�@@��� M}@����M�������	G denotes an object registered as an observers to a notification center @��� M}��� M}�@@@@@�Р6Aunsubscribed_observer��� N���� N��@�@@��� N��@����e�������	H denotes an object unsubscribed from observers of a notification center @�� O��� O�G@@@@@�Р*Awont_leak��	 PHL�
 PHV@�@@�� PHJ@����}�������	2 value do not participate in memory leak analysis @�� PHX� PH�@@@@@@A@������������
  � Attributes are nary function symbols that are applied to expression arguments in Apred and
    Anpred atomic formulas.  Many operations don't make much sense for nullary predicates, and are
    generally treated as no-ops.  The first argument is treated specially, as the "anchor" of the
    predicate application.  For example, adding or removing an attribute uses the anchor to identify
    the atom to operate on.  Also, abstraction and normalization operations treat the anchor
    specially and maintain more information on it than other arguments.  Therefore when attaching an
    attribute to an expression, that expression should be the first argument, optionally followed by
    additional related expressions. @��(ySS�) @

)@@@@���(deriving��/ Q���0 Q��@��������'compare��; Q���< Q��@�@@@@@��? A
*
*�@ Q��@@�@��������������������@@@@���Р'compare���@������@�@��@������@�@������@�@�@�@@@,,@)@)����,��������@3@@3@@3���Р%equal��{ S���| S��@��@����!t��� S���� S��@@�@@��@����!t��� S���� S��@@�@@����$bool��� S���� S��@@�@@�@@�@@@@��� S��@�@���Р/mem_alloc_pname��� U���� U��@��@����(mem_kind��� U���� U��@@�@@������#Typ(Procname!t��� U���� U��@@�@@�@@@���q2�������	; name of the allocation function for the given memory kind @��� V���� V�3@@@@@��� U��@�@���Р1mem_dealloc_pname��� X59�� X5J@��@����(mem_kind��� X5M�� X5U@@�@@������#Typ(Procname!t��� X5Y�� X5g@@�@@�@@@����e�������	= name of the deallocation function for the given memory kind @�� Yhh� Yh�@@@@@�� X55@�@���A�    �(category�� \��� \��@@@��Р*ACresource�� ]��� ]��@�@@�� ]��@@�Р-ACautorelease��! ^���" ^��@�@@��% ^��@@�Р&AClock��+ _��, _�@�@@��/ _��@@�Р&ACdiv0��5 `�6 `@�@@��9 `
@@�Р+ACobjc_null��? a�@ a"@�@@��C a@@�Р'ACundef��I b#'�J b#.@�@@��M b#%@@�Р(ACretval��S c/3�T c/;@�@@��W c/1@@�Р*ACobserver��] d<@�^ d<J@�@@��a d<>@@�Р*ACwontleak��g eKO�h eKY@�@@��k eKM@@@A@���ې������: Categories of attributes @��x [���y [��@@@@���(deriving�� fZ]�� fZe@��������'compare��� fZf�� fZm@�@@@@@��� \���� fZn@@�@������������������@@@@���Р0compare_category���@������@�@��@������@�@�����@�@�@�@@@,,@)@)���,�������@3@@3@@3���Р.equal_category��� hpt�� hp�@��@����(category��� hp��� hp�@@�@@��@����(category��� hp��� hp�@@�@@����$bool��� hp��� hp�@@�@@�@@�@@@@��� hpp@�@���Р+to_category��� j���� j��@��@����!t�� j��� j��@@�@@����(category�� j��� j��@@�@@�@@@����~�������	6  Return the category to which the attribute belongs. @�� k��� k��@@@@@�� j��@�@���Р(is_undef��' m �( m @��@����!t��1 m �2 m @@�@@����$bool��: m �; m @@�@@�@@@@��? m  @�@���Р)to_string��H o�I o'@��@�����"Pp#env��T o*�U o0@@�@@��@����!t��_ o4�` o5@@�@@����&string��h o9�i o?@@�@@�@@�@@@���ܐ������	# convert the attribute to a string @��y p@@�z p@h@@@@@��| o@�@���Р+d_attribute��� rjn�� rjy@��@����!t��� rj|�� rj}@@�@@����$unit��� rj��� rj�@@�@@�@@@���J	�������4 Dump an attribute. @��� s���� s��@@@@@��� rjj@�@@