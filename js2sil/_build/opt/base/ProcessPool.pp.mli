Caml1999N023����            4base/ProcessPool.mli����  2      Ƞ����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]������$IStd��4base/ProcessPool.mliH � ��H � �@@��H � �@@�@�����-TaskGenerator��J � ��J � �@�����A�    �!t��L�L@����!a��!L�"L@@B@@��Р/remaining_tasks��)M!�*M0@@��@����$unit��3M2�4M6@@�@@����#int��<M:�=M=@@�@@�@@��AO��@���)ocaml.doc��������	_ number of tasks remaining to complete -- only used for reporting, so imprecision is not a bug @��ON>H�PN>�@@@@@�Р(is_empty��VO���WO��@@��@����$unit��`O���aO��@@�@@����$bool��iO���jO��@@�@@�@@��nQ"'@���-א������	H when should the main loop of the task manager stop expecting new tasks @��{P���|P�!@@@@@�Р(finished���Q"(��Q"0@@��@��!a���Q"2��Q"4@@����$unit���Q"8��Q"<@@�@@�@@���T�@���V �������	� Process pool calls [finished x] when a worker finishes item [x]. This is only called 
            if [next ()] has previously returned [Some x] and [x] was sent to a worker. @���R=G��S��@@@@@�Р$next���T���T�@@��@����$unit���T���T�@@�@@����&option���T���T�@���!a���T���T�@@@�	@@�
@@�@����2�������
  g [next ()] generates the next work item. If [is_empty ()] is true then [next ()] 
            must return [None].  However, it is OK to for [next ()] to return [None] when [is_empty] 
            is false.  This corresponds to the case where there is more work to be done, 
            but it is not schedulable until some already scheduled work is finished. @���U$��X9�@@@@@@A@����@�������	! abstraction for generating jobs @���K � ���K �@@@@@���L��Y��@@�@���Р%chain���[����[��@��@����!t���[����[��@���!a��[���[��@@@�	@@��@����!t��[���[��@���!a��[���[��@@@�	@@����!t��[���[��@���!a��$[���%[��@@@�	@@�
@@�'@@@������������? chain two generators in order @��5\���6\��@@@@@��8[��@�@���Р'of_list��A^���B^��@��@����$list��K^���L^��@���!a��R^���S^��@@@�	@@����!t��[^��\^�@���!a��b^���c^� @@@�	@@�
@@@���$ΐ������	' schedule tasks out of a concrete list @��r_�s_1@@@@@��u^��@�@@��xJ � ��y`25@@@��{J � �@�@�����*ocaml.text萠�����
  � Pool of parallel workers that can both receive tasks from the master process and start doing
    tasks on their own. Unix pipes are used for communication, all while refreshing a task bar
    periodically.

    Due to ondemand analysis, workers may do tasks unprompted (eg, when analysing a procedure, a
    process will typically end up analysing all its callees). Thus, children need to update the main
    process (which is in charge of the task bar) whenever they start analysing a new procedure, and
    whenever they resume analysing a previous procedure. This is more complicated than what, eg,
    `ParMap` can handle because of the bidirectional flow between children and parents.

    The children send "Ready" or "I'm working on task <some string>" messages that are used to
    respectively send them more tasks ("Do x") or update the task bar with the description provided
    by the child.

    See also {!module-ProcessPoolState}. @���b77��p��@@@@���A�    �!t���t	�	���t	�	�@���@���t	�	���t	�	�@@B���@���t	�	���t	�	�@@B@@@A@���b�������	� A [('work, 'final) t] process pool accepts tasks of type ['work] and produces an array of
   results of type ['final]. ['work] and ['final] will be marshalled over a Unix pipe.@���r����s	O	�@@@@@���t	�	�@@�@���Р&create���v	�	���v	�	�@���$jobs����#int���w	�	���w	�	�@@�@@���-child_prelude��@����$unit���x	�	���x	�	�@@�@@����$unit���x	�	���x	�	�@@�@@�@@���!f��@��$work���y	�	���y	�
@@����$unit���y	�
��y	�
	@@�@@�@@���.child_epilogue��@����$unit��z

 �z

$@@�@@��%final��z

(�z

.@@�
@@���%tasks�����-TaskGenerator!t��{
0
A�{
0
P@���$work��#{
0
;�${
0
@@@@�	@@����!t��,|
Q
f�-|
Q
g@���$work��3|
Q
W�4|
Q
\@@���%final��:|
Q
^�;|
Q
d@@@��=|
Q
V@@��?{
0
5@@��Az

@@��Cy	�	�@@��Ex	�	�@@��Gw	�	�@@@�����������	@ Create a new pool of processes running [jobs] jobs in parallel @��T}
h
h�U}
h
�@@@@@��Wv	�	�+@�,@���Р#run��`
�
��a
�
�@��@����!t��j
�
��k
�
�@��@��o
�
��p
�
�@@���%final��v
�
��w
�
�@@@��y
�
�@@�����%Array!t���
�
���
�
�@�����&option���
�
���
�
�@���%final���
�
���
�
�@@@�	@@@�@@�@@@���U��������	� use the processes in the given process pool to run all the given tasks in parallel and return
    the results of the epilogues @��� @
�
��� ABe@@@@@���
�
�$@�%@@