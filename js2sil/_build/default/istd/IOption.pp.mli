Caml1999N023����            0istd/IOption.mli����  �  �  %  ������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��0istd/IOption.mliH � ��H � �@@��H � �@@�@���Р.find_value_exn��J � ��J � �@��@����&option��J � ��J � �@���!a��J � ��J � �@@@�	@@��!a��%J � ��&J � �@@�
@@@���)ocaml.doc��������	N Like [Option.value_exn] but raises [Caml.Not_found] when called with [None]. @��5K � ��6K �A@@@@@��8J � �@�@���Р/value_default_f��AMCG�BMCV@���!f��@����$unit��OMC\�PMC`@@�@@��!a��VMCd�WMCf@@�
@@��@����&option��aMCn�bMCt@���!a��hMCk�iMCm@@@�	@@��!a��oMCx�pMCz@@�
@@��sMCY@@@���Lܐ������	G Like [Option.value ~default:(f ())] but [f] is called only if [None]. @���N{{��N{�@@@@@���MCC@�@���Р/if_none_evalopt���P����P��@���!f��@����$unit���P����P��@@�@@����&option���P����P��@���!a���P����P��@@@�	@@�
@@��@����&option���P����P�@���!a���P����P��@@@�	@@����&option���P���P�@���!a���P���P�@@@�	@@�
@@���P��@@@����;�������	� [if_none_evalopt ~f x] evaluates to [f ()] if [x = None], otherwise returns [x].
    Useful for chaining matchers where the first returning non-[None] determines
    the result. @���Q��S��@@@@@���P��@�@���Р,if_none_eval���U����U��@���!f��@����$unit���U����U��@@�@@��!a�� U���U��@@�
@@��@����&option��U���U��@���!a��U���U��@@@�	@@��!a��U���U��@@�
@@��U��@@@������������	� [if_none_eval ~f x] evaluates to [y] if [x=Some y] else to [f ()].
    Useful for terminating chains built with [if_none_evalopt]. 
    This is exactly the same as [value_default_f] but with a better name. @��*V���+X��@@@@@��-U��@�@@