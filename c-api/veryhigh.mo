Þ    8      Ü                c     !     î  #           _  ¯  y   	  S  	  Z  Ý
  Ý  8           ­   ®  ¬   \     	  ë  ¨         §  )  ­  <  ×  d       y  >    :  Ê  E        K  ²   e  N      g     ó   ©   w!  §   !"  k   É"  á   5#  }   $  o   $  X   %  r   ^%  £   Ñ%     u&  t   ù&  u   n'     ä'  d   e(  e   Ê(  n   0)  m   )     *  k   *      +  e   +  i   õ+  i   _,    É,    N.  ¿  b/  c   "1  (   1  º  ¯1  \  j3     Ç4  $  Ú4  y   ÿ5  8  y6  +  ²7  ã  Þ8     Â:  Ë  M;  Á   =  À   Û=  ¬   >  Å  I?     A  ì   "A  &  B  J  6C  e   D    çD  D  íE  <  2G  K   oH     »H  ¤   ÌH    qI  G  J     ÔL     fM     N  b   N  ¿   öN  |   ¶O  c   3P  J   P  ]   âP     @Q     ×Q  j   [R  k   ÆR     2S  a   ³S  b   T  k   xT  j   äT     OU  h   ÖU     ?V  b   ÄV  i   'W  f   W  R  øW    KY   *cf_feature_version* is the minor Python version. It should be initialized to ``PY_MINOR_VERSION``. Added *cf_feature_version* field. Can be set to point to a function with the prototype ``char *func(FILE *stdin, FILE *stdout, char *prompt)``, overriding the default function used to read a single line of input at the interpreter's prompt.  The function is expected to output the string *prompt* if it's not ``NULL``, and then read a line of input from the provided standard input file, returning the resulting string.  For example, The :mod:`readline` module sets this hook to provide line-editing and tab-completion features. Can be set to point to a function with the prototype ``int func(void)``.  The function will be called when Python's interpreter prompt is about to become idle and wait for user input from the terminal.  The return value is ignored.  Overriding this hook can be used to integrate the interpreter's prompt with other event loops, as done in the :file:`Modules/_tkinter.c` in the Python source code. Compiler flags. Evaluate a precompiled code object, given a particular environment for its evaluation.  This environment consists of a dictionary of global variables, a mapping object of local variables, arrays of arguments, keywords and defaults, a dictionary of default values for :ref:`keyword-only <keyword-only_parameter>` arguments and a closure tuple of cells. Evaluate an execution frame.  This is a simplified interface to :c:func:`PyEval_EvalFrameEx`, for backward compatibility. Execute Python source code from *str* in the context specified by the objects *globals* and *locals* with the compiler flags specified by *flags*.  *globals* must be a dictionary; *locals* can be any object that implements the mapping protocol.  The parameter *start* specifies the start token that should be used to parse the source code. Executes the Python source code from *command* in the :mod:`__main__` module according to the *flags* argument. If :mod:`__main__` does not already exist, it is created.  Returns ``0`` on success or ``-1`` if an exception was raised.  If there was an error, there is no way to get the exception information. For the meaning of *flags*, see below. If *fp* refers to a file associated with an interactive device (console or terminal input or Unix pseudo-terminal), return the value of :c:func:`PyRun_InteractiveLoop`, otherwise return the result of :c:func:`PyRun_SimpleFile`.  *filename* is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`).  If *filename* is ``NULL``, this function uses ``"???"`` as the filename. If *closeit* is true, the file is closed before ``PyRun_SimpleFileExFlags()`` returns. Like :c:func:`Py_CompileStringObject`, but *filename* is a byte string decoded from the :term:`filesystem encoding and error handler`. Note also that several of these functions take :c:expr:`FILE*` parameters.  One particular issue which needs to be handled carefully is that the :c:type:`FILE` structure for different C libraries can be different and incompatible.  Under Windows (at least), it is possible for dynamically linked extensions to actually use different libraries, so care should be taken that :c:expr:`FILE*` parameters are only passed to these functions if it is certain that they were created by the same library that the Python runtime is using. Note that if an otherwise unhandled :exc:`SystemExit` is raised, this function will not return ``-1``, but exit the process, as long as :c:member:`PyConfig.inspect` is zero. Note that if an otherwise unhandled :exc:`SystemExit` is raised, this function will not return ``1``, but exit the process, as long as :c:member:`PyConfig.inspect` is zero. On Windows, *fp* should be opened as binary mode (e.g. ``fopen(filename, "rb")``). Otherwise, Python may not handle script file with LF line ending correctly. Parse and compile the Python source code in *str*, returning the resulting code object.  The start token is given by *start*; this can be used to constrain the code which can be compiled and should be :c:data:`Py_eval_input`, :c:data:`Py_file_input`, or :c:data:`Py_single_input`.  The filename specified by *filename* is used to construct the code object and may appear in tracebacks or :exc:`SyntaxError` exception messages.  This returns ``NULL`` if the code cannot be parsed or compiled. Py_CompileString() Read and execute a single statement from a file associated with an interactive device according to the *flags* argument.  The user will be prompted using ``sys.ps1`` and ``sys.ps2``.  *filename* is decoded from the :term:`filesystem encoding and error handler`. Read and execute statements from a file associated with an interactive device until EOF is reached.  The user will be prompted using ``sys.ps1`` and ``sys.ps2``.  *filename* is decoded from the :term:`filesystem encoding and error handler`.  Returns ``0`` at EOF or a negative number upon failure. Returns ``0`` when the input was executed successfully, ``-1`` if there was an exception, or an error code from the :file:`errcode.h` include file distributed as part of Python if there was a parse error.  (Note that :file:`errcode.h` is not included by :file:`Python.h`, so must be included specifically if needed.) Returns the result of executing the code as a Python object, or ``NULL`` if an exception was raised. Several of these functions accept a start symbol from the grammar as a parameter.  The available start symbols are :c:data:`Py_eval_input`, :c:data:`Py_file_input`, and :c:data:`Py_single_input`.  These are described following the functions which accept them as parameters. Similar to :c:func:`PyRun_SimpleStringFlags`, but the Python source code is read from *fp* instead of an in-memory string. *filename* should be the name of the file, it is decoded from :term:`filesystem encoding and error handler`. If *closeit* is true, the file is closed before ``PyRun_SimpleFileExFlags()`` returns. Similar to :c:func:`PyRun_StringFlags`, but the Python source code is read from *fp* instead of an in-memory string. *filename* should be the name of the file, it is decoded from the :term:`filesystem encoding and error handler`. If *closeit* is true, the file is closed before :c:func:`PyRun_FileExFlags` returns. Similar to :c:func:`Py_Main` but *argv* is an array of bytes strings. The Very High Level Layer The functions in this chapter will let you execute Python source code given in a file or a buffer, but they will not let you interact in a more detailed way with the interpreter. The integer *optimize* specifies the optimization level of the compiler; a value of ``-1`` selects the optimization level of the interpreter as given by :option:`-O` options.  Explicit levels are ``0`` (no optimization; ``__debug__`` is true), ``1`` (asserts are removed, ``__debug__`` is false) or ``2`` (docstrings are removed too). The main program for the standard interpreter.  This is made available for programs which embed Python.  The *argc* and *argv* parameters should be prepared exactly as those which are passed to a C program's :c:func:`main` function (converted to wchar_t according to the user's locale).  It is important to note that the argument list may be modified (but the contents of the strings pointed to by the argument list are not). The return value will be ``0`` if the interpreter exits normally (i.e., without an exception), ``1`` if the interpreter exits due to an exception, or ``2`` if the parameter list does not represent a valid Python command line. The result must be a string allocated by :c:func:`PyMem_RawMalloc` or :c:func:`PyMem_RawRealloc`, or ``NULL`` if an error occurred. The result must be allocated by :c:func:`PyMem_RawMalloc` or :c:func:`PyMem_RawRealloc`, instead of being allocated by :c:func:`PyMem_Malloc` or :c:func:`PyMem_Realloc`. The start symbol from the Python grammar for a single statement; for use with :c:func:`Py_CompileString`. This is the symbol used for the interactive interpreter loop. The start symbol from the Python grammar for isolated expressions; for use with :c:func:`Py_CompileString`. The start symbol from the Python grammar for sequences of statements as read from a file or other source; for use with :c:func:`Py_CompileString`.  This is the symbol to use when compiling arbitrarily long Python source code. This bit can be set in *flags* to cause division operator ``/`` to be interpreted as "true division" according to :pep:`238`. This function changes the flags of the current evaluation frame, and returns true on success, false on failure. This function is only called from the :ref:`main interpreter <sub-interpreter-support>`. This function now includes a debug assertion to help ensure that it does not silently discard an active exception. This is a simplified interface to :c:func:`PyEval_EvalCodeEx`, with just the code object, and global and local variables.  The other arguments are set to ``NULL``. This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving *closeit* set to ``0`` and *flags* set to ``NULL``. This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving the *closeit* argument set to ``0``. This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving the *flags* argument set to ``NULL``. This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving *closeit* set to ``0`` and *flags* set to ``NULL``. This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving *closeit* set to ``0``. This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving *flags* set to ``NULL``. This is a simplified interface to :c:func:`PyRun_InteractiveLoopFlags` below, leaving *flags* set to ``NULL``. This is a simplified interface to :c:func:`PyRun_InteractiveOneFlags` below, leaving *flags* set to ``NULL``. This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below, leaving *closeit* set to ``0`` and *flags* set to ``NULL``. This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below, leaving *flags* set to ``NULL``. This is a simplified interface to :c:func:`PyRun_SimpleStringFlags` below, leaving the :c:struct:`PyCompilerFlags`\* argument set to ``NULL``. This is a simplified interface to :c:func:`PyRun_StringFlags` below, leaving *flags* set to ``NULL``. This is a simplified interface to :c:func:`Py_CompileStringExFlags` below, with *optimize* set to ``-1``. This is a simplified interface to :c:func:`Py_CompileStringFlags` below, leaving *flags* set to ``NULL``. This is the main, unvarnished function of Python interpretation.  The code object associated with the execution frame *f* is executed, interpreting bytecode and executing calls as needed.  The additional *throwflag* parameter can mostly be ignored - if true, then it causes an exception to immediately be thrown; this is used for the :meth:`~generator.throw` methods of generator objects. This is the structure used to hold compiler flags.  In cases where code is only being compiled, it is passed as ``int flags``, and in cases where code is being executed, it is passed as ``PyCompilerFlags *flags``.  In this case, ``from __future__ import`` can modify *flags*. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-29 02:08+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 *cf_feature_version* æ¯ Python çå°çæ¬å·ã å®åºå½è¢«åå§åä¸º ``PY_MINOR_VERSION``ã å¢å äº *cf_feature_version* å­æ®µã å¯ä»¥è¢«è®¾ä¸ºæåä¸ä¸ªååä¸º ``char *func(FILE *stdin, FILE *stdout, char *prompt)`` çå½æ°ï¼éè½½è¢«ç¨æ¥è¯»åè§£éå¨æç¤ºç¬¦çä¸è¡è¾å¥çé»è®¤å½æ°ã è¯¥å½æ°è¢«é¢æä¸ºå¦æå­ç¬¦ä¸² *prompt* ä¸ä¸º ``NULL`` å°±è¾åºå®ï¼ç¶åä»ææä¾çæ åè¾å¥æä»¶è¯»åä¸è¡è¾å¥ï¼å¹¶è¿åç»æå­ç¬¦ä¸²ã ä¾å¦ï¼:mod:`readline` æ¨¡åå°è¿ä¸ªé©å­è®¾ç½®ä¸ºæä¾è¡ç¼è¾å tab é®è¡¥å¨ç­åè½ã å¯ä»¥è¢«è®¾ä¸ºæåä¸ä¸ªååä¸º ``int func(void)`` çå½æ°ã è¯¥å½æ°å°å¨Python çè§£éå¨æç¤ºç¬¦å³å°ç©ºé²å¹¶ç­å¾ç¨æ·ä»ç»ç«¯è¾å¥æ¶è¢«è°ç¨ã è¿åå¼ä¼è¢«å¿½ç¥ã éè½½è¿ä¸ªé©å­å¯è¢«ç¨æ¥å°è§£éå¨çæç¤ºç¬¦éæå°å¶ä»äºä»¶å¾ªç¯ä¸­ï¼å°±å Python ç ä¸­ :file:`Modules/_tkinter.c` æåçé£æ ·ã ç¼è¯å¨ææ ã å¯¹ä¸ä¸ªé¢ç¼è¯çä»£ç å¯¹è±¡æ±å¼ï¼ä¸ºå¶æ±å¼ç»åºç¹å®çç¯å¢ã æ­¤ç¯å¢ç±å¨å±åéçå­å¸ï¼å±é¨åéæ å°å¯¹è±¡ï¼åæ°ãå³é®å­åé»è®¤å¼çæ°ç»ï¼:ref:`ä»éå³é®å­ <keyword-only_parameter>` åæ°çé»è®¤å¼çå­å¸åååçå°é­åç»ææã å¯¹ä¸ä¸ªæ§è¡å¸§æ±å¼ã è¿æ¯éå¯¹ :c:func:`PyEval_EvalFrameEx` çç®åçæ¥å£ï¼ç¨äºä¿æåä¸å¼å®¹æ§ã å¨ç±å¯¹è±¡ *globals* å *locals* æå®çä¸ä¸æä¸­æ§è¡æ¥èª *str* ç Python æºä»£ç ï¼å¹¶ä½¿ç¨ä»¥ *flags* æå®çç¼è¯å¨ææ ã *globals* å¿é¡»æ¯ä¸ä¸ªå­å¸ï¼*locals* å¯ä»¥æ¯ä»»ä½å®ç°äºæ å°åè®®çå¯¹è±¡ã å½¢å *start* æå®äºåºå½è¢«ç¨æ¥è§£ææºä»£ç çèµ·å§å½¢ç¬¦ã æ ¹æ® *flags* åæ°ï¼å¨ :mod:`__main__` æ¨¡åä¸­æ§è¡ Python æºä»£ç ã å¦æ :mod:`__main__` å°ä¸å­å¨ï¼å®å°è¢«åå»ºã æåæ¶è¿å ``0``ï¼å¦æå¼åå¼å¸¸åè¿å ``-1``ã å¦æåçéè¯¯ï¼åå°æ æ³è·å¾å¼å¸¸ä¿¡æ¯ã å¯¹äº *flags* çå«ä¹ï¼è¯·åéä¸æã å¦æ *fp* æåä¸ä¸ªå³èå°äº¤äºè®¾å¤ï¼æ§å¶å°æç»ç«¯è¾å¥æ Unix ä¼ªç»ç«¯ï¼çæä»¶ï¼åè¿å :c:func:`PyRun_InteractiveLoop` çå¼ï¼å¦åè¿å :c:func:`PyRun_SimpleFile` çç»æã *filename* ä¼ä½¿ç¨æä»¶ç³»ç»çç¼ç æ ¼å¼ (:func:`sys.getfilesystemencoding`) æ¥è§£ç ã å¦æ *filename* ä¸º ``NULL``ï¼æ­¤å½æ°ä¼ä½¿ç¨ ``"???"`` ä½ä¸ºæä»¶åã å¦æ *closeit* ä¸ºçå¼ï¼æä»¶ä¼å¨ ``PyRun_SimpleFileExFlags()`` è¿åä¹åè¢«å³é­ã ä¸ :c:func:`Py_CompileStringObject` ç±»ä¼¼ï¼ä½ *filename* æ¯ä»¥ :term:`filesystem encoding and error handler` è§£ç åºçå­èä¸²ã è¿è¦æ³¨æè¿äºå½æ°ä¸­æå ä¸ªå¯ä»¥æ¥å :c:expr:`FILE*` å½¢åã æä¸ä¸ªéè¦å°å¿å¤ççç¹å«é®é¢æ¯éå¯¹ä¸å C åºç :c:type:`FILE` ç»æä½å¯è½æ¯ä¸ç¸åä¸ä¸å¼å®¹çã ï¼è³å°æ¯ï¼å¨ Windows ä¸­ï¼å¨æé¾æ¥çæ©å±å®éä¸æå¯è½ä¼ä½¿ç¨ä¸åçåºï¼æä»¥åºå½ç¹å«æ³¨æåªæå¨ç¡®å®è¿äºå½æ°æ¯ç± Python è¿è¡æ¶æä½¿ç¨çç¸åçåºåå»ºçæåµä¸æå° :c:expr:`FILE*` å½¢åä¼ ç»å®ä»¬ã è¯·æ³¨æå¦æå¼åäºä¸ä¸ªå¨å¶ä»åºåä¸æªå¤çç :exc:`SystemExit`ï¼æ­¤å½æ°å°ä¸ä¼è¿å ``-1``ï¼èæ¯éåºè¿ç¨ï¼åªè¦ :c:member:`PyConfig.inspect` ä¸ºé¶å°±ä¼è¿æ ·ã è¯·æ³¨æå¦æå¼åäºä¸ä¸ªå¨å¶ä»åºåä¸æªå¤çç :exc:`SystemExit`ï¼æ­¤å½æ°å°ä¸ä¼è¿å ``1``ï¼èæ¯éåºè¿ç¨ï¼åªè¦ :c:member:`PyConfig.inspect` ä¸ºé¶å°±ä¼è¿æ ·ã å¨ Windows ä¸ï¼*fp* åºå½ä»¥äºè¿å¶æ¨¡å¼æå¼ (å³ ``fopen(filename, "rb")``)ã å¦åï¼Python å¯è½æ æ³æ­£ç¡®å°å¤çä½¿ç¨ LF è¡ç»æç¬¦çèæ¬æä»¶ã è§£æå¹¶ç¼è¯ *str* ä¸­ç Python æºä»£ç ï¼è¿åç»æä»£ç å¯¹è±¡ã å¼å§å½¢ç¬¦ç± *start* ç»åºï¼è¿å¯è¢«ç¨æ¥çº¦æå¯è¢«ç¼è¯çä»£ç å¹¶ä¸åºå½ä¸º :c:data:`Py_eval_input`, :c:data:`Py_file_input` æ :c:data:`Py_single_input`ã ç± *filename* æå®çæä»¶åä¼è¢«ç¨æ¥æé ä»£ç å¯¹è±¡å¹¶å¯è½åºç°å¨åæº¯ä¿¡æ¯æ :exc:`SyntaxError` å¼å¸¸æ¶æ¯ä¸­ã å¦æä»£ç æ æ³è¢«è§£ææç¼è¯åæ­¤å½æ°å°è¿å ``NULL``ã Py_CompileString() æ ¹æ® *flags* åæ°è¯»åå¹¶æ§è¡æ¥èªä¸äº¤äºè®¾å¤ç¸å³èçæä»¶çä¸æ¡è¯­å¥ã ç¨æ·å°å¾å°ä½¿ç¨ ``sys.ps1`` å ``sys.ps2`` çæç¤ºã *filename* å°ä½¿ç¨ :term:`filesystem encoding and error handler` æ¥è§£ç ã è¯»åå¹¶æ§è¡æ¥èªä¸äº¤äºè®¾å¤ç¸å³èçè¯­å¥ç´è³å°è¾¾ EOFã ç¨æ·å°å¾å°ä½¿ç¨ ``sys.ps1`` å ``sys.ps2`` çæç¤ºã *filename* å°ä½¿ç¨ :term:`filesystem encoding and error handler` æ¥è§£ç ã å½ä½äº EOF æ¶å°è¿å ``0``ï¼æèå½å¤±è´¥æ¶å°è¿åä¸ä¸ªè´æ°ã å½è¾å¥è¢«æåæ§è¡æ¶è¿å ``0``ï¼å¦æå¼åå¼å¸¸åè¿å ``-1``ï¼æèå¦æå­å¨è§£æéè¯¯åè¿åæ¥èªä½ä¸º Python çç»æé¨ååå¸ç :file:`errcode.h` åæ¬æä»¶çéè¯¯ä»£ç ã ï¼è¯·æ³¨æ :file:`errcode.h` å¹¶æªè¢« :file:`Python.h` æåæ¬ï¼å æ­¤å¦æéè¦åå¿é¡»ä¸é¨å°åæ¬ãï¼ è¿åå°ä»£ç ä½ä¸º Python å¯¹è±¡æ§è¡çç»æï¼æèå¦æå¼åäºå¼å¸¸åè¿å ``NULL``ã è¿äºå½æ°ä¸­æå ä¸ªå¯ä»¥æ¥åç¹å®çè¯­æ³åç¼ç¬¦å·ä½ä¸ºå½¢åã å¯ç¨çåç¼ç¬¦å·æ :c:data:`Py_eval_input`, :c:data:`Py_file_input` å :c:data:`Py_single_input`ã è¿äºç¬¦å·ä¼å¨æ¥åå®ä»¬ä½ä¸ºå½¢åçå½æ°ææ¡£ä¸­å ä»¥è¯´æã ç±»ä¼¼äº :c:func:`PyRun_SimpleStringFlags`ï¼ä½ Python æºä»£ç æ¯ä» *fp* è¯»åèä¸æ¯ä¸ä¸ªåå­ä¸­çå­ç¬¦ä¸²ã *filename* åºä¸ºæä»¶åï¼å®å°ä½¿ç¨ :term:`filesystem encoding and error handler` æ¥è§£ç ã å¦æ *closeit* ä¸ºçå¼ï¼åæä»¶å°å¨ ``PyRun_SimpleFileExFlags()`` è¿åä¹åè¢«å³é­ã ç±»ä¼¼äº :c:func:`PyRun_StringFlags`ï¼ä½ Python æºä»£ç æ¯ä» *fp* è¯»åèä¸æ¯ä¸ä¸ªåå­ä¸­çå­ç¬¦ä¸²ã *filename* åºä¸ºæä»¶åï¼å®å°ä½¿ç¨ :term:`filesystem encoding and error handler` æ¥è§£ç ã å¦æ *closeit* ä¸ºçå¼ï¼åæä»¶å°å¨ :c:func:`PyRun_FileExFlags` è¿åä¹åè¢«å³é­ã ç±»ä¼¼äº :c:func:`Py_Main` ä½ *argv* æ¯ä¸ä¸ªåå«å­èä¸²çæ°ç»ã æé«å±çº§ API æ¬ç« èçå½æ°å°åè®¸ä½ æ§è¡å¨æä»¶æç¼å²åºä¸­æä¾ç Python æºä»£ç ï¼ä½å®ä»¬å°ä¸åè®¸ä½ å¨æ´ç»èåçæ¹å¼ä¸è§£éå¨è¿è¡äº¤äºã æ´æ° *optimize* æå®ç¼è¯å¨çä¼åçº§å«ï¼å¼ ``-1`` å°éæ©ä¸ :option:`-O` éé¡¹ç¸åçè§£éå¨ä¼åçº§å«ã æ¾å¼çº§å«ä¸º ``0`` (æ ä¼åï¼``__debug__`` ä¸ºçå¼)ã``1`` (æ­è¨è¢«ç§»é¤ï¼``__debug__`` ä¸ºåå¼) æ ``2`` (ææ¡£å­ç¬¦ä¸²ä¹è¢«ç§»é¤)ã éå¯¹æ åè§£éå¨çä¸»ç¨åºã åµå¥äº Python çç¨åºå°å¯ä½¿ç¨æ­¤ç¨åºã ææä¾ç *argc* å *argv* å½¢ååºå½ä¸ä¼ ç» C ç¨åºç :c:func:`main` å½æ°çå½¢åç¸åï¼å°æ ¹æ®ç¨æ·çè¯­è¨åºåè½¬æ¢ä¸ºï¼ã ä¸ä¸ªéè¦çæ³¨æäºé¡¹æ¯åæ°åè¡¨å¯è½ä¼è¢«ä¿®æ¹ï¼ä½åæ°åè¡¨ä¸­å­ç¬¦ä¸²ææåçåå®¹ä¸ä¼è¢«ä¿®æ¹ï¼ã å¦æè§£éå¨æ­£å¸¸éåºï¼å³æªå¼åå¼å¸¸ï¼åè¿åå¼å°ä¸º ``0``ï¼å¦æè§£éå¨å å¼åå¼å¸¸èéåºåè¿å ``1``ï¼æèå¦æå½¢ååè¡¨ä¸è½è¡¨ç¤ºææç Python å½ä»¤è¡åè¿å ``2``ã ç»æå¿é¡»æ¯ä¸ä¸ªç± :c:func:`PyMem_RawMalloc` æ :c:func:`PyMem_RawRealloc` åéçå­ç¬¦ä¸²ï¼æèå¦æåçéè¯¯åä¸º ``NULL``ã ç»æå¿é¡»ç± :c:func:`PyMem_RawMalloc` æ :c:func:`PyMem_RawRealloc` åéï¼èä¸æ¯ç± :c:func:`PyMem_Malloc` æ :c:func:`PyMem_Realloc` åéã Python è¯­æ³ä¸­ç¨äºåç¬è¯­å¥çèµ·å§ç¬¦å·ï¼éå :c:func:`Py_CompileString` ä½¿ç¨ã è¿æ¯ç¨äºäº¤äºå¼è§£éå¨å¾ªç¯çç¬¦å·ã Python è¯­æ³ä¸­ç¨äºå­¤ç«è¡¨è¾¾å¼çèµ·å§ç¬¦å·ï¼éå :c:func:`Py_CompileString` ä½¿ç¨ã Python è¯­æ³ä¸­ç¨äºä»æä»¶æå¶ä»æºè¯»åè¯­å¥åºåçèµ·å§ç¬¦å·ï¼éå :c:func:`Py_CompileString` ä½¿ç¨ã è¿æ¯å¨ç¼è¯ä»»æé¿ç Python æºä»£ç æ¶è¦ä½¿ç¨çç¬¦å·ã è¿ä¸ªæ å¿ä½å¯å¨ *flags* ä¸­è®¾ç½®ä»¥ä½¿å¾é¤æ³è¿ç®ç¬¦ ``/`` è¢«è§£è¯»ä¸º :pep:`238` æè§å®çâçé¤æ³âã æ­¤å½æ°ä¼ä¿®æ¹å½åæ±å¼å¸§çææ ï¼å¹¶å¨æåæ¶è¿åçå¼ï¼å¤±è´¥æ¶è¿ååå¼ã æ­¤å½æ°åªè½è¢« :ref:`ä¸»è§£éå¨ <sub-interpreter-support>` è°ç¨ã è¯¥å½æ°ç°å¨åå«ä¸ä¸ªè°è¯æ­è¨ï¼ç¨ä»¥ç¡®ä¿ä¸ä¼éé»å°ä¸¢å¼æ´»å¨çå¼å¸¸ã è¿æ¯éå¯¹ :c:func:`PyEval_EvalCodeEx` çç®åçæ¥å£ï¼åªéå¸¦ä»£ç å¯¹è±¡ï¼ä»¥åå¨å±åå±é¨åéã å¶ä»åæ°åè®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_AnyFileExFlags` çç®åçæ¥å£ï¼å° *closeit* è®¾ä¸º ``0`` èå° *flags* è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_AnyFileExFlags` çç®åçæ¥å£ï¼å° *closeit* åæ°è®¾ä¸º ``0``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_AnyFileExFlags` çç®åçæ¥å£ï¼å° *flags* åæ°è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_FileExFlags` çç®åçæ¥å£ï¼å° *closeit* è®¾ä¸º ``0`` å¹¶å° *flags* è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_FileExFlags` çç®åçæ¥å£ï¼å° *closeit* è®¾ä¸º ``0``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_FileExFlags` çç®åçæ¥å£ï¼å° *flags* è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_InteractiveLoopFlags` çç®åçæ¥å£ï¼å° *flags* è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_InteractiveOneFlags` çç®åçæ¥å£ï¼å° *flags* è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_SimpleFileExFlags` çç®åçæ¥å£ï¼å° *closeit* è®¾ä¸º ``0`` èå° *flags* è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_SimpleFileExFlags` çç®åçæ¥å£ï¼å° *flags* è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_SimpleStringFlags` çç®åçæ¥å£ï¼å° :c:struct:`PyCompilerFlags`\* åæ°è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`PyRun_StringFlags` çç®åçæ¥å£ï¼å° *flags* è®¾ä¸º ``NULL``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`Py_CompileStringExFlags` çç®åçæ¥å£ï¼å° *optimize* è®¾ä¸º ``-1``ã è¿æ¯éå¯¹ä¸é¢ :c:func:`Py_CompileStringFlags` çç®åçæ¥å£ï¼å° *flags* è®¾ä¸º ``NULL``ã è¿æ¯ Python è§£éè¿è¡ä¸å¸¦ä¿®é¥°çä¸»å½æ°ã ä¸æ§è¡å¸§ *f* ç¸å³èçä»£ç å¯¹è±¡å°è¢«æ§è¡ï¼è§£éå­èç å¹¶æ ¹æ®éè¦æ§è¡è°ç¨ã é¢å¤ç *throwflag* å½¢ååºæ¬å¯ä»¥è¢«å¿½ç¥ ââ å¦æä¸ºçå¼ï¼åä¼å¯¼è´ç«å³æåºä¸ä¸ªå¼å¸¸ï¼è¿ä¼è¢«ç¨äºçæå¨å¯¹è±¡ç :meth:`~generator.throw` æ¹æ³ã è¿æ¯ç¨æ¥å­æ¾ç¼è¯å¨ææ çç»æä½ã å¯¹äºä»£ç ä»è¢«ç¼è¯çæåµï¼å®å°ä½ä¸º ``int flags`` ä¼ å¥ï¼èå¯¹äºä»£ç è¦è¢«æ§è¡çæåµï¼å®å°ä½ä¸º ``PyCompilerFlags *flags`` ä¼ å¥ã å¨è¿ç§æåµä¸ï¼``from __future__ import`` å¯ä»¥ä¿®æ¹ *flags*ã 