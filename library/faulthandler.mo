Þ    +      t              Ì  n  Í  J   <  1     ;   ¹  Æ   õ  5   ¼  &   ò  U     l   o  Ù  Ü     ¶  &   Ì  &   ó  )   	  %  D	     j
  U   r
     È
  5   Ü
       ,   .     [     m       >     T   Þ  X   3  Ü     P   i  {   º     6  ¦   Å  a   l  \   Î  î   +      d   +  ;     5   Ì  &     Ä  )  ¨   î  ¿    _  W  >   ·  8   ö  6   /  Æ   f  <   -  *   j  R     u   è  ä  ^     C  $   V  $   {  /      4  Ð       C        P  5   l     ¢  .   ¾     í     ÿ        K   /   T   {   E   Ð   ï   !  M   "     T"     Ü"  ¶   l#  e   #$  b   $  Ñ   ì$    ¾%  b   Å&  -   ('  *   V'     '  «   '  ¡   L)   :func:`enable`, :func:`dump_traceback_later` and :func:`register` keep the file descriptor of their *file* argument. If the file is closed and its file descriptor is reused by a new file, or if :func:`os.dup2` is used to replace the file descriptor, the traceback will be written into a different file. Call these functions again each time that the file is replaced. :func:`traceback.print_tb`, which can be used to print a traceback object. :mod:`faulthandler` --- Dump the Python traceback Added support for passing file descriptor to this function. By default, the Python traceback is written to :data:`sys.stderr`. To see tracebacks, applications must be run in the terminal. A log file can alternatively be passed to :func:`faulthandler.enable`. Cancel the last call to :func:`dump_traceback_later`. Check if the fault handler is enabled. Disable the fault handler: uninstall the signal handlers installed by :func:`enable`. Dump the tracebacks of all threads into *file*. If *all_threads* is ``False``, dump only the current thread. Dump the tracebacks of all threads, after a timeout of *timeout* seconds, or every *timeout* seconds if *repeat* is ``True``.  If *exit* is ``True``, call :c:func:`_exit` with status=1 after dumping the tracebacks.  (Note :c:func:`_exit` exits the process immediately, which means it doesn't do any cleanup like flushing file buffers.) If the function is called twice, the new call replaces previous parameters and resets the timeout. The timer has a sub-second resolution. Dumping the traceback Dumping the traceback on a user signal Dumping the tracebacks after a timeout Each string is limited to 500 characters. Enable the fault handler: install handlers for the :const:`SIGSEGV`, :const:`SIGFPE`, :const:`SIGABRT`, :const:`SIGBUS` and :const:`SIGILL` signals to dump the Python traceback. If *all_threads* is ``True``, produce tracebacks for every running thread. Otherwise, dump only the current thread. Example Example of a segmentation fault on Linux with and without enabling the fault handler: Fault handler state Interactive source code debugger for Python programs. Issue with file descriptors It is limited to 100 frames and 100 threads. Module :mod:`pdb` Module :mod:`traceback` Not available on Windows. On Windows, a handler for Windows exception is also installed. Only ASCII is supported. The ``backslashreplace`` error handler is used on encoding. Only the filename, the function name and the line number are displayed. (no source code) Register a user signal: install a handler for the *signum* signal to dump the traceback of all threads, or of the current thread if *all_threads* is ``False``, into *file*. Call the previous handler if chain is ``True``. Standard interface to extract, format and print stack traces of Python programs. The *file* must be kept open until the fault handler is disabled: see :ref:`issue with file descriptors <faulthandler-fd>`. The *file* must be kept open until the signal is unregistered by :func:`unregister`: see :ref:`issue with file descriptors <faulthandler-fd>`. The *file* must be kept open until the traceback is dumped or :func:`cancel_dump_traceback_later` is called: see :ref:`issue with file descriptors <faulthandler-fd>`. The :ref:`Python Development Mode <devmode>` calls :func:`faulthandler.enable` at Python startup. The dump now mentions if a garbage collector collection is running if *all_threads* is true. The fault handler is called on catastrophic cases and therefore can only use signal-safe functions (e.g. it cannot allocate memory on the heap). Because of this limitation traceback dumping is minimal compared to normal Python tracebacks: The fault handler is compatible with system fault handlers like Apport or the Windows fault handler. The module uses an alternative stack for signal handlers if the :c:func:`sigaltstack` function is available. This allows it to dump the traceback even on a stack overflow. The module is implemented in C, so tracebacks can be dumped on a crash or when Python is deadlocked. The order is reversed: the most recent call is shown first. This function is implemented using a watchdog thread. This function is now always available. This module contains functions to dump Python tracebacks explicitly, on a fault, after a timeout, or on a user signal. Call :func:`faulthandler.enable` to install fault handlers for the :const:`SIGSEGV`, :const:`SIGFPE`, :const:`SIGABRT`, :const:`SIGBUS`, and :const:`SIGILL` signals. You can also enable them at startup by setting the :envvar:`PYTHONFAULTHANDLER` environment variable or by using the :option:`-X` ``faulthandler`` command line option. Unregister a user signal: uninstall the handler of the *signum* signal installed by :func:`register`. Return ``True`` if the signal was registered, ``False`` otherwise. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:05+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :func:`enable` ã :func:`dump_traceback_later` å :func:`register` ä¿çå¶ *file* åæ°ç»åºçæä»¶æè¿°ç¬¦ã å¦ææä»¶å³é­ï¼æä»¶æè¿°ç¬¦å°è¢«ä¸ä¸ªæ°æä»¶éæ°ä½¿ç¨ï¼æèç¨ :func:`os.dup2` æ¿æ¢äºæä»¶æè¿°ç¬¦ï¼åè·è¸ªä¿¡æ¯å°è¢«åå¥å¦ä¸ä¸ªæä»¶ã æ¯æ¬¡æä»¶è¢«æ¿æ¢æ¶ï¼é½ä¼åæ¬¡è°ç¨è¿äºå½æ°ã :func:`traceback.print_tb`ï¼å¯è¢«ç¨äºæå°åæº¯å¯¹è±¡ã :mod:`faulthandler` ââ è½¬å¨ Python çè·è¸ªä¿¡æ¯ å¢å äºåæ¬å½æ°ä¼ å¥æä»¶æè¿°ç¬¦çæ¯æã é»è®¤æåµä¸ï¼Python çè·è¸ªä¿¡æ¯ä¼åå¥ :data:`sys.stderr`ãä¸ºäºè½çå°è·è¸ªä¿¡æ¯ï¼åºç¨ç¨åºå¿é¡»è¿è¡äºç»ç«¯ä¸­ãæ¥å¿æä»¶ä¹å¯ä»¥ä¼ ç» :func:`faulthandler.enable`ã åæ¶ :func:`dump_traceback_later` çæåä¸æ¬¡è°ç¨ã æ£æ¥æéå¤çç¨åºæ¯å¦è¢«å¯ç¨ã åç¨æéå¤çç¨åºï¼å¸è½½ç± :func:`enable` å®è£çä¿¡å·å¤çç¨åºã å°ææçº¿ç¨çè·è¸ªæ°æ®è½¬å¨å° *file* ä¸­ãå¦æ *all_threads* ä¸º ``False``ï¼ååªè½¬å¨å½åçº¿ç¨ã å¨ *timeout* ç§è¶æ¶åï¼è½¬å¨ææçº¿ç¨çè·è¸ªä¿¡æ¯ï¼å¦æ *repeat* ä¸º ``True``ï¼åæ¯é *timeout* ç§è½¬å¨ä¸æ¬¡ãå¦æ *exit* ä¸º ``True``ï¼åå¨è½¬å¨è·è¸ªä¿¡æ¯åè°ç¨ :c:func:`_exit`ï¼åæ° status=1ãè¯·æ³¨æï¼ :c:func:`_exit` ä¼ç«å³å³é­è¿ç¨ï¼è¿æå³çä¸åä»»ä½æ¸çå·¥ä½ï¼å¦å·æ°æä»¶ç¼å²åºç­ãå¦æè°ç¨ä¸¤æ¬¡å½æ°ï¼åæ°çè°ç¨å°åä»£ä¹åçåæ°ï¼è¶æ¶æ¶é´ä¹ä¼éç½®ãè®¡æ¶å¨çç²¾åº¦ä¸ºäºç§çº§ã è½¬å¨è·è¸ªä¿¡æ¯ è½¬å¨ç¨æ·ä¿¡å·çè·è¸ªä¿¡æ¯ã ä¸å®æ¶é´åè½¬å¨è·è¸ªæ°æ®ã æ¯ä¸ªå­ç¬¦ä¸²éå¶å¨ 500 ä¸ªå­ç¬¦ä»¥åã å¯ç¨æéå¤çç¨åºï¼ä¸º :const:`SIGSEGV` ã :const:`SIGFPE` ã :const:`SIGABRT` ã :const:`SIGBUS` å :const:`SIGILL` ä¿¡å·å®è£å¤çç¨åºï¼ä»¥è½¬å¨ Python è·è¸ªä¿¡æ¯ãå¦æ *all_threads* ä¸º ``True``ï¼åä¼ä¸ºæ¯ä¸ªè¿è¡ä¸­ççº¿ç¨çæè·è¸ªä¿¡æ¯ãå¦ååªè½¬å¨å½åçº¿ç¨ã ç¤ºä¾ å¨ Linux ä¸­å¯ç¨ååç¨åå­æ®µæéçé»è®¤å¤çç¨åºï¼ æéå¤çç¨åºçç¶æ ç¨äº Python ç¨åºçäº¤äºå¼æºä»£ç è°è¯å¨ã æä»¶æè¿°ç¬¦ç¸å³è¯é¢ ä¸éæ¯ 100 é¡µåå­å¸§å 100 ä¸ªçº¿ç¨ã æ¨¡å :mod:`pdb` æ¨¡å :mod:`traceback` Windows ä¸­ä¸å¯ç¨ã å¨ Windows ç³»ç»ä¸­ï¼åæ¶ä¼å®è£ä¸ä¸ª Windows å¼å¸¸å¤çç¨åºã åªæ¯æ ASCII ç ãç¼ç æ¶ä¼ç¨å°  ``backslashreplace`` éè¯¯å¤çç¨åºã åªä¼æ¾å¼æä»¶åãå½æ°ååè¡å·ãï¼ä¸æ¾ç¤ºæºä»£ç ï¼ æ³¨åä¸ä¸ªç¨æ·ä¿¡å·ï¼ä¸º *signum* ä¿¡å·å®è£ä¸ä¸ªå¤çç¨åºï¼å°ææçº¿ç¨æå½åçº¿ç¨ï¼*all_threads* ä¸º ``False`` æ¶ï¼çè·è¸ªä¿¡æ¯è½¬å¨å° *file* ä¸­ãå¦æ chain ä¸º ``True``ï¼åè°ç¨ä¸ä¸å±å¤çç¨åºã æåãæ ¼å¼ååæå° Python ç¨åºçæ åæº¯ä¿¡æ¯çæ åæ¥å£ã *file* å¿é¡»ä¿ææå¼ç¶æï¼ç´è³åç¨æéå¤çç¨åºä¸ºæ­¢ï¼åè§ :ref:`æä»¶æè¿°ç¬¦ç¸å³è¯é¢ <faulthandler-fd>`ã *file* å¿é¡»ä¿ææå¼ç¶æï¼ç´è³è¯¥ä¿¡å·è¢« :func:`unregister` æ³¨éï¼åè§ :ref:`æä»¶æè¿°ç¬¦ç¸å³è¯é¢ <faulthandler-fd>`ã *file* å¿é¡»ä¿ææå¼ç¶æï¼ç´è³è·è¸ªä¿¡æ¯è½¬å¨å®æ¯ï¼æè°ç¨äº :func:`cancel_dump_traceback_later`  ï¼åè§ :ref:`æä»¶æè¿°ç¬¦ç¸å³è¯é¢ <faulthandler-fd>`ã å¨ Python å¯å¨æ¶ï¼ :ref:`Python å¼åæ¨¡å¼ <devmode>` ä¼è°ç¨ :func:`faulthandler.enable`ã ç°å¨å¦æ *all_threads* ä¸º Trueï¼åè½¬å¨ä¿¡æ¯ä¼åå«åå¾æ¶éå¨æ¯å¦æ­£å¨è¿è¡ã æéå¤çç¨åºå°å¨ç¾é¾æ§åºåè°ç¨ï¼å æ­¤åªè½ä½¿ç¨ä¿¡å·å®å¨çå½æ°ï¼æ¯å¦ä¸è½å¨å ä¸åéåå­ï¼ãç±äºè¿ä¸éå¶ï¼ä¸æ­£å¸¸ç Python è·è¸ªç¸æ¯ï¼è½¬å¨éæ¯æå°çã æéå¤çç¨åºä¸æä½ç³»ç»çæéå¤çç¨åºå¼å®¹ï¼æ¯å¦ Apport æ Windows æéå¤çç¨åºç­ãå¦æ :c:func:`sigaltstack` å½æ°å¯ç¨ï¼æ¬æ¨¡åå°ä¸ºä¿¡å·å¤çç¨åºä½¿ç¨å¤ç¨å æ ãè¿æ ·å³ä¾¿å æ æº¢åºä¹è½è½¬å¨è·è¸ªä¿¡æ¯ã æ¬æ¨¡åæ¯ç¨ C è¯­è¨å®ç°çï¼æä»¥æè½å¨å´©æºæ Python æ­»éæ¶è½¬å¨è·è¸ªä¿¡æ¯ã ååºæåï¼æè¿çè°ç¨æåæ¾ç¤ºã æ¬å½æ°ç¨ä¸ä¸ªçé¨ççº¿ç¨å®ç°ã è¯¥å½æ°ç°å¨æ»æ¯å¯ç¨ã å½æéãè¶æ¶ææ¶å°ç¨æ·ä¿¡å·æ¶ï¼å©ç¨æ¬æ¨¡ååçå½æ°å¯è½¬å¨ Python è·è¸ªä¿¡æ¯ãè°ç¨ :func:`faulthandler.enable` å¯å®è£ :const:`SIGSEGV` ã :const:`SIGFPE` ã :const:`SIGABRT` ã :const:`SIGBUS`  å :const:`SIGILL` ä¿¡å·çæéå¤çç¨åºãéè¿è®¾ç½® :envvar:`PYTHONFAULTHANDLER` ç¯å¢åéæ :option:`-X`  ``faulthandler`` å½ä»¤è¡åæ°ï¼è¿å¯ä»¥å¨å¯å¨æ¶å¼å¯è¿äºè®¾ç½®ã æ³¨éä¸ä¸ªç¨æ·ä¿¡å·ï¼å¸è½½ç± :func:`register` å®è£ç *signum* ä¿¡å·å¤çç¨åºãå¦æä¿¡å·å·²æ³¨åï¼è¿å ``True``ï¼å¦åè¿å ``False``ã 