Caml1999N023����            .base/Utils.mli����  FH  +  0  -%�����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��.base/Utils.mliI � ��I � �@@��I � �@@�@���Р-initial_times��K � ��K �@�����$Unix-process_times��K ��K �@@�@@@���)ocaml.doc��������7 initial process times @��'L�(L7@@@@@��*K � �@�@���Р*find_files��3N9=�4N9G@���$path����&string��?N9O�@N9U@@�@@���)extension����&string��LN9c�MN9i@@�@@����$list��UN9t�VN9x@�����&string��^N9m�_N9s@@�@@@�@@��cN9Y@@��eN9J@@@���Lΐ������	E recursively traverse a path for files ending with a given extension @��rOyy�sOy�@@@@@��uN99 @�!@���Р0string_crc_hex32��~Q���Q��@��@����&string���Q����Q��@@�@@����&string���Q����Q��@@�@@�@@@���{��������	A Compute a 32-character hexadecimal crc using the Digest module  @���R����R�3@@@@@���Q��@�@���Р)read_file���T59��T5B@��@����&string���T5E��T5K@@�@@�����&Result!t���T5e��T5m@�����$list���T5W��T5[@�����&string���T5P��T5V@@�@@@�@@�����&string���T5]��T5c@@�@@@���T5O!@@�."@@@����M�������	/ read a source file and return a list of lines @���Unn��Un�@@@@@���T552@�3@���Р4filename_to_absolute���W����W��@���$root����&string��	W���
W��@@�@@��@����&string��W���W��@@�@@����&string��W���W��@@�@@�@@��"W��@@@���	��������	U Convert a filename to an absolute one if it is relative, and normalize "." and ".." @��/X���0X�9@@@@@��2W��@�@���Р4filename_to_relative��;Z;?�<Z;S@���4force_full_backtrack����$bool��G[Vn�H[Vr@@�@@���)backtrack����#int��T[V��U[V�@@�@@���$root����&string��a[V��b[V�@@�@@��@����&string��l[V��m[V�@@�@@����&option��u[V��v[V�@�����&string��~[V��[V�@@�@@@�@@�@@���[V�@@���[Vv@@���[VX@@@���o񐠠����	� Convert an absolute filename to one relative to a root directory.  Returns [None] if filename is
    not under root. The backtrack level sets the maximum level of steps in the parent directories
    to search for a common prefix @���\����^v�@@@@@���Z;;#@�$@���A�    �'outfile���a����a��@@@��Р%fname���b����b��@@����&string���b����b��@@�@@���c�@�����������2 name of the file @���b����b��@@@@@�Р%out_c���c���c�@@�����+Out_channel!t���c�	��c�@@�@@���d.1@����A�������0 output channel @���c���c�-@@@@@�Р#fmt���d.2��d.5@@�����&Format)formatter���d.7��d.G@@�@@�@����b�������8 formatter for printing @��d.I�d.f@@@@@@A@����p�������	" type for files used for printing @��`���`��@@@@@��a���d.h@@�@���Р.create_outfile��!fjn�"fj|@��@����&string��+fj�,fj�@@�@@����&option��4fj��5fj�@�����'outfile��=fj��>fj�@@�@@@�@@�@@@���(��������	n create an outfile for the command line, the boolean indicates whether to do demangling when closing the file @��Ng���Og�@@@@@��Qfjj@�@���Р*close_outf��Zi�[i@��@����'outfile��di�ei%@@�@@����$unit��mi)�ni-@@�@@�@@@���Wِ������2 close an outfile @��}j..�~j.E@@@@@���i@�@���Р.directory_fold���lGK��lGY@��@��@��!a���lG]��lG_@@��@����&string���lGc��lGi@@�@@��!a���lGm��lGo@@�
