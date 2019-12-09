Caml1999N023����            .base/SymOp.mli����  4  �  �  䠠���1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]�����*ocaml.textc�������	P Symbolic Operations and Failures: the units in which analysis work is measured @��.base/SymOp.mliI � ��I �=@@@@������$IStd��K?E�K?I@@��K??@@�@���A�    �!t��Not�Nou@@@@A@���)ocaml.doc��������> Internal state of the module @��'MKK�(MKn@@@@@��*Noo@@�@���Р5check_wallclock_alarm��3Pw{�4Pw�@��@����$unit��=Pw��>Pw�@@�@@����$unit��FPw��GPw�@@�@@�@@@���0��������	? if the wallclock alarm has expired, raise a timeout exception @��VQ���WQ��@@@@@��YPww@�@���Р<get_remaining_wallclock_time��bS���cS�@��@����$unit��lS�	�mS�@@�@@����%float��uS��vS�@@�@@�@@@���_萠�����	> Return the time remaining before the wallclock alarm expires @���T��TZ@@@@@���S��@�@���Р3get_timeout_seconds���V\`��V\s@��@����$unit���V\v��V\z@@�@@����&option���V\���V\�@�����%float���V\~��V\�@@�@@@�@@�@@@����!�������	& Timeout in seconds for each function @���W����W��@@@@@���V\\@�@���Р)get_total���Y����Y��@��@����$unit���Y����Y��@@�@@����#int���Y����Y��@@�@@�@@@����P�������	8 Return the total number of symop's since the beginning @���Z����Z�@@@@@���Y��@�@���Р#pay���\��\@��@����$unit��\�\!@@�@@����$unit��\%�\)@@�@@�@@@�����������1 Count one symop @��]**�]*@@@@@@��\@�@���Р+reset_total��(_BF�)_BQ@��@����$unit��2_BT�3_BX@@�@@����$unit��;_B\�<_B`@@�@@�@@@���%��������	# Reset the total number of symop's @��K`aa�L`a�@@@@@��N_BB@�@���Р-restore_state��Wb���Xb��@��@����!t��ab���bb��@@�@@����$unit��jb���kb��@@�@@�@@@���Tݐ������8 Restore the old state. @��zc���{c��@@@@@��}b��@�@���Р*save_state���e����e��@���0keep_symop_total����$bool���e����e��@@�@@����!t���e����e��@@�@@���e��@@@�����������	� Return the old state, and revert the current state to the initial one.
    If keep_symop_total is true, share the total counter. @���f����g?{@@@@@���e��@�@���Р)set_alarm���i}���i}�@��@����$unit���i}���i}�@@�@@����$unit���i}���i}�@@�@@�@@@����>�������	* Reset the counter and activate the alarm @���j����j��@@@@@���i}}@�@���Р3set_wallclock_alarm���l����l��@��@����%float���l����l��@@�@@����$unit���l����l��@@�@@�@@@����m�������	0 Set the wallclock alarm checked at every pay() @��
m���m�(@@@@@��l��@�@���Р=set_wallclock_timeout_handler��o*.�o*K@��@��@����$unit��"o*O�#o*S@@�@@����$unit��+o*W�,o*[@@�@@�@@����$unit��5o*`�6o*d@@�@@��9o*N@@@��� ��������	+ set the handler for the wallclock timeout @��Fpee�Gpe�@@@@@��Io**@�@���Р+unset_alarm��Rr���Sr��@��@����$unit��\r���]r��@@�@@����$unit��er���fr��@@�@@�@@@���Oؐ������7 De-activate the alarm @��us���vs��@@@@@��xr��@�@���Р5unset_wallclock_alarm���u����u��@��@����$unit���u����u��@@�@@����$unit���u����u��@@�@@�@@@���~�������	2 Unset the wallclock alarm checked at every pay() @���v����v�4@@@@@���u��@�@���A�    �,failure_kind���x6;��x6G@@@��Р)FKtimeout���yJN��yJW@�@@���yJL@����-�������3 max time exceeded @���yJY��yJq@@@@@�Р0FKsymops_timeout���zrv��zr�@������#int���zr���zr�@@�@@@@���zrt@����O�������6 max symop's exceeded @���zr���zr�@@@@@�Р3FKrecursion_timeout���{����{��@������#int���{����{��@@�@@@@��{��@����q�������> max recursion level exceeded @��{���{��@@@@@�Р'FKcrash��|���|��@������&string��|��� |�@@�@@@@��#|��@���
��������	( uncaught exception or failed assertion @��0|��1|�3@@@@@@A@@��3x66@@�@�����4Analysis_failure_exe��<~5?�=~5S@�������,failure_kind��G~5W�H~5c@@�@@@@��K~55@���2��������3 Timeout exception @��Xdd�Yd|@@@@@�@���Р/exn_not_failure��b A~��c A~�@��@����#exn��l A~��m A~�@@�@@����$bool��u A~��v A~�@@�@@�@@@���_萠�����	5 check that the exception is not a timeout exception @��� B���� B��@@@@@��� A~~@�@���Р+try_finally��� D���� D��@���!f��@����$unit��� D���� D��@@�@@��!a��� D���� D��@@�
@@���'finally��@����$unit��� D�	�� D�@@�@@����$unit��� D��� D�@@�@@�@@��!a��� D��� D�@@��� D� @@��� D��@@@����;�������
  V [try_finally ~f ~finally] executes [f] and then [finally] even if [f] raises an exception.
    Assuming that [finally ()] terminates quickly [Analysis_failure_exe] exceptions are handled correctly.
    In particular, an exception raised by [f ()] is delayed until [finally ()] finishes, so [finally ()] should
    return reasonably quickly. @��� E�� H	W	x@@@@@��� D��@�@���Р/pp_failure_kind��� J	z	~�� J	z	�@��@�����&Format)formatter��� J	z	��� J	z	�@@�@@��@����,failure_kind��� J	z	��� J	z	�@@�@@����$unit�� J	z	�� J	z	�@@�@@�@@�@@@@��
 J	z	z@�@���Р6failure_kind_to_string�� L	�	�� L	�	�@��@����,failure_kind�� L	�	�� L	�	�@@�@@����&string��& L	�	��' L	�	�@@�@@�@@@@��+ L	�	�@�@@