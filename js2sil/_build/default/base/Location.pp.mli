Caml1999N023����            1base/Location.mli����  �       
������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��1base/Location.mliH � ��H � �@@��H � �@@�@���A�    �!t��K � ��K � �@@@��Р$line��L ��L �@@����#int��L ��L �@@�@@��"M<?@���)ocaml.doc��������	) The line number. -1 means "do not know" @��0L ��1L �;@@@@@�Р#col��7M<@�8M<C@@����#int��?M<E�@M<H@@�@@��CN{~@���!��������	+ The column number. -1 means "do not know" @��PM<J�QM<z@@@@@�Р$file��WN{�XN{�@@�����*SourceFile!t��aN{��bN{�@@�@@�@���B͐������= The name of the source file @��qN{��rN{�@@@@@@A@���Pې������	& Location in the original source file @��J � ���J � �@@@@���(deriving���O����O��@��������'compare���O����O��@�@@@@@���K � ���O��@@�@�����������-ocaml.warning�������#-32@@@@���Р'compare���@������@�@��@������@�@����#int�@�@�@�@@@//@,@,���)ocaml.doc0�������'@inline@8@@8@@8���Р%equal���Q����Q��@��@����!t���Q����Q��@@�@@��@����!t���Q����Q��@@�@@����$bool���Q����Q��@@�@@�@@�@@@@���Q��@�@���Р$none��S���S��@��@�����*SourceFile!t��S���S�@@�@@����!t��S��S�@@�@@�@@@������������	* Dummy source location for the given file @��)T�*T6@@@@@��,S��@�@���Р%dummy��5V8<�6V8A@����!t��=V8D�>V8E@@�@@@�����������	$ Dummy location with no source file @��LWFF�MWFo@@@@@��OV88@�@���Р"pp��XYqu�YYqw@��@�����&Format)formatter��dYqz�eYq�@@�@@��@����!t��oYq��pYq�@@�@@����$unit��xYq��yYq�@@�@@�@@�@@@���Z吠�����: Pretty print a location. @���Z����Z��@@@@@���Yqq@�@���Р'pp_line���\����\��@��@�����&Format)formatter���\����\��@@�@@��@����!t���\����\��@@�@@����$unit���\����\��@@�@@�@@�@@@����"�������	! print just the line information @���]����]�@@@@@���\��@�@���Р)to_string���_��_@��@����!t���_��_@@�@@����&string���_"��_(@@�@@�@@@����Q�������	& String representation of a location. @���`))��`)T@@@@@���_@�@���Р+pp_file_pos��bVZ�bVe@��@�����&Format)formatter��bVh�bVx@@�@@��@����!t��bV|�bV}@@�@@����$unit��!bV��"bV�@@�@@�@@�@@@�����������	, Pretty print a file-position of a location @��2c���3c��@@@@@��5bVV@�@���Р(pp_range��>e���?e��@��@�����&Format)formatter��Je���Ke��@@�@@��@�������!t��Xe���Ye��@@�@@�����!t��be���ce��@@�@@@�@@����$unit��le���me��@@�@@�@@�'@@@@��re��@�@�����#Map��{g���|g��@�������/PrettyPrintable%PPMap���g����g�@�@@����#key���g���g�@    ��@@@@A�����!t���g���g�@@�@@@���g�@@�@@@���g��@�@@