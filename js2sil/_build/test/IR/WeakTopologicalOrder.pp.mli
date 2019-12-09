Caml1999N023����            ;IR/WeakTopologicalOrder.mli����  �  C  �  ݠ����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��;IR/WeakTopologicalOrder.mliH � ��H � �@@��H � �@@�@�����!F��I � ��I � �@����&Format��I � ��I � �@�@@@��I � �@�@�����*ocaml.text��������
  p
  A hierarchical ordering of a set is a well-parenthesized permutation of its elements without two
  consecutive "(". I defines a total order <= over its elements.
  The elements between two matching parentheses are called a Component.
  The first element of a Component is called the head.
  Let denote by H(v) the set of head of the nested components containing v.
@��*O\\�+U��@@@@�����)Partition��3W���4W��@�����A�    �!t��?X���@X��@����$node��GX���HX��@@B@@��Р%Empty��OY	�PY@�@@��SY@@�Р$Node��YZ�ZZ@��Р$node��aZ�bZ"@@��$node��gZ$�hZ)@@�	�jZ*@@�Р$next��pZ+�qZ/@@����!t��xZ7�yZ8@���$node��Z1��Z6@@@�	@@�
@@@@���Z��Z9@@�Р)Component���[:@��[:I@��Р$head���[:N��[:R@@��$node���[:T��[:Y@@�	��[:Z@@�Р$rest���[:[��[:_@@����!t���[:g��[:h@���$node���[:a��[:f@@@�	@@���[:i@@�Р$next���[:j��[:n@@����!t���[:v��[:w@���$node���[:p��[:u@@@�	@@�
@@@@���[:>��[:x@@@@@@���X��@@�@���Р*fold_nodes���]z���]z�@�����)Container$fold���]z���]z�@�����!t���]z���]z�@���$node���]z���]z�@@@�	@@���$node���]z���]z�@@��@��]z��]z�@@@��]z� @@@@��]z|"@�#@���Р*fold_heads��_���_��@�����)Container$fold��_���_��@�����!t��#_���$_��@���$node��*_���+_��@@@�	@@���$node��2_���3_��@@��@��7_���8_��@@@��:_�� @@@@��<_��"@�#@���Р&expand��Ea���Fa��@���*fold_right�����)Container$fold��Sa��Ta�@���!a��Za��[a�@@���!b��aa��ba�	@@�����!t��ja��ka�@���!b��qa��ra�@@@�	@@@��ua�"@@��@����!t��~a�&�a�'@���!a���a�#��a�%@@@�	@@����!t���a�.��a�/@���!b���a�+��a�-@@@�	@@�
@@���a��@@@���)ocaml.doc�������	� Maps a partition nodes from ['a] to ['b] using the expansion [fold_right].
    [fold_right] should not return its [~init] directly but must always provide
    a non-empty sequence.
   @���b02��e��@@@@@���a��@�@���Р"pp���g����g��@���'pp_node��@�����!F)formatter���g���g�@@�@@��@��$node���g���g�@@����$unit���g���g�"@@�@@�@@�@@��@�����!F)formatter���g�'��g�2@@�@@��@����!t���g�<��g�=@���$node���g�6��g�;@@@�	@@����$unit���g�A� g�E@@�@@�@@� @@��g��@@@@��g��@�	@@��
W���hFI@@@��W��@�@�����*PreProcCfg��jKW�jKa@��������$Node��"khq�#khu@�����A�    �!t��.l|��/l|�@@@@A@@��1l|�@@�@���A�    �"id��;n���<n��@@@@A@@��>n��@@�@���Р"id��Gp���Hp��@��@����!t��Qp���Rp��@@�@@����"id��Zp���[p��@@�@@�@@@@��_p��@�@�����%IdMap��hr���ir��@�������/PrettyPrintable%PPMap��tr���ur��@�@@����#key��}r���~r��@    ��@@@@A�����"id���r����r��@@�@@@���r��@@�@@@���r��@�@@���khx��s��@@@���khj@�@���A�    �!t���u����u��@@@@A@@���u��@@�@���Р*fold_succs���w����w�@��@����!t���w���w�@@�@@�����)Container$fold���w�)��w�7@������$Node!t���w���w�@@�@@������$Node!t���w���w�@@�@@���%accum���w�!��w�'@@@���w�"@@�/#@@@@���w��%@�&@���Р*start_node���y9?��y9I@��@����!t���y9L��y9M@@�@@�����$Node!t��y9Q�y9W@@�@@�@@@@��	y9;@�@@��jKd�zX[@@@��jKK@�@������{�������
  �
  A weak topological ordering (WTO) of a directed graph is a hierarchical ordering of its vertices
  such that for every edge u -> v,
    u < v  and  v is not in H(u)    (forward edge)
  or
    v <= u  and  v is in H(u)       (feedback edge)

  where H(u) is the set of heads of the nested components containing u.

  A WTO of a directed graph is such that the head v of every feedback edge u -> v is the head of a
  component containing its tail u.
@��|]]�  G#%@@@@�����!S��( I'3�) I'4@��������#CFG��4 J;D�5 J;G@����*PreProcCfg��< J;J�= J;T@�@@@��@ J;=@�@���Р$make��I LV\�J LV`@��@�����#CFG!t��U LVc�V LVh@@�@@�����)Partition!t��` LVw�a LV�@�������#CFG$Node!t��m LVl�n LVv@@�@@@�@@�@@@@��s LVX@�@@��v I'7�w M��@@@��y I''@�@�����$Make��� O���� O��@����#CFG��� O���� O��@�����*PreProcCfg��� O���� O��@�@@������!S��� O���� O��@�@@����#CFG��� O���� O��@��#CFG��� O���� O��@@�@@��� O��@@@��� O��@�@�����.Bourdoncle_SCC��� Q���� Q��@����$Make��� Q���� Q��@�@@���,/�������	�
  Implementation of Bourdoncle's "Hierarchical decomposition of a directed graph into strongly
  connected components and subcomponents".  See [Bou] Figure 4, page 10.
@��� R���� U	�	�@@@@@��� Q��@�@@