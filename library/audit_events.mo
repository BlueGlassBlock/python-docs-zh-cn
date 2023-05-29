��          �               �  	   �     �     �  g   �  ^   .  �   �  �   \          '     >     V     i          �  =   �  e   �     P  &   j     �  "   �     �     �     �  �  �     �     �     �  t   �  M   R  �   �  �   w	     
     .
     E
     ]
     p
     �
     �
  =   �
  e   �
     W  &   q     �  "   �     �     �     �   Arguments Audit event Audit events table See :func:`sys.addaudithook` and :c:func:`PySys_AddAuditHook` for information on handling these events. The following events are raised internally and do not correspond to any public API of CPython: This table contains all events raised by :func:`sys.audit` or :c:func:`PySys_Audit` calls throughout the CPython runtime and the standard library.  These calls were added in 3.8.0 or later (see :pep:`578`). This table is generated from the CPython documentation, and may not represent events raised by other implementations. See your runtime specific documentation for actual events raised. _winapi.CreateFile _winapi.CreateJunction _winapi.CreateNamedPipe _winapi.CreatePipe _winapi.CreateProcess _winapi.OpenProcess _winapi.TerminateProcess ``application_name``, ``command_line``, ``current_directory`` ``file_name``, ``desired_access``, ``share_mode``, ``creation_disposition``, ``flags_and_attributes`` ``handle``, ``exit_code`` ``name``, ``open_mode``, ``pipe_mode`` ``obj`` ``process_id``, ``desired_access`` ``src_path``, ``dst_path`` audit events ctypes.PyObj_FromPtr Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:55+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 实参 审计事件 审计事件表 请参阅 :func:`sys.addaudithook` 和 :c:func:`PySys_AddAuditHook` 了解有关处理这些事件的详细信息。 下列事件只在内部被引发，而不会回应任何 CPython 公共 API: 下表包含了在整个 CPython 运行时和标准库中由 :func:`sys.audit` 或 :c:func:`PySys_Audit` 调用所引发的全部事件。 这些调用是在 3.8.0 或更高版本中添加了 (参见 :pep:`578`)。 此表是根据 CPython 文档生成的，可能无法表示其他实现所引发的事件。 请参阅你的运行时专属的文档了解实际引发的事件。 _winapi.CreateFile _winapi.CreateJunction _winapi.CreateNamedPipe _winapi.CreatePipe _winapi.CreateProcess _winapi.OpenProcess _winapi.TerminateProcess ``application_name``, ``command_line``, ``current_directory`` ``file_name``, ``desired_access``, ``share_mode``, ``creation_disposition``, ``flags_and_attributes`` ``handle``, ``exit_code`` ``name``, ``open_mode``, ``pipe_mode`` ``obj`` ``process_id``, ``desired_access`` ``src_path``, ``dst_path`` 审计事件 ctypes.PyObj_FromPtr 