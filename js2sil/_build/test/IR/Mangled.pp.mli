Caml1999N023����            .IR/Mangled.mli����  g  u  �  �����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��.IR/Mangled.mliI � ��I � �@@��I � �@@�@�����*ocaml.textq�������: Module for Mangled Names @��K � ��K �@@@@���A�    �!t��N27� N28@@@@A@���)ocaml.doc��������7 Type of mangled names @��.M�/M1@@@@���(deriving��5N2<�6N2D@��������'compare��AN2E�BN2L@�@@@@@��EN22�FN2M@@�@�����������-ocaml.warning�������#-32@@@@���Р'compareD��@����KJ@J@��@����QP@P@����#intU@U@U@U@@@//@,@,���)ocaml.doc0�������'@inline@8@@8@@8���Р%equal���POS��POX@��@����!t���PO[��PO\@@�@@��@����!t���PO`��POa@@�@@����$bool���POe��POi@@�@@�@@�@@@�����������< Equality for mangled names @���Qjj��Qj�@@@@@���POO@�@���Р+from_string���S����S��@��@����&string���S����S��@@�@@����!t���S����S��@@�@@�@@@����@�������	$ Convert a string to a mangled name @���T����T��@@@@@���S��@�@���Р'mangled���V����V��@��@����&string���V����V��@@�@@��@����&string��V���V��@@�@@����!t��V���V��@@�@@�@@�@@@����{�������	7 Create a mangled name from a plain and mangled string @��W��� W�6@@@@@��"V��@�@���Р)to_string��+Y8<�,Y8E@��@����!t��5Y8H�6Y8I@@�@@����&string��>Y8M�?Y8S@@�@@�@@@���!��������	$ Convert a mangled name to a string @��NZTT�OZT}@@@@@��QY88@�@���Р.to_string_full��Z\��[\�@��@����!t��d\��e\�@@�@@����&string��m\��n\�@@�@@�@@@���Pِ������	) Convert a full mangled name to a string @��}]���~]��@@@@@���\@�@���Р"pp���_����_��@��@�����&Format)formatter���_����_��@@�@@��@����!t���_����_��@@�@@����$unit���_����_��@@�@@�@@�@@@�����������= Pretty print a mangled name @���`����`�@@@@@���_��@�@���Р$this���b��b#@����!t���b&��b'@@�@@@@���b@�@���Р'is_this���d)-��d)4@��@����!t���d)7��d)8@@�@@����$bool���d)<��d)@@@�@@�@@@@���d))@�@���Р$self���fBF��fBJ@����!t��fBM�fBN@@�@@@���'warning��fBR�fBY@�������#-32@��fBZ�fB_@@@@@��fBB�fB`@�@���Р'is_self��$hbf�%hbm@��@����!t��.hbp�/hbq@@�@@����$bool��7hbu�8hby@@�@@�@@@@��<hbb@�@���Р&rename��Ej{�Fj{�@���!f��@����&string��Sj{��Tj{�@@�@@����&string��\j{��]j{�@@�@@�@@��@����!t��hj{��ij{�@@�@@����!t��qj{��rj{�@@�@@�@@��vj{�@@@���Vߐ������	6 Maps over both the plain and the mangled components. @���k����k��@@@@@���j{{@�@�����#Set���m����m��@��������$Caml#Set!S���m����m��@�@@����#elt���m���m�	@    ��@@@@A�����!t���m���m�@@�@@@���m�@@�@@���� �������1 Set of Mangled. @���n��n$@@@@@���m��@�@�����#Map���p&-��p&0@��������$Caml#Map!S���p&3��p&=@�@@����#key���p&H��p&K@    ��@@@@A�����!t���p&N��p&O@@�@@@���p&C@@�@@����a�������9 Map with Mangled as key @��qPP�qPn@@@@@��p&&@�@@