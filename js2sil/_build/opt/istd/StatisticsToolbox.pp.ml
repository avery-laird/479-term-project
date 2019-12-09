Caml1999M023����            9istd/StatisticsToolbox.ml����   �  �  y  �����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��9istd/StatisticsToolbox.mlG � ��G � �@@��G � �@@�@���A�    �!t��I � ��I � �@@@��Р#sum��J � ��J � �@@����%float��J � ��J � �@@�@@��"J � �@@�Р#avg��(J � ��)J � �@@����%float��0J � ��1J � �@@�@@��4J � �@@�Р#min��:J � ��;J � �@@����%float��BJ � ��CJ � �@@�@@��FJ � �@@�Р#p10��LJ � ��MJ � �@@����%float��TJ � ��UJ �@@�@@��XJ �@@�Р&median��^J ��_J �
@@����%float��fJ ��gJ �@@�@@��jJ �@@�Р#p75��pJ ��qJ �@@����%float��xJ ��yJ �@@�@@��|J �@@�Р#max���J ���J �"@@����%float���J �$��J �)@@�@@���J �*@@�Р%count���J �+��J �0@@����#int���J �2��J �5@@�@@�@@@A@@���I � ���J �6@@�@���@�����'to_json���L8<��L8C@�@@��@@���!s���L8D��L8E@�@@��%Assoc�����"::���NQW��U:A����������#sum@���NQX��NQ]@@���%Float�������!s���NQf��NQg@�@@��#sum���NQh��NQk@�
@@���NQ_@@@�*��NQl@@�����2���Oms1A����������#avg@��Omt�Omy@@���%Float�������!s��Om��Om�@�@@��#avg��Om��Om�@�
@@��Om{@@@�)�Om�@@�����b��&P��aA����������#min@��3P���4P��@@���%Float�������!s��BP���CP��@�@@��#min��IP���JP��@�
@@��MP��@@@�)�OP��@@��������VQ���A����������#p10@��cQ���dQ��@@���%Float�������!s��rQ���sQ��@�@@��#p10��yQ���zQ��@�
@@��}Q��@@@�)�Q��@@�����°��R���A����������&median@���R����R��@@���%Float�������!s���R����R��@�@@��&median���R����R��@�
@@���R��@@@�)��R��@@��������S���A����������#p75@���S����S��@@���%Float�������!s���S����S��@�@@��#p75���S����S��@�
@@���S��@@@�)��S��@@�����"���T�!A����������#max@���T���T�@@���%Float�������!s��T��T�@�@@��#max��	T��
T�@�
@@��T�@@@�)�T�@@�����R��U!QA����������%count@��#U"�$U)@@���#Int�������!s��2U0�3U1@�@@��%count��9U2�:U7@�
@@��=U+@@@�)�?U8@@�����"[]��GU9�A@@@�3�A@@@�d�A@@@���A@@@���A@@@���A@@@�(�A@@@�Y�A@@@���A@��QNQU�@@��SMHJ�@@���A@@��VL88�@@��@���@�����2compute_statistics��bX=A�cX=S@�@@��@@���&values��lX=T�mX=Z@�@@������&values��wY]e�xY]k@�@@������"[]���Zqu��Zqw@@�@@@����$None���[{���[{�@@�@@��������"::���\����\��@�����@���\����\��@@��@���\����\��@@@�A@�	@@�&values���\����\��@�@@@��@�����,num_elements���]����]��@�@@�������$List&length���]����]��@�@@��@����&values���]����]��@�@@@�@@@���]��@@��@�����#sum���^����^��@�@@�������$List$fold���^����^��@�@@���!f��@@���#acc���^����^��@�@@��@@���!v��^���^��@�@@������"+.��^���^��@@��@����#acc��^���^��@�@@��@����!v��$^���%^� @�@@@�@@�%A@��*^���+^�@@���$init���#0.0@��5^��6^�@@��@����&values��?^��@^�@�@@@�W@@@��D^��@@��@�����'average��N_ �O_'@�@@������"/.��Y_.�Z_0@@��@����#sum��c_*�d_-@�@@��@������,float_of_int��p_1�q_=@�@@��@����,num_elements��{_>�|_J@�@@@�@@@�@@@���_@@��@�����*values_arr���`NX��`Nb@�@@�������%Array'of_list���`Ne��`Nr@�@@��@����&values���`Ns��`Ny@�@@@�@@@���`NT@@�  �������%Array$sort���a}���a}�@�@@���'compare��@@���!a���b����b��@�@@��@@���!b���b����b��@�@@���������%Float%equal���b����b��@�@@��@����!a���b����b��@�@@��@����!b���b����b��@�@@@�@@���!0@���b����b��@@���������!<��b���	b��@@��@������"-.��b���b��@@��@����!a��b���b��@�@@��@����!b��)b���*b��@�@@@�@@��@���#0.0@��4b���5b��@@@�@@���"-1@��<b���=b��@@����!1@��Db���Eb��@@��Gb��@@��Ib��@@�~A@��Lb���Mb��@@��@����*values_arr��Vc���Wc��@�@@@��@@��@�����*percentile��cd�	�dd�@�@@��@@���#pct��md��nd�@�@@�  �  ������"&&��|e5�}e7@@��@������">=���e.��e0@@��@����#pct���e*��e-@�@@��@���#0.0@���e1��e4@@@�@@��@������"<=���e<��e>@@��@����#pct���e8��e;@�@@��@���#1.0@���e?��eB@@@�@@@���e)��eC@@���e"@@�  �  ������!>���fFc��fFd@@��@����,num_elements���fFV��fFb@�@@��@���!0@���fFe��fFf@@@���fFU��fFg@@���fFN@@��@�����)max_index���gjv��gj@�@@������!-�� gj��gj�@@��@����,num_elements��
gj��gj�@�@@��@���!1@��gj��gj�@@@�@@@��gjr@@��@�����)pct_index��"h���#h��@�@@������"*.��-h���.h��@@��@������,float_of_int��9h���:h��@�@@��@����)max_index��Dh���Eh��@�@@@�@@��@����#pct��Ph���Qh��@�@@@�@@@��Uh��@@��@�����)low_index��_i���`i��@�@@������,int_of_float��ji���ki��@�@@��@�������*Pervasives%floor��yi���zi�@�@@��@����)pct_index���i���i�@�@@@���i����i�@@@�!@@@���i��@@��@�����*high_index���j ��j*@�@@������,int_of_float���j-��j9@�@@��@�������*Pervasives$ceil���j;��jJ@�@@��@����)pct_index���jK��jT@�@@@���j:��jU@@@�!@@@���j@@��@�����#low���kYe��kYh@�@@�������%Array#get���kYk��kY�A�A@��@����*values_arr���kYu@�@@��@����)low_index���kYw��kY�@�@@@�@@@���kYa@@��@�����$high���l����l��@�@@�������10��	l���
l��A�A@��@����*values_arr��l��@�@@��@����*high_index��l���l��@�@@@�@@@��#l��@@������"/.��,m���-m��@@��@������)��7m���8m��@@��@����#low��Am���Bm��@�@@��@����$high��Lm���Mm��@�@@@��Pm���Qm��@@��@���#2.0@��Ym���Zm��@@@�@@�:@@�j@@��@@��@@�@@�J@@�x	@@��
@@��A@@��fd�@@����$Some��mo���no��@�������#sum��xp���yp��@�����@�@@����#avg���q����q��@����'average���q���q�@�@@����#min���r	��r	@������*percentile���r	��r	"@�@@��@���#0.0@���r	#��r	&@@@�@@����#p10���s'1��s'4@������*percentile���s'6��s'@@�@@��@���$0.10@���s'A��s'E@@@�@@����&median���tFP��tFV@������*percentile���tFX��tFb@�@@��@���$0.50@���tFc��tFg@@@�@@����#p75���uhr��uhu@������*percentile���uhw��uh�@�@@��@���$0.75@��uh��uh�@@@�@@����#max��v���v��@������*percentile��v���v��@�@@��@���#1.0@��v��� v��@@@�@@����%count��(w���)w��@����,num_elements��0w���1w��@�@@@@��4p���5w��@@��@@��@@��@@��@@��@@��@@�h@@@��>Y]_
@@��A@@��AX==@@�@@