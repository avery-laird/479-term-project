Caml1999N023����            4base/SqliteUtils.mli����  {  �  �  ������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��4base/SqliteUtils.mliH � ��H � �@@��H � �@@�@�����%Error��J � ��J � �@�������&string��J � ��J � �@@�@@@@��J � �@���)ocaml.doc��������	� The functions in this module tend to raise more often than their counterparts in [Sqlite3]. In
    particular, they may raise if the [Sqlite3.Rc.t] result of certain operations is unexpected. @��*K � ��+LF�@@@@@�@���Р1check_result_code��4N���5N��@��@�����'Sqlite3"db��@N���AN��@@�@@���#log����&string��MN���NN��@@�@@��@������'Sqlite3"Rc!t��\N���]N��@@�@@����$unit��eN���fN��@@�@@�@@��jN��@@�,@@@���OԐ������	� Assert that the result is either [Sqlite3.Rc.OK] or [Sqlite3.Rc.ROW]. If the result is not
    valid, then if [fatal] is set raise {!Error}, otherwise log the error and proceed. @��xO���yPS�@@@@@��{N��@�@���Р$exec���R����R��@��@�����'Sqlite3"db���R����R��@@�@@���#log����&string���R����R��@@�@@���$stmt����&string���R����R��@@�@@����$unit���R����R��@@�@@���R��@@���R��@@�+@@@����#�������	] Execute the given Sqlite [stmt] and check the result with {!check_result_code ~fatal:true}. @���S����S�K@@@@@���R��@�@���Р(finalize���UMQ��UMY@��@�����'Sqlite3"db���UM\��UMf@@�@@���#log����&string���UMn��UMt@@�@@��@�����'Sqlite3$stmt���UMx��UM�@@�@@����$unit��UM��UM�@@�@@�@@��UMj@@�*@@@����q�������	8 Finalize the given [stmt]. Raises {!Error} on failure. @��V���V��@@@@@��UMM@�@���Р0result_fold_rows��!X���"X��@���(finalize����$bool��-Y���.Y��@@�@@��@�����'Sqlite3"db��:Z���;Z�@@�@@���#log����&string��G[�H[@@�@@��@�����'Sqlite3$stmt��T\�U\(@@�@@���$init��!a��_])3�`])5@@���!f��@��!a��k^6>�l^6@@@��@�����'Sqlite3$stmt��w^6D�x^6P@@�@@��!a��~^6T�^6V@@�
@@�@@��!a���_X]��_X_@@���^6;@@���]).@@�9@@���[@@�V	@@���Y��@@@���u��������	I Fold [f] over each row of the result. [f] must not access the database. @���```��``�@@@@@���X��@�@���Р>result_fold_single_column_rows���b����b��@���(finalize����$bool���c����c��@@�@@��@�����'Sqlite3"db���d����d��@@�@@���#log����&string���e���e�@@�@@��@�����'Sqlite3$stmt���f	��f	@@�@@���$init��!b���g%��g'@@���!f��@��!b���h(0��h(2@@��@������'Sqlite3$Data!t��h(6�h(D@@�@@��!b��	h(H�
h(J@@�
@@�@@��!b��iLQ�iLS@@��h(-@@��g @@�;@@��e��@@�X	@@��c��@@@��� ��������	O Like {!result_fold_rows} but pass column 0 of each row in the results to [f]. @��)jTT�*jT�@@@@@��,b��@�@���Р-result_option��5l���6l��@���(finalize����$bool��Am���Bm��@@�@@��@�����'Sqlite3"db��Nn���On��@@�@@���#log����&string��[o���\o��@@�@@���(read_row��@�����'Sqlite3$stmt��lp��mp�@@�@@��!a��sp��tp�@@�
@@��@�����'Sqlite3$stmt���q��q&@@�@@����&option���r'/��r'5@���!a���r',��r'.@@@�	@@�
@@���p��@@���o��@@�K@@���m��@@@���~�������	K Same as {!result_fold_rows} but asserts that at most one row is returned. @���s66��s6�@@@@@���l��!@�"@���Р;result_single_column_option���u����u��@���(finalize����$bool���v����v��@@�@@��@�����'Sqlite3"db���v����v��@@�@@���#log����&string���v����v��@@�@@��@�����'Sqlite3$stmt���v����v��@@�@@����&option���v����v��@�������'Sqlite3$Data!t���v����v��@@�@@@�@@�@@��v��@@�8@@��v��@@@����n�������	Y Same as {!result_fold_single_column_rows} but asserts that at most one row is returned. @��w  �w ^@@@@@��u��&@�'@���Р+result_unit��y`d�y`o@���(finalize����$bool��*y`|�+y`�@@�@@��@�����'Sqlite3"db��7y`��8y`�@@�@@���#log����&string��Dy`��Ey`�@@�@@��@�����'Sqlite3$stmt��Qy`��Ry`�@@�@@����$unit��Zy`��[y`�@@�@@�@@��_y`�@@�*@@��by`r@@@���Fː������	B Same as {!result_fold_rows} but asserts that no row is returned. @��oz���pz��@@@@@��ry``@�@���Р(db_close��{|��||�
@��@�����'Sqlite3"db���|���|�@@�@@����$unit���|���|�@@�@@�@@@���w��������	U Close the given database and asserts that it was effective. Raises {!Error} if not. @���}  ��} z@@@@@���|��@�@���Р0with_transaction���|���|�@��@�����'Sqlite3"db���|���|�@@�@@���!f��@����$unit���|���|�@@�@@����$unit���|���|�@@�@@�@@����$unit���|���|�@@�@@���|�@@�(@@@����H�������	4 Execute [f] within an explicit sqlite transaction. @��� @���� @��@@@@@���||@�@�����$Data��� C	C	O�� C	C	S@������A�    �!t�� D	Z	a� D	Z	b@@@@A@@�� D	Z	\@@�@���Р)serialize�� F	d	j� F	d	s@��@����!t�� F	d	v� F	d	w@@�@@������'Sqlite3$Data!t��( F	d	{�) F	d	�@@�@@�@@@@��- F	d	f@�@���Р+deserialize��6 H	�	��7 H	�	�@��@������'Sqlite3$Data!t��D H	�	��E H	�	�@@�@@����!t��M H	�	��N H	�	�@@�@@�@@@@��R H	�	�@�@@��U C	C	V�V I	�	�@@���:��������	H An API commonly needed to store and retrieve objects from the database @��c B���d B�	B@@@@@��f C	C	C@�@�����;MarshalledDataForComparison��o L
'
.�p L
'
I@���!D��v L
'
K�w L
'
L@������A�    �!t��� M
S
Z�� M
S
[@@@@A@@��� M
S
U@@�@@��� L
'
O�� N
\
_@@������$Data��� N
\
c�� N
\
g@�@@����!t��� N
\
r�� N
\
s@    ��@@@@A������!D!t��� N
\
v�� N
\
y@@�@@@��� N
\
m@@�@@��� L
'
J@@�����������	i A default implementation of the Data API that encodes every objects as marshalled blobs with no sharing @��� K	�	��� K	�
&@@@@@��� L
'
'@�@�����>MarshalledDataNOTForComparison��� Q
�
��� Q
�
�@���!D��� Q
��� Q
�@������A�    �!t��� R	�� R	@@@@A@@��� R	@@�@@��� Q
��� S@@������$Data��� S�� S@�@@����!t��� S(�� S)@    ��@@@@A������!D!t�� S,� S/@@�@@@��	 S#@@�@@�� Q
� @@����u�������	Y A default implementation of the Data API that encodes every objects as marshalled blobs @�� P
{
{� P
{
�@@@@@�� Q
�
�@�@�����	&MarshalledNullableDataNOTForComparison��% V���& V��@���!D��, V���- V��@������A�    �!t��9 W���: W��@@@@A@@��< W��@@�@@��? V���@ X��@@������$Data��I X���J X��@�@@����!t��R X���S X��@    ��@@@@A�����&option��^ X���_ X��@������!D!t��i X���j X��@@�@@@�@@@��n X��@@�'@@��q V��@@���Uڐ������	S A default implementation of the Data API that encodes None as a NULL SQLite value @��~ U11� U1�@@@@@��� V��#@�$@@