@@�@@��@��!a���lGt��lGv@@��@����&string���lGz��lG�@@�@@��!a���lG���lG�@@�
@@�@@���lG\@@@����-�������	; Functional fold function over all the file of a directory @���m����m��@@@@@���lGG@�@���Р.directory_iter���o����o��@��@��@����&string���o����o��@@�@@����$unit���o����o��@@�@@�@@��@����&string���o����o��@@�@@����$unit��o���o� @@�@@�@@��o��@@@����u�������	; Functional iter function over all the file of a directory @��p�pA@@@@@��o��@�@���Р2directory_is_empty��%rCG�&rCY@��@����&string��/rC\�0rCb@@�@@����$bool��8rCf�9rCj@@�@@�@@@���"��������	P Returns true if a given directory is empty. The directory is assumed to exist. @��Hskk�Isk�@@@@@��KrCC@�@���Р.read_json_file��Tu���Uu��@��@����&string��^u���_u��@@�@@�����&Result!t��iu���ju�@�������&Yojson%Basic!t��vu���wu��@@�@@�����&string���u����u��@@�@@@���u��@@�(@@@@���u��@�@���Р,with_file_in���w��w@��@����&string���w��w@@�@@���!f��@�����*In_channel!t���w$��w0@@�@@��!a���w4��w6@@�
@@��!a���w;��w=@@���w!@@�$@@@@���w@�@���Р-with_file_out���y?C��y?P@��@����&string���y?S��y?Y@@�@@���!f��@�����+Out_channel!t���y?`��y?m@@�@@��!a���y?q��y?s@@�
@@��!a���y?x��y?z@@���y?]@@�$@@@@���y??@�@���A�    �)file_lock��{|��{|�@@@��Р$file��	|���
|��@@����&string��|���|��@@�@@��}��@@�Р"oc��}���}��@@�����*Pervasives+out_channel��%}���&}��@@�@@��)~��@@�Р"fd��/~���0~��@@�������$Core$Unix*File_descr!t��=~���>~��@@�@@��A��@@�Р$lock��G���H��@@��@����$unit��Q���R��@@�@@����$unit��Z���[��@@�@@�@@��_ @��@@�Р&unlock��e @���f @��@@��@����$unit��o @���p @�	@@�@@����$unit��x @�	�y @�	@@�@@�@@�@@@A@@��~{||� @�	@@�@���Р0create_file_lock��� B		�� B		#@��@����$unit��� B		&�� B		*@@�@@����)file_lock��� B		.�� B		7@@�@@�@@@@��� B		@�@���Р.with_file_lock��� D	9	=�� D	9	K@���)file_lock����)file_lock��� D	9	X�� D	9	a@@�@@���!f��@����$unit��� D	9	h�� D	9	l@@�@@��!a��� D	9	p�� D	9	r@@�
@@��!a��� D	9	w�� D	9	y@@��� D	9	e@@��� D	9	N@@@@��� D	9	9@�@���Р?with_intermediate_temp_file_out��� F	{	�� F	{	�@��@����&string��� F	{	��� F	{	�@@�@@���!f��@�����+Out_channel!t��� F	{	��� F	{	�@@�@@��!a�� F	{	�� F	{	�@@�
@@��!a�� F	{	�� F	{	�@@�� F	{	�@@�$@@@����x�������	i like [with_file_out] but uses a fresh intermediate temporary file and rename to avoid write-write races @�� G	�	�� G	�
7@@@@@�� F	{	{@�@���Р2write_json_to_file��( I
9
=�) I
9
O@��@����&string��2 I
9
R�3 I
9
X@@�@@��@������&Yojson%Basic!t��A I
9
\�B I
9
j@@�@@����$unit��J I
9
n�K I
9
r@@�@@�@@�@@@@��P I
9
9@�@���Р*consume_in��Y K
t
x�Z K
t
�@��@�����*In_channel!t��e K
t
��f K
t
�@@�@@����$unit��n K
t
��o K
t
�@@�@@�@@@���Xڐ������	P consume and ignore all the lines from the channel until End_of_file is reached @��~ L
�
�� L
�
�@@@@@��� K
t
t@�@���Р'echo_in��� N
�
��� N
�
�@��@�����*In_channel!t��� N
�
��� N
�@@�@@����$unit��� N
��� N
�@@�@@�@@@�����������	> echo the lines we get to stdout until End_of_file is reached @��� O�� OW@@@@@��� N
�
�@�@���Р/with_channel_in��� QY]�� QYl@���!f��@����&string��� QYr�� QYx@@�@@����$unit��� QY|�� QY�@@�@@�@@��@�����*In_channel!t��� QY��� QY�@@�@@����$unit��� QY��� QY�@@�@@�@@��� QYo@@@@��� QYY@�@���Р/with_process_in��� S���� S��@��@����&string�� S��� S��@@�@@��@��@�����*In_channel!t�� S��� S��@@�@@��!a�� S��� S��@@�
@@�����!a��# S���$ S��@@�������$Unix.Exit_or_signal!t��0 S���1 S��@@�@@@�@@��5 S��@@�4@@@@��8 S��@�	@���Р2with_process_lines��A U���B U�@���%debug��@����&format��O V=�P VC@���@����&string��Z V�[ V@@�@@����$unit��c V�d V#@@�@@�@@������&Format)formatter��p V%�q V5@@�@@�����$unit��z V7�{ V;@@�@@@��~ V/@@��@����&string��� VG�� VM@@�@@����$unit��� VQ�� VU@@�@@�@@�@@���#cmd����$list��� WWg�� WWk@�����&string��� WW`�� WWf@@�@@@�@@���*tmp_prefix����&string��� Xl|�� Xl�@@�@@���!f��@����$list��� Y���� Y��@�����&string��� Y���� Y��@@�@@@�@@��#res��� Y���� Y��@@�@@��#res��� Z���� Z��@@��� Y��@@��� Xlq@@��� WW\@@��� V	@@@����O�������	� Runs the command [cmd] and calls [f] on the output lines. Uses [debug] to print debug
   information, and [tmp_prefix] as a prefix for temporary files. @��� [���� \H@@@@@��� U��@�@���Р*create_dir��� ^JN�  ^JX@��@����&string��	 ^J[�
 ^Ja@@�@@����$unit�� ^Je� ^Ji@@�@@�@@@����~�������	1 create a directory if it does not exist already @��" _jj�# _j�@@@@@��% ^JJ@�@���Р(realpath��. a���/ a��@���-warn_on_error����$bool��: a���; a��@@�@@��@����&string��E a���F a��@@�@@����&string��N a���O a��@@�@@�@@��S a��@@@���:��������
  % [realpath warn_on_error path] returns path with all symbolic links resolved.
    It caches results of previous calls to avoid expensive system calls.
    WARNING: If warn_on_error is false, no warning will be shown whenever an error occurs for
    the given path (e.g. if it does not exist). @��` b���a e�@@@@@��c a��@�@���Р0suppress_stderr2��l g	�m g@��@��@��!a��v g�w g@@��@��!b��~ g#� g%@@��!c��� g)�� g+@@�	@@�@@��@��!a��� g0�� g2@@��@��!b��� g6�� g8@@��!c��� g<�� g>@@�	@@�@@��� g@@@����
�������	� wraps a function expecting 2 arguments in another that temporarily redirects stderr to /dev/null
    for the duration of the function call @��� h??�� i��@@@@@��� g@�@���Р0compare_versions��� k���� k��@��@����&string��� k���� k��@@�@@��@����&string��� k���� k��@@�@@����#int��� k���� k� @@�@@�@@�@@@����E�������	� [compare_versions v1 v2] returns 1 if  v1 is newer than v2,
    -1 if v1 is older than v2 and 0 if they are the same version.
    The versions are strings of the shape "n.m.t", the order is lexicographic. @��� l�� n��@@@@@��� k��@�@���Р&rmtree��� p���� p��@��@����&string��� p���  p��@@�@@����$unit�� p���	 p��@@�@@�@@@����t�������	^ [rmtree path] removes [path] and, if [path] is a directory, recursively removes its contents @�� q��� q�U@@@@@�� p��@�@���Р;try_finally_swallow_timeout��$ sW[�% sWv@���!f��@����$unit��2 sW|�3 sW�@@�@@��!a��9 sW��: sW�@@�
@@���'finally��@����$unit��H sW��I sW�@@�@@����$unit��Q sW��R sW�@@�@@�@@��!a��Y sW��Z sW�@@��\ sW�@@��^ sWy@@@���Eǐ������	� Calls [f] then [finally] even if [f] raised an exception. The original exception is reraised afterwards.
    Where possible use [SymOp.try_finally] to avoid swallowing timeouts. @��k t���l u`@@@@@��n sWW@�@���Р+better_hash��w wbf�x wbq@��@��!a�� wbt�� wbv@@������$Caml&Digest!t��� wbz�� wb�@@�@@�@@@���u��������	Y Hashtbl.hash only hashes the first 10 meaningful values, [better_hash] uses everything. @��� x���� x��@@@@@��� wbb@�@���Р3unlink_file_on_exit��� z���� z��@��@����&string��� z��� z�@@�@@����$unit��� z��� z�@@�@@�@@@����	&�������	! delete [temporary] file on exit @��� {�� {7@@@@@��� z��@�@���Р3strip_balanced_once��� }9=�� }9P@���$drop��@����$char��� }9Y�� }9]@@�@@����$bool��� }9a�� }9e@@�@@�@@��@����&string��� }9j�� }9p@@�@@����&string��	 }9t�	 }9z@@�@@�@@��	 }9S@@@����	p�������	� drop at most one layer of well-balanced first and last characters satisfying [drop] from the
   string; for instance, [strip_balanced ~drop:(function | 'a' | 'x' -> true | _ -> false) "xaabax"]
   returns "aaba" @��	 ~{{�	 �AU@@@@@��	 }99@�@���Р/assoc_of_yojson��	  �W[�	! �Wj@��@������&Yojson%Basic!t��	. �Wm�	/ �W{@@�@@���#src����&string��	; �W��	< �W�@@�@@������$List%Assoc!t��	H �W��	I �W�@�����&string��	Q �W��	R �W�@@�@@�������&Yojson%Basic!t��	_ �W��	` �W�@@�@@@��	c �W�@@��	e �W@@�9@@@���	M	ϐ������	� Verify we have a json object (or empty list) and return the corresponding assoc list.  Otherwise die with a message including src. @��	s ����	t ��<@@@@@��	v �WW.@�/@���Р0string_of_yojson��	 �>B�	� �>R@��@������&Yojson%Basic!t��	� �>U�	� �>c@@�@@���#src����&string��	� �>k�	� �>q@@�@@����&string��	� �>u�	� �>{@@�@@��	� �>g@@�@@@���	�
�������	v Verify we have a json string and return the corresponding ocaml string.  Otherwise die with a message including src. @��	� �||�	� �|�@@@@@��	� �>>@�@���Р5string_list_of_yojson��	� ����	� ��@��@������&Yojson%Basic!t��	� ���	� ��#@@�@@���#src����&string��	� ��+�	� ��1@@�@@����$list��	� ��<�	� ��@@�����&string��	� ��5�	� ��;@@�@@@�@@��	� ��'@@�&@@@���	�
]�������	� Verify we have a json list of strings and return the corresponding ocaml string list.  Otherwise die with a message including src. @��
 �AA�
 �A�@@@@@��
 ���@� @���Р-yojson_lookup��
 ����
 ���@��@������$List%Assoc!t��
 ����
 ��
@�����&string��
$ ����
% ���@@�@@�������&Yojson%Basic!t��
2 ����
3 ���@@�@@@��
6 ���@@��@����&string��
? ��
@ �@@�@@���#src����&string��
L � �
M �&@@�@@���!f��@������&Yojson%Basic!t��
_ �'/�
` �'=@@�@@���#src����&string��
l �'E�
m �'K@@�@@��!a��
s �'O�
t �'Q@@��
v �'A@@�@@���'default��!a��
� �S`�
� �Sb@@��!a��
� �ch�
� �cj@@��
� �SX@@��
� �',@@��
� �@@�P@@�Z	@@@���
v
��������	� Lookup a json value on an assoc list.  If not present, returns default.  Otherwise returns (f json_value ~src) where src has element name appended. f is typically one of the above _of_yojson functions. @��
� �kk�
� �k;@@@@@��
� ���@�@���Р&timeit��
� �=A�
� �=G@���!f��@����$unit��
� �=M�
� �=Q@@�@@��!a��
� �=U�
� �=W@@�
@@�����!a��
� �=\�
� �=^@@�����#int��
� �=a�
� �=d@@�@@@�@@��
� �=J@@@���
�>�������	L Returns the execution time of [f] in milliseconds together with its result @��
� �ee�
� �e�@@@@@��
� �==@�@���Р)do_in_dir��
� ����
� ���@���#dir����&string��
� ����
� ���@@�@@���!f��@����$unit��	 ����
 ���@@�@@��!a�� ���� ���@@�
@@��!a�� ���� ���@@�� ���@@�� ���@@@�����������	D executes [f] after cding into [dir] and then restores original cwd @��) ����* ��4@@@@@��, ���@�@���Р7get_available_memory_MB��5 �6:�6 �6Q@��@����$unit��? �6T�@ �6X@@�@@����&option��H �6`�I �6f@�����#int��Q �6\�R �6_@@�@@@�@@�@@@���<��������	x On Linux systems, return [Some x] where [MemAvailable x] is in [/proc/meminfo].
    Returns [None] in all other cases. @��b �gg�c ���@@@@@��e �66@�@���Р/iter_infer_deps��n ����o ���@���,project_root����&string��z ��	�{ ��@@�@@���!f��@����&string��� ���� ��@@�@@����$unit��� �� �� ��$@@�@@�@@��@����&string��� ��)�� ��/@@�@@����$unit��� ��3�� ��7@@�@@�@@��� ��@@��� ���@@@�����������	� Parse each line of the given infer_deps.txt file (split on tabs, assume 3 elements per line) 
    and run [f] on the third element.  [project_root] is an argument to avoid dependency cycles. @��� �88�� ���@@@@@��� ���@�@@