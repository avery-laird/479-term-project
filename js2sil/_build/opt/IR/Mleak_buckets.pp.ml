Caml1999M023����            3IR/Mleak_buckets.ml����  �  �  �  m�����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��3IR/Mleak_buckets.mlI � ��I � �@@��I � �@@�@������0PolyVariantEqual��J � ��J �@A��J � �@@�@�����*ocaml.text~�������	@ This module handles buckets of memory leaks in Objective-C/C++ @��"L

�#L
O@@@@���@�����1bucket_to_message��.NQU�/NQf@�@@��@@���&bucket��8NQg�9NQm@�@@������&bucket��COpx�DOp~@�@@����)MLeak_cpp@��LOp��MOp�@@@���%[CPP]@��SOp��TOp�@@����-MLeak_unknown@��[Op��\Op�@@@���0[UNKNOWN ORIGIN]@��bOp��cOp�@@@��eOpr@@�/A@@��hNQQ@@�@���@�����,contains_cpp��tR���uR��@�@@�������$List#mem���R����R��@�@@���%equal����!=���R����R��@�@@��@�����&Config*ml_buckets���R����R��@�@@��@��)MLeak_cpp@���R����R�@@@�&@@@���R��@@�@���@�����7contains_unknown_origin���T
��T
%@�@@�������$List#mem���T
(��T
0@�@@���%equal����@���T
8��T
=@�@@��@�����&Config*ml_buckets���T
>��T
O@�@@��@��-MLeak_unknown@���T
P��T
^@@@�%@@@���T

@@�@���@�����	 should_raise_leak_unknown_origin���V`d��V`�@�@@����7contains_unknown_origin���V`���V`�@�@@@�� V``@@�@���@�����8ml_bucket_unknown_origin��X���X��@�@@������1bucket_to_message��X���X��@�@@��@��-MLeak_unknown@�� X���!X��@@@�@@@��$X��@@�@���@�����5should_raise_cpp_leak��0\lp�1\l�@�@@������,contains_cpp��;\l��<\l�@�@@����$Some��D\l��E\l�@�������1bucket_to_message��O\l��P\l�@�@@��@��)MLeak_cpp@��X\l��Y\l�@@@��[\l��\\l�@@�@@�����$None��e\l��f\l�@@�@@��i\l�@@@��k\ll@@�@@