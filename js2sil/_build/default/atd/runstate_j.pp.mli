Caml1999N023����            2atd/runstate_j.mli����    M  �  �����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]�����-ocaml.warning��2atd/runstate_j.mliBim�Biz@�������,-27-32-35-39@��Bi{�Bi I@@@@��Bii�Bi J@���A�    �-infer_version��D L Q�D L ^@@@��Р%major��!E ~ ��"E ~ �@@����#int��)E ~ ��*E ~ �@@�@@��-E ~ �@@�Р%minor��3F � ��4F � �@@����#int��;F � ��<F � �@@�@@��?F � �@@�Р%patch��EG � ��FG � �@@����#int��MG � ��NG � �@@�@@��QG � �@@�Р&commit��WH � ��XH � �@@����&string��_H � ��`H � �@@�@@�@@@A������*Runstate_t-infer_version��lD L a�mD L y@@�@@@��pD L L�qI � �@@�@���A�    �'command��{K � ��|K � �@@@@A������*Runstate_t'command���K � ���K � �@@�@@@���K � �@@�@���A�    �(run_info���M � ���M � �@@@��Р$date���N	��N@@����&string���N��N@@�@@���N@@�Р'command���O��O @@����'command���O"��O)@@�@@���O*@@�Р-infer_version���P+-��P+:@@����-infer_version���P+<��P+I@@�@@�@@@A������*Runstate_t(run_info���M � ���M �@@�@@@���M � ���QJK@@�@���A�    �!t���SMR��SMS@@@��Р,run_sequence���Tgi��Tgu@@����$list���Tg���Tg�@�����(run_info���Tgw��Tg@@�@@@�@@��Tg�@@�Р2results_dir_format��U���	U��@@����&string��U���U��@@�@@��U��@@�Р4should_merge_capture��V���V��@@����$bool��"V���#V��@@�@@�@@@A������*Runstate_t!t��/SMV�0SMb@@�@@@��3SMM�4W��@@�@���Р3write_infer_version��=Y���>Y��@��@�����)Bi_outbuf!t��IZ���JZ��@@�@@��@����-infer_version��TZ���UZ��@@�@@����$unit��]Z� �^Z�@@�@@�@@�@@@���)ocaml.docʐ������	/ Output a JSON value of type {!infer_version}. @��o[�p[;@@@@@��rY��@�@���Р7string_of_infer_version��{]=A�|]=X@���#len����#int���^[b��^[e@@�@@��@����-infer_version���^[i��^[v@@�@@����&string���^[z��^[�@@�@@�@@���^[]@@@���?�������	� Serialize a value of type {!infer_version}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. @���_����c*L@@@@@���]==@�@���Р2read_infer_version���eNR��eNd@��@������&Yojson$Safe+lexer_state���fgi��fg�@@�@@��@�����&Lexing&lexbuf���fg���fg�@@�@@����-infer_version���fg���fg�@@�@@�@@�@@@����I�������	+ Input JSON data of type {!infer_version}. @���g����g��@@@@@���eNN@�@���Р7infer_version_of_string���i����i��@��@����&string��j���j��@@�@@����-infer_version��j��j�@@�@@�@@@����x�������	1 Deserialize JSON data of type {!infer_version}. @��k�kG@@@@@�� i��@�@���Р-write_command��)mIM�*mIZ@��@�����)Bi_outbuf!t��5n]_�6n]j@@�@@��@����'command��@n]n�An]u@@�@@����$unit��In]y�Jn]}@@�@@�@@�@@@������������	) Output a JSON value of type {!command}. @��Zo~��[o~�@@@@@��]mII@�@���Р1string_of_command��fq���gq��@���#len����#int��rr���sr��@@�@@��@����'command��}r���~r��@@�@@����&string���r����r��@@�@@�@@���r��@@@���*󐠠����	� Serialize a value of type {!command}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. @���s����w��@@@@@���q��@�@���Р,read_command���y����y��@��@������&Yojson$Safe+lexer_state���z����z��@@�@@��@�����&Lexing&lexbuf���z����z��@@�@@����'command���z����z��@@�@@�@@�@@@���k4�������	% Input JSON data of type {!command}. @���{����{�$@@@@@���y��@�@���Р1command_of_string���}&*��}&;@��@����&string���~>@��~>F@@�@@����'command���~>J��~>Q@@�@@�@@@����c�������	+ Deserialize JSON data of type {!command}. @��RT�	R�@@@@@��}&&@�@���Р.write_run_info�� A��� A��@��@�����)Bi_outbuf!t��  B���! B��@@�@@��@����(run_info��+ B���, B��@@�@@����$unit��4 B���5 B��@@�@@�@@�@@@������������	* Output a JSON value of type {!run_info}. @��E C���F C��@@@@@��H A��@�@���Р2string_of_run_info��Q E���R E�@���#len����#int��] F	�^ F	@@�@@��@����(run_info��h F	�i F	@@�@@����&string��q F	#�r F	)@@�@@�@@��v F	@@@���ސ������	� Serialize a value of type {!run_info}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. @��� G*,�� K��@@@@@��� E��@�@���Р-read_run_info��� M���� M�@��@������&Yojson$Safe+lexer_state��� N�� N@@�@@��@�����&Lexing&lexbuf��� N#�� N0@@�@@����(run_info��� N4�� N<@@�@@�@@�@@@���V�������	& Input JSON data of type {!run_info}. @��� O=?�� O=j@@@@@��� M��@�@���Р2run_info_of_string��� Qlp�� Ql�@��@����&string��� R���� R��@@�@@����(run_info��� R���� R��@@�@@�@@@����N�������	, Deserialize JSON data of type {!run_info}. @��� S���� S��@@@@@��� Qll@�@���Р'write_t��� U���  U��@��@�����)Bi_outbuf!t�� V��� V��@@�@@��@����!t�� V��� V��@@�@@����$unit�� V���  V��@@�@@�@@�@@@������������	# Output a JSON value of type {!t}. @��0 W���1 W�	"@@@@@��3 U��@�@���Р+string_of_t��< Y	$	(�= Y	$	3@���#len����#int��H Z	6	=�I Z	6	@@@�@@��@����!t��S Z	6	D�T Z	6	E@@�@@����&string��\ Z	6	I�] Z	6	O@@�@@�@@��a Z	6	8@@@��� ɐ������	� Serialize a value of type {!t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. @��n [	P	R�o _	�
@@@@@��q Y	$	$@�@���Р&read_t��z a

�{ a

@��@������&Yojson$Safe+lexer_state��� b

 �� b

7@@�@@��@�����&Lexing&lexbuf��� b

;�� b

H@@�@@����!t��� b

L�� b

M@@�@@�@@�@@@���A
�������? Input JSON data of type {!t}. @��� c
N
P�� c
N
t@@@@@��� a

@�@���Р+t_of_string��� e
v
z�� e
v
�@��@����&string��� f
�
��� f
�
�@@�@@����!t��� f
�
��� f
�
�@@�@@�@@@���p9�������	% Deserialize JSON data of type {!t}. @��� g
�
��� g
�
�@@@@@��� e
v
v@�@@