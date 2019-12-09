Caml1999N023����            7IR/QualifiedCppName.mli����  �      ������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��7IR/QualifiedCppName.mliH � ��H � �@@��H � �@@�@�����*ParseError��J � ��J � �@�������&string��J � ��J � �@@�@@@@��J � �@@�@���A�    �!t��&L � ��'L � �@@@@A@���(deriving��-L � ��.L � �@��������'compare��9L � ��:L �@�@@@@@��=L � ��>L �@@�@�����������-ocaml.warning�������#-32@@@@���Р'compare5��@����<;@;@��@����BA@A@����#intF@F@F@F@@@//@,@,���)ocaml.doc0�������'@inline@8@@8@@8���Р%empty��~N
�N@����!t���N��N@@�@@@���)ocaml.doc򐠠����6 empty qualified name @���O��O/@@@@@���N@�@���Р.of_qual_string���Q15��Q1C@��@����&string���Q1F��Q1L@@�@@����!t���Q1P��Q1Q@@�@@�@@@���0!�������	T attempts to parse the argument into a list::of::possibly::templated<T>::qualifiers @���RRR��RR�@@@@@���Q11@�@���Р.to_qual_string���T����T��@��@����!t���T����T��@@�@@����&string���T����T��@@�@@�@@@���_P�������	P returns qualified name as a string with "::" as a separator between qualifiers @���U����U�#@@@@@���T��@�@���Р0append_qualifier�� W%)�W%9@��@����!t��
W%<�W%=@@�@@���$qual����&string��W%F�W%L@@�@@����!t�� W%P�!W%Q@@�@@��$W%A@@�@@@������������	E append qualifier to the end (innermost scope) of the qualified name @��2XRR�3XR�@@@@@��5W%%@�@���Р,extract_last��>Z���?Z��@��@����!t��HZ���IZ��@@�@@����&option��QZ���RZ��@��������&string��]Z���^Z��@@�@@�����!t��gZ���hZ��@@�@@@�@@@��lZ��@@�&@@@����֐������	T returns last (innermost scope) qualifier and qualified name without last qualifier @��z[���{[�#@@@@@��}Z��,@�-@���Р3strip_template_args���]%)��]%<@��@����!t���]%?��]%@@@�@@����!t���]%D��]%E@@�@@�@@@����������	� returns qualified name without template arguments. For example:
    input: std::shared_ptr<int>::shared_ptr<long>
    output: std::shared_ptr::shared_ptr @���^FF��`��@@@@@���]%%@�@���Р<append_template_args_to_last���b����b�@��@����!t���b���b�@@�@@���$args����&string���b���b�@@�@@����!t���b���b� @@�@@���b�@@�@@@���RC�������	w append template arguments to the last qualifier. Fails if qualified name is empty or it already has
    template args @���c!!��d��@@@@@���b��@�@���Р'to_list���f����f��@��@����!t���f����f��@@�@@����$list��f���f��@�����&string��f���f��@@�@@@�@@�@@@����|�������< returns list of qualifiers @�� g���!g��@@@@@��#f��@�@���Р+to_rev_list��,i���-i��@��@����!t��6i���7i��@@�@@����$list��?i���@i�@�����&string��Hi���Ii��@@�@@@�@@�@@@������������	N returns reversed list of qualifiers, ie innermost scope is the first element @��Yj�ZjW@@@@@��\i��@�@���Р'of_list��elY]�flYd@��@����$list��olYn�plYr@�����&string��xlYg�ylYm@@�@@@�@@����!t���lYv��lYw@@�@@�@@@���������	Q given list of qualifiers in normal order produce qualified name ["std", "move"] @���mxx��mx�@@@@@���lYY@�@���Р+of_rev_list���o����o��@��@����$list���o����o��@�����&string���o����o��@@�@@@�@@����!t���o����o��@@�@@�@@@���6'�������	_ given reversed list of qualifiers, produce qualified name (ie. ["move", "std"] for std::move )@���p����p�W@@@@@���o��@�@���Р9from_field_qualified_name���rY]��rYv@��@����!t���rYy��rYz@@�@@����!t���rY~��rY@@�@@�@@@@���rYY@�@���Р"pp���t����t��@��@�����&Format)formatter��t���t��@@�@@��@����!t��t���t��@@�@@����$unit��t���t��@@�@@�@@�@@@@��t��@�@�����%Match��' Qcj�( Qco@�����A�    �-quals_matcher��3 Rv}�4 Rv�@@@@A@@��6 Rvx@@�@���Р3of_fuzzy_qual_names��? T���@ T��@���&prefix����$bool��K T���L T��@@�@@��@����$list��V T���W T��@�����&string��_ T���` T��@@�@@@�@@����-quals_matcher��i T���j T��@@�@@�@@��n T��@@@@��p T��@�@���Р0match_qualifiers��y V���z V��@��@����-quals_matcher��� V���� V��@@�@@��@����!t��� V� �� V�@@�@@����$bool��� V��� V�	@@�@@�@@�@@@@��� V��@�@@��� Qcr�� W
@@���
�������
  � Module to match qualified C++ procnames "fuzzily", that is up to namescapes and templating. In
    particular, this deals with the following issues:

    1. 'std::' namespace may have inline namespace afterwards: std::move becomes std::__1::move. This
        happens on libc++ and to some extent on libstdc++. To work around this problem, make matching
        against 'std::' more fuzzier: std::X::Y::Z will match std::.*::X::Y::Z (but only for the
        'std' namespace).

    2. The names are allowed not to commit to a template specialization: we want std::move to match
       std::__1::move<const X&> and std::__1::move<int>. To do so, comparison function for qualifiers
       will ignore template specializations.

       For example:
       ["std", "move"]:
       matches: ["std", "blah", "move"]
       matches: ["std", "blah<int>", "move"]
       does not match: ["std","blah", "move", "BAD"] - we don't want std::.*::X::.* to pass
       does not match: ["stdBAD", "move"], - it's not std namespace anymore

       ["folly", "someFunction"]
       matches: ["folly","someFunction"]
       matches: ["folly","someFunction<int>"]
       matches: ["folly<int>","someFunction"]
       does not match: ["folly", "BAD", "someFunction"] - unlike 'std' any other namespace needs all
                                                          qualifiers to match
       does not match: ["folly","someFunction<int>", "BAD"] - same as previous example
   @���v���� P]b@@@@@��� Qcc@�@@