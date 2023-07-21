Þ    L      |              Ü  ^   Ý  *   <  C   g  ]   «     	  ~   §    &  ì   =  >   *	  	   i	     s	     	     	  P   §	     ø	  î   
  è       p     v         «     7  q   O     Á  q   B  K   ´  k         l  a   õ  9   W  Ú     $   l       7   ¯  .   ç  )        @  P   ]  a   ®  $     K   5  L     /   Î  0   þ  W   /       Ø     \   å  j   B  i   ­  k                  ²  ¢   ¿  V   b  i   ¹  J   #  >   n  |   ­    *  ]   0  {       
  (     T  G        ;   ¬   2   è   4   !  ©   P!  ¶   ú!  g   ±"     #     8#  ¿  E#  \   %  .   b%  '   %  F   ¹%      &  {   &    '  Ë   (  ;   à(     )     #)     <)     L)  W   S)  ¡   «)  ê   M*  Þ   8+  ù   ,     -     "-  =  5-     s.  c   .      ê.  r   /  H   þ/  o   G0     ·0  Z   :1  :   1  ã   Ð1     ´2     Ð2  ;   ë2  4   '3  $   \3     3  K   3  c   ê3  "   N4  N   q4  O   À4  (   5  ,   95  W   f5  a   ¾5  £    6  K   Ä6  o   7  n   7  o   ï7     _8     r8     8  ¤   8  J   79  W   9  F   Ú9  V   !:  n   x:  ù   ç:  T   á;  k   6<    ¢<     §=  6  À=     ÷>  <   ?  ;   D?  *   ?     «?  ª   F@  a   ñ@     SA     iA   **Source code:** :source:`Lib/asyncio/subprocess.py`, :source:`Lib/asyncio/base_subprocess.py` *stdin* gets closed when `input=None` too. A ``None`` value indicates that the process has not terminated yet. A negative value ``-N`` indicates that the child was terminated by signal ``N`` (POSIX only). An example using the :class:`~asyncio.subprocess.Process` class to control a subprocess and the :class:`StreamReader` class to read from its standard output. An object that wraps OS processes created by the :func:`create_subprocess_exec` and :func:`create_subprocess_shell` functions. Because all asyncio subprocess functions are asynchronous and asyncio provides many tools to work with such functions, it is easy to execute and monitor multiple subprocesses in parallel.  It is indeed trivial to modify the above example to run several commands simultaneously:: Both :func:`create_subprocess_exec` and :func:`create_subprocess_shell` functions return instances of the *Process* class.  *Process* is a high-level wrapper that allows communicating with subprocesses and watching for their completion. Can be passed to the *stdin*, *stdout* or *stderr* parameters. Constants Create a subprocess. Creating Subprocesses Examples Here's an example of how asyncio can run a shell command and obtain its result:: If *PIPE* is passed to *stdin* argument, the :attr:`Process.stdin <asyncio.subprocess.Process.stdin>` attribute will point to a :class:`StreamWriter` instance. If *PIPE* is passed to *stdout* or *stderr* arguments, the :attr:`Process.stdout <asyncio.subprocess.Process.stdout>` and :attr:`Process.stderr <asyncio.subprocess.Process.stderr>` attributes will point to :class:`StreamReader` instances. If either :exc:`BrokenPipeError` or :exc:`ConnectionResetError` exception is raised when writing *input* into *stdin*, the exception is ignored.  This condition occurs when the process exits before all data are written into *stdin*. If it is desired to send data to the process' *stdin*, the process needs to be created with ``stdin=PIPE``.  Similarly, to get anything other than ``None`` in the result tuple, the process has to be created with ``stdout=PIPE`` and/or ``stderr=PIPE`` arguments. Interact with process: Interacting with Subprocesses It is the application's responsibility to ensure that all whitespace and special characters are quoted appropriately to avoid `shell injection <https://en.wikipedia.org/wiki/Shell_injection#Shell_injection>`_ vulnerabilities. The :func:`shlex.quote` function can be used to properly escape whitespace and special shell characters in strings that are going to be used to construct shell commands. Kill the child process. Note that alternative event loop implementations might have own limitations; please refer to their documentation. Note that for processes created by the :func:`create_subprocess_shell` function, this attribute is the PID of the spawned shell. Note, that the data read is buffered in memory, so do not use this method if the data size is large or unlimited. On POSIX systems this method sends :py:data:`SIGKILL` to the child process. On UNIX *child watchers* are used for subprocess finish waiting, see :ref:`asyncio-watchers` for more info. On Windows subprocesses are provided by :class:`ProactorEventLoop` only (default), :class:`SelectorEventLoop` has no subprocess support. On Windows the Win32 API function :c:func:`TerminateProcess` is called to stop the child process. On Windows this method is an alias for :meth:`terminate`. On Windows, :py:data:`SIGTERM` is an alias for :meth:`terminate`. ``CTRL_C_EVENT`` and ``CTRL_BREAK_EVENT`` can be sent to processes started with a *creationflags* parameter which includes ``CREATE_NEW_PROCESS_GROUP``. Process identification number (PID). Removed the *loop* parameter. Return a :class:`~asyncio.subprocess.Process` instance. Return a tuple ``(stdout_data, stderr_data)``. Return code of the process when it exits. Run the *cmd* shell command. See also the :ref:`Subprocess and Threads <asyncio-subprocess-threads>` section. See also the :ref:`same example <asyncio_example_subprocess_proto>` written using low-level APIs. See also the `Examples`_ subsection. See the documentation of :meth:`loop.subprocess_exec` for other parameters. See the documentation of :meth:`loop.subprocess_shell` for other parameters. Sends the signal *signal* to the child process. Set and return the :attr:`returncode` attribute. Spawning a subprocess with *inactive* current child watcher raises :exc:`RuntimeError`. Special value that can be used as the *stderr* argument and indicates that standard error should be redirected into standard output. Special value that can be used as the *stdin*, *stdout* or *stderr* argument to process creation functions.  It indicates that the special file :data:`os.devnull` will be used for the corresponding subprocess stream. Standard asyncio event loop supports running subprocesses from different threads by default. Standard error stream (:class:`StreamReader`) or ``None`` if the process was created with ``stderr=None``. Standard input stream (:class:`StreamWriter`) or ``None`` if the process was created with ``stdin=None``. Standard output stream (:class:`StreamReader`) or ``None`` if the process was created with ``stdout=None``. Stop the child process. Subprocess and Threads Subprocesses Subprocesses are available for Windows if a :class:`ProactorEventLoop` is used. See :ref:`Subprocess Support on Windows <asyncio-windows-subprocess>` for details. The :ref:`Concurrency and multithreading in asyncio <asyncio-multithreading>` section. The optional *input* argument is the data (:class:`bytes` object) that will be sent to the child process. The subprocess is created by the :func:`create_subprocess_exec` function:: This class is :ref:`not thread safe <asyncio-multithreading>`. This class is designed to have a similar API to the :class:`subprocess.Popen` class, but there are some notable differences: This method can deadlock when using ``stdout=PIPE`` or ``stderr=PIPE`` and the child process generates so much output that it blocks waiting for the OS pipe buffer to accept more data. Use the :meth:`communicate` method when using pipes to avoid this condition. This section describes high-level async/await asyncio APIs to create and manage subprocesses. UNIX switched to use :class:`ThreadedChildWatcher` for spawning subprocesses from different threads without any limitation. Use the :meth:`communicate` method rather than :attr:`process.stdin.write() <stdin>`, :attr:`await process.stdout.read() <stdout>` or :attr:`await process.stderr.read() <stderr>`. This avoids deadlocks due to streams pausing reading or writing and blocking the child process. Wait for the child process to terminate. asyncio also has the following *low-level* APIs to work with subprocesses: :meth:`loop.subprocess_exec`, :meth:`loop.subprocess_shell`, :meth:`loop.connect_read_pipe`, :meth:`loop.connect_write_pipe`, as well as the :ref:`Subprocess Transports <asyncio-subprocess-transports>` and :ref:`Subprocess Protocols <asyncio-subprocess-protocols>`. closes *stdin*; read data from *stdout* and *stderr*, until EOF is reached; send data to *stdin* (if *input* is not ``None``); the *universal_newlines* parameter is not supported. the :meth:`Process.wait() <asyncio.subprocess.Process.wait>` method is asynchronous, whereas :meth:`subprocess.Popen.wait` method is implemented as a blocking busy loop; the :meth:`~asyncio.subprocess.Process.communicate` and :meth:`~asyncio.subprocess.Process.wait` methods don't have a *timeout* parameter: use the :func:`~asyncio.wait_for` function; unlike Popen, Process instances do not have an equivalent to the :meth:`~subprocess.Popen.poll` method; wait for process to terminate. will print:: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 00:55+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç :** :source:`Lib/asyncio/subprocess.py`, :source:`Lib/asyncio/base_subprocess.py` *stdin* å¨ `input=None` æ¶ä¹ä¼è¢«å³é­ã ``None`` å¼è¡¨ç¤ºè¿ç¨å°æªç»æ­¢ã ä¸ä¸ªè´å¼ ``-N`` è¡¨ç¤ºå­è¿ç¨è¢«ä¿¡å· ``N`` ä¸­æ­ (ä» POSIX). ä¸ä¸ªä½¿ç¨ :class:`~asyncio.subprocess.Process` ç±»æ¥æ§å¶å­è¿ç¨å¹¶ç¨ :class:`StreamReader` ç±»æ¥ä»å¶æ åè¾åºè¯»åä¿¡æ¯çç¤ºä¾ã ä¸ä¸ªç¨äºåè£ :func:`create_subprocess_exec` and :func:`create_subprocess_shell` å½æ°åå»ºç OS è¿ç¨çå¯¹è±¡ã ç±äºææ asyncio å­è¿ç¨å½æ°é½æ¯å¼æ­¥çå¹¶ä¸ asyncio æä¾äºè®¸å¤å·¥å·ç¨æ¥éåè¿äºå½æ°ä½¿ç¨ï¼å æ­¤å¹¶è¡å°æ§è¡åçè§å¤ä¸ªå­è¿ç¨ååå®¹æã è¦ä¿®æ¹ä¸é¢çä¾å­æ¥åæ¶è¿è¡å¤ä¸ªå½ä»¤ç¡®å®æ¯éå¸¸ç®åç:: :func:`create_subprocess_exec` å :func:`create_subprocess_shell` å½æ°é½è¿å *Process* ç±»çå®ä¾ã *Process* æ¯ä¸ä¸ªé«å±çº§åè£å¨ï¼å®åè®¸ä¸å­è¿ç¨éä¿¡å¹¶çè§å¶å®ææåµã å¯ä»¥è¢«ä¼ éç» *stdin*, *stdout* æ *stderr* å½¢åã å¸¸é åå»ºä¸ä¸ªå­è¿ç¨ã åå»ºå­è¿ç¨ ä¾å­ ä¸é¢çä¾å­æ¼ç¤ºäºå¦ä½ç¨ asyncio è¿è¡ä¸ä¸ª shell å½ä»¤å¹¶è·åå¶ç»æ:: å¦æ *PIPE* è¢«ä¼ éç» *stdin* åæ°ï¼å :attr:`Process.stdin <asyncio.subprocess.Process.stdin>` å±æ§å°ä¼æåä¸ä¸ª :class:`StreamWriter` å®ä¾ã å¦æ *PIPE* è¢«ä¼ éç» *stdout* æ *stderr* åæ°ï¼å :attr:`Process.stdout <asyncio.subprocess.Process.stdout>` å :attr:`Process.stderr <asyncio.subprocess.Process.stderr>` å±æ§å°ä¼æå :class:`StreamReader` å®ä¾ã å¦æå¨å° *input* åå¥å° *stdin* æ¶å¼åäº :exc:`BrokenPipeError` æ :exc:`ConnectionResetError` å¼å¸¸ï¼å¼å¸¸ä¼è¢«å¿½ç¥ã æ­¤æ¡ä»¶ä¼å¨è¿ç¨åäºæææ°æ®è¢«åå¥å° *stdin* ä¹åéåºæ¶åçã å¦ææ³è¦å°æ°æ®åéå°è¿ç¨ç *stdin*ï¼ååå»ºè¿ç¨æ¶å¿é¡»ä½¿ç¨ ``stdin=PIPE``ã ç±»ä¼¼å°ï¼è¦å¨ç»æåç»ä¸­è·å¾ä»»ä½ä¸ä¸º ``None`` çå¼ï¼ååå»ºè¿ç¨æ¶å¿é¡»ä½¿ç¨ ``stdout=PIPE`` å/æ ``stderr=PIPE`` åæ°ã ä¸è¿ç¨äº¤äº: ä¸å­è¿ç¨äº¤äº åºç¨ç¨åºè¦è´è´£ç¡®ä¿æ­£ç¡®å°è½¬ä¹ææç©ºç½å­ç¬¦åç¹æ®å­ç¬¦ä»¥é²æ­¢ `shell æ³¨å¥ <https://en.wikipedia.org/wiki/Shell_injection#Shell_injection>`_ æ¼æ´ã :func:`shlex.quote` å½æ°å¯ä»¥è¢«ç¨æ¥æ­£ç¡®å°è½¬ä¹å­ç¬¦ä¸²ä¸­å¯ä»¥è¢«ç¨æ¥æé  shell å½ä»¤çç©ºç½å­ç¬¦åç¹æ® shell å­ç¬¦ã ææå­è¿ç¨ã è¯·æ³¨æå¶ä»çäºä»¶å¾ªç¯å®ç°å¯è½æå¶æ¬èº«çéå¶ï¼è¯·æ¥çå®ä»¬åèªçææ¡£ã æ³¨æå¯¹äºç±Note that for processes created by the :func:`create_subprocess_shell` å½æ°æåå»ºçè¿ç¨ï¼è¿ä¸ªå±æ§å°æ¯æçæç shell ç PIDã æ³¨æï¼æ°æ®è¯»åå¨åå­ä¸­æ¯å¸¦ç¼å²çï¼å æ­¤å¦ææ°æ®éè¿å¤§æä¸ååä¸è¦ä½¿ç¨æ­¤æ¹æ³ã å¨ POSIX ç³»ç»ä¸­æ­¤æ¹æ³ä¼åé :py:data:`SIGKILL` ç»å­è¿ç¨ã å¨ UNIX ä¸ä¼ä½¿ç¨ *child watchers* æ¥è®©å­è¿ç¨ç»æç­å¾ï¼è¯¦æè¯·åé :ref:`asyncio-watchers`ã å¨ Windows ä¸å­è¿ç¨ï¼é»è®¤ï¼åªç± :class:`ProactorEventLoop` æä¾ï¼:class:`SelectorEventLoop` æ²¡æå­è¿ç¨æ¯æã å¨ Windows ä¸ä¼è°ç¨ Win32 API å½æ° :c:func:`TerminateProcess` ä»¥åæ­¢å­è¿ç¨ã å¨ Windows ä¸æ­¤æ¹æ³æ¯ :meth:`terminate` çå«åã å¨ Windows ä¸ï¼:py:data:`SIGTERM` æ¯ :meth:`terminate` çå«åã ``CTRL_C_EVENT`` å ``CTRL_BREAK_EVENT`` å¯è¢«åéç»åå»ºæ¶è®¾ç½®äº *creationflags* å½¢åä¸å¶ä¸­åæ¬ ``CREATE_NEW_PROCESS_GROUP`` çè¿ç¨ã è¿ç¨æ è¯å·ï¼PIDï¼ã ç§»é¤äº *loop* å½¢åã è¿åä¸ä¸ª :class:`~asyncio.subprocess.Process` å®ä¾ã è¿åä¸ä¸ªåç» ``(stdout_data, stderr_data)``ã å½è¿ç¨éåºæ¶è¿åå¶ä»£å·ã è¿è¡ *cmd* shell å½ä»¤ã è¯·åé  :ref:`å­è¿ç¨åçº¿ç¨ <asyncio-subprocess-threads>` é¨åã å¦è¯·åéä½¿ç¨ä½å±çº§ API ç¼åç :ref:`ç¸åç¤ºä¾ <asyncio_example_subprocess_proto>`ã å¦è¯·åé `Examples`_ å°èã æå³å¶ä»å½¢åçè¯´æè¯·æ¥é :meth:`loop.subprocess_exec` çææ¡£ã æå³å¶ä»å½¢åçè¯´æè¯·æ¥é :meth:`loop.subprocess_shell` çææ¡£ã å°ä¿¡å· *signal* åéç»å­è¿ç¨ã è®¾ç½®å¹¶è¿å :attr:`returncode` å±æ§ã ä½¿ç¨ *ä¸æ´»å¨ç* å½åå­çè§å¨çæå­è¿ç¨å°å¼å :exc:`RuntimeError`ã å¯ä»¥ç¨ä½ *stderr* åæ°çç¹æ®å¼ï¼è¡¨ç¤ºæ åéè¯¯åºå½è¢«éå®åå°æ åè¾åºã å¯ä»¥ç¨ä½ *stdin*, *stdout* æ *stderr* åæ°æ¥å¤çåå»ºå½æ°çç¹æ®å¼ã å®è¡¨ç¤ºå°ä¸ºç¸åºçå­è¿ç¨æµä½¿ç¨ç¹æ®æä»¶ :data:`os.devnull`ã æ å asyncio äºä»¶å¾ªç¯é»è®¤æ¯æä»ä¸åçº¿ç¨ä¸­è¿è¡å­è¿ç¨ã æ åéè¯¯æµ (:class:`StreamReader`) æèå¦æè¿ç¨åå»ºæ¶è®¾ç½®äº ``stderr=None`` åä¸º ``None``ã æ åè¾å¥æµ (:class:`StreamWriter`) æèå¦æè¿ç¨åå»ºæ¶è®¾ç½®äº ``stdin=None`` åä¸º ``None``ã æ åè¾åºæµ (:class:`StreamReader`) æèå¦æè¿ç¨åå»ºæ¶è®¾ç½®äº ``stdout=None`` åä¸º ``None``ã åæ­¢å­è¿ç¨ã å­è¿ç¨åçº¿ç¨ å­è¿ç¨é å¦æä½¿ç¨äº :class:`ProactorEventLoop` åå­è¿ç¨å°å¨ Windows ä¸­å¯ç¨ã è¯¦æåè§ :ref:`Windows ä¸çå­è¿ç¨æ¯æ <asyncio-windows-subprocess>`ã :ref:`asyncio ä¸­çå¹¶ååå¤çº¿ç¨ <asyncio-multithreading>` ç« èã å¯éç *input* åæ°ä¸ºå°è¢«åéå°å­è¿ç¨çæ°æ® (:class:`bytes` å¯¹è±¡)ã è¿ä¸ªå­è¿ç¨æ¯ç± :func:`create_subprocess_exec` å½æ°åå»ºç:: è¿ä¸ªç±»ä¸æ¯çº¿ç¨å®å¨çï¼:ref:`not thread safe <asyncio-multithreading>`ï¼ã è¿ä¸ªç±»è¢«è®¾è®¡ä¸ºå·æä¸ :class:`subprocess.Popen` ç±»ç¸ä¼¼ç APIï¼ä½ä¸¤èæä¸äºéè¦çå·®å¼: å½ä½¿ç¨ ``stdout=PIPE`` æ ``stderr=PIPE`` å¹¶ä¸å­è¿ç¨äº§çäºè¶³ä»¥é»å¡ OS ç®¡éç¼å²åºç­å¾æ¥æ¶æ´å¤çæ°æ®çè¾åºæ¶ï¼æ­¤æ¹æ³ä¼åçæ­»éã å½ä½¿ç¨ç®¡éæ¶è¯·ä½¿ç¨ :meth:`communicate` æ¹æ³æ¥é¿åè¿ç§æåµã æ¬èä»ç»äºç¨äºåå»ºåç®¡çå­è¿ç¨çé«å±çº§ async/await asyncio APIã UNIX å¯¹äºä»ä¸åçº¿ç¨ä¸­æ éå¶å°çæå­è¿ç¨ä¼åæ¢ä¸ºä½¿ç¨ :class:`ThreadedChildWatcher`ã ä½¿ç¨ :meth:`communicate` æ¹æ³èé :attr:`process.stdin.write() <stdin>`, :attr:`await process.stdout.read() <stdout>` æ :attr:`await process.stderr.read() <stderr>`ã è¿å¯ä»¥é¿åç±äºæµæåè¯»åæåå¥å¹¶é»å¡å­è¿ç¨èå¯¼è´çæ­»éã ç­å¾å­è¿ç¨ç»ç»ã asyncio è¿æä¸å *ä½å±çº§* API å¯éåå­è¿ç¨ä½¿ç¨: :meth:`loop.subprocess_exec`, :meth:`loop.subprocess_shell`, :meth:`loop.connect_read_pipe`, :meth:`loop.connect_write_pipe` ä»¥å :ref:`å­è¿ç¨ä¼ è¾ <asyncio-subprocess-transports>` å :ref:`å­è¿ç¨åè®® <asyncio-subprocess-protocols>`ã å³é­ *stdin*; ä» *stdout* å *stderr* è¯»åæ°æ®ï¼ç´è³å°è¾¾ EOFï¼ åéæ°æ®å° *stdin* (å¦æ *input* ä¸ä¸º ``None``)ï¼ *universal_newlines* å½¢åä¸è¢«æ¯æã :meth:`Process.wait() <asyncio.subprocess.Process.wait>` æ¹æ³æ¯å¼æ­¥çï¼è :meth:`subprocess.Popen.wait` æ¹æ³åè¢«å®ç°ä¸ºé»å¡åå¿å¾ªç¯ï¼ :meth:`~asyncio.subprocess.Process.communicate` å :meth:`~asyncio.subprocess.Process.wait` æ¹æ³æ²¡æ *timeout* å½¢åï¼è¯·ä½¿ç¨ :func:`~asyncio.wait_for` å½æ°ï¼ ä¸åäº Popenï¼Process å®ä¾æ²¡æä¸ :meth:`~subprocess.Popen.poll` æ¹æ³ç­ä»·çæ¹æ³ï¼ ç­å¾è¿ç¨ç»ç»ã å°æå°:: 