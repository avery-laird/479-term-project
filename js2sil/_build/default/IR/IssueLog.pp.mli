Caml1999N023����            /IR/IssueLog.mli����  �  �  �  V�����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��/IR/IssueLog.mliH � ��H � �@@��H � �@@�@���A�    �!t��K ��K �@@@@A@���)ocaml.docy�������	/ Module for maps from procnames to error logs. @��J � ��J � �@@@@@�� K � �@@�@���Р%empty��)M
�*M@����!t��1M�2M@@�@@@@��5M@�@���Р$iter��>O�?O@���!f��@������#Typ(Procname!t��PO#�QO1@@�@@��@�����&Errlog!t��]O5�^O=@@�@@����$unit��fOA�gOE@@�@@�@@�@@��@����!t��sOJ�tOK@@�@@����$unit��|OO�}OS@@�@@�@@���O @@@���rꐠ�����	$ iterate a function on map contents @���PTT��PT}@@@@@���O@�@���Р*get_or_add���R���R�@���$proc������#Typ(Procname!t���R���R�@@�@@��@����!t���R���R�@@�@@�������!t���R���R�@@�@@������&Errlog!t���R���R�@@�@@@�@@�@@���R�@@@����<�������	� Get the error log for a given procname. If there is none, add an empty one to the map. 
    Return the resulting map together with the errlog. @���S����TN@@@@@���R@�@���Р%store���VPT��VPY@���#dir����&string���VP`��VPf@@�@@���$file�����*SourceFile!t��VPo�VP{@@�@@��@����!t��VP�VP�@@�@@����$unit��VP��VP�@@�@@�@@�� VPj@@��"VP\@@@�����������	 If there are any issues in the log, [store ~dir ~file] stores map to [infer-out/dir/file].
    Otherwise, no file is written. @��/W���0X�@@@@@��2VPP@�@���Р$load��;Z�<Z@��@����&string��EZ�FZ @@�@@����!t��NZ$�OZ%@@�@@�@@@���B��������	[ [load directory] walks [infer-out/directory], merging maps stored in files into one map.  @��^[&&�_[&�@@@@@��aZ@�@@