Caml1999N023����            2istd/PhysEqual.mli����  �     �  ������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��2istd/PhysEqual.mliH � ��H � �@@��H � �@@�@���Р-shallow_equal��J � ��J � �@��@��!a��J � ��J � �@@��@��!a��J � ��J � �@@����$bool��%J � ��&J � �@@�@@�@@�@@@@��+J � �@�@�����*ocaml.text��������
  �
  Helpers function to enforce physical equality.

  Let suppose [construct/deconstruct] is a 1-level-allocation OCaml construction/deconstruction,
  such as variant type, tuple or record construction.
  Instead of writing
    let a = deconstruct a0 in
    let b = deconstruct b0 in
    let res = f a b in
    if phys_equal res a then a0
    else if phys_equal res b then b0
    else construct res

  Simply write
    PhysEqual.optim2 ~res:(construct (f a b)) a0 b0
@��<L � ��=[��@@@@���Р&optim1��E]���F]��@���#res��!a��O]���P]��@@��@��!a��W]���X]��@@��!a��]]���^]��@@�	@@��a]��@@@@��c]��@�@���Р&optim2��l_���m_��@���#res��!a��v_���w_��@@��@��!a��~_� �_�@@��@��!a���_���_�@@��!a���_���_�@@�	@@�@@���_��@@@@���_��@�@@