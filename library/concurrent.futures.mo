Þ    _                      k     W   y  W  Ñ  T  )  Ü  ~	  e   [  Ë   Á  y                  7  6   P  <     =   Ä  d        g  1       ±  1   Ñ        ¢  p   °     !     °     ¶  á   N     0     º     Ã  )  K     u      ¨        Æ  ¯   Ò               ¥  â   ´  >    Ì  Ö  w   £   º   !  <   Ö!  K   "  W   _"  X   ·"    #  «   $     ¾$     Ï$     ã$  "   ÿ$  [   "%  P   ~%  K   Ï%  7   &  P  S&  L  ¤'    ñ(     +  L   &,  f   s,  ì   Ú,  6   Ç-  k   þ-  x   j.  ¦   ã.     /  o  0  l   1     ú1  õ   2  ;  3  l   Ê4  B   75     z5  B   6  W   [6  5  ³6  4   é7     8  f   ©8     9  T   ¨9  ¤   ý9     ¢:     µ:  c   Ð:  ×  4;  Ø   =  º  å=  Û    ?  =   |@  ¿  º@  f   zB  K   áB  U  -C  F  D  £  ÊE  Q   nG  ²   ÀG  h   sH     ÜH     óH     I  0   %I  4   VI  =   I  p   ÉI     :J    XJ     wK  ,   K  «  ÁK  ù  mM  `   gP  `   ÈP     )Q  ¡   /Q  ­   ÑQ     R     S     S  8  S     ÒT  Ò   ]U     0V     ÊV     ÑV     [W     iW     yW  Ø   W    `X    sY  h   ÷Z  ¦   `[  0   \  N   8\  I   \  M   Ñ\  í   ]  ¥   ^     ³^     À^     Ô^  %   ï^  V   _  F   l_  ?   ³_  *   ó_  *  `  '  Ia  º  qb     ,e  ?   Âe  R   f  Ü   Uf  L   2g  b   g  c   âg     Fh  x   Ïh  ;  Hi  P   j     Õj  Ä   gk  :  ,l  T   gm  <   ¼m     ùm  <   n  <   Ãn  (   o  -   )p     Wp  g   ßp  |   Gq  I   Äq     r     §r     ºr  k   Ôr  ß  @s  Ç    u  r  èu  Ê   [w  6   &x   **Source code:** :source:`Lib/concurrent/futures/thread.py` and :source:`Lib/concurrent/futures/process.py` *func* is executed asynchronously and several calls to *func* may be made concurrently. *initializer* is an optional callable that is called at the start of each worker process; *initargs* is a tuple of arguments passed to the initializer.  Should *initializer* raise an exception, all currently pending jobs will raise a :exc:`~concurrent.futures.process.BrokenProcessPool`, as well as any attempt to submit more jobs to the pool. *initializer* is an optional callable that is called at the start of each worker thread; *initargs* is a tuple of arguments passed to the initializer.  Should *initializer* raise an exception, all currently pending jobs will raise a :exc:`~concurrent.futures.thread.BrokenThreadPool`, as well as any attempt to submit more jobs to the pool. *max_tasks_per_child* is an optional argument that specifies the maximum number of tasks a single process can execute before it will exit and be replaced with a fresh worker process. By default *max_tasks_per_child* is ``None`` which means worker processes will live as long as the pool. When a max is specified, the "spawn" multiprocessing start method will be used by default in absence of a *mp_context* parameter. This feature is incompatible with the "fork" start method. *return_when* indicates when this function should return.  It must be one of the following constants: *timeout* can be used to control the maximum number of seconds to wait before returning.  *timeout* can be an int or float.  If *timeout* is not specified or ``None``, there is no limit to the wait time. :class:`ThreadPoolExecutor` is an :class:`Executor` subclass that uses a pool of threads to execute calls asynchronously. :const:`ALL_COMPLETED` :const:`FIRST_COMPLETED` :const:`FIRST_EXCEPTION` :mod:`concurrent.futures` --- Launching parallel tasks :pep:`3148` -- futures - execute computations asynchronously :ref:`Availability <availability>`: not Emscripten, not WASI. A deprecated alias of :exc:`TimeoutError`, raised when a future operation exceeds the given timeout. Added *cancel_futures*. Added callables are called in the order that they were added and are always called in a thread belonging to the process that added them.  If the callable raises an :exc:`Exception` subclass, it will be logged and ignored.  If the callable raises a :exc:`BaseException` subclass, the behavior is undefined. Added the *chunksize* argument. Added the *initializer* and *initargs* arguments. All threads enqueued to ``ThreadPoolExecutor`` will be joined before the interpreter can exit. Note that the exit handler which does this is executed *before* any exit handlers added using ``atexit``. This means exceptions in the main thread must be caught and handled in order to signal threads to exit gracefully. For this reason, it is recommended that ``ThreadPoolExecutor`` not be used for long-running tasks. An :class:`Executor` subclass that executes calls asynchronously using a pool of at most *max_workers* processes.  If *max_workers* is ``None`` or not given, it will default to the number of processors on the machine. If *max_workers* is less than or equal to ``0``, then a :exc:`ValueError` will be raised. On Windows, *max_workers* must be less than or equal to ``61``. If it is not then :exc:`ValueError` will be raised. If *max_workers* is ``None``, then the default chosen will be at most ``61``, even if more processors are available. *mp_context* can be a :mod:`multiprocessing` context or ``None``. It will be used to launch the workers. If *mp_context* is ``None`` or not given, the default :mod:`multiprocessing` context is used. See :ref:`multiprocessing-start-methods`. An :class:`Executor` subclass that uses a pool of at most *max_workers* threads to execute calls asynchronously. An abstract class that provides methods to execute calls asynchronously.  It should not be used directly, but through its concrete subclasses. And:: Attaches the callable *fn* to the future.  *fn* will be called, with the future as its only argument, when the future is cancelled or finishes running. Attempt to cancel the call.  If the call is currently being executed or finished running and cannot be cancelled then the method will return ``False``, otherwise the call will be cancelled and the method will return ``True``. Calling :class:`Executor` or :class:`Future` methods from a callable submitted to a :class:`ProcessPoolExecutor` will result in deadlock. Constant Deadlocks can occur when the callable associated with a :class:`Future` waits on the results of another :class:`Future`.  For example:: Default value of *max_workers* is changed to ``min(32, os.cpu_count() + 4)``. This default value preserves at least 5 workers for I/O bound tasks. It utilizes at most 32 CPU cores for CPU bound tasks which release the GIL. And it avoids using very large resources implicitly on many-core machines. Derived from :exc:`RuntimeError`, this exception class is raised when an executor is broken for some reason, and cannot be used to submit or execute new tasks. Derived from :exc:`~concurrent.futures.BrokenExecutor` (formerly :exc:`RuntimeError`), this exception class is raised when one of the workers of a :class:`ProcessPoolExecutor` has terminated in a non-clean fashion (for example, if it was killed from the outside). Derived from :exc:`~concurrent.futures.BrokenExecutor`, this exception class is raised when one of the workers of a :class:`ThreadPoolExecutor` has failed initializing. Description Encapsulates the asynchronous execution of a callable.  :class:`Future` instances are created by :meth:`Executor.submit` and should not be created directly except for testing. Exception classes Executor Objects Future Objects If *cancel_futures* is ``True``, this method will cancel all pending futures that the executor has not started running. Any futures that are completed or running won't be cancelled, regardless of the value of *cancel_futures*. If *max_workers* is ``None`` or not given, it will default to the number of processors on the machine, multiplied by ``5``, assuming that :class:`ThreadPoolExecutor` is often used to overlap I/O instead of CPU work and the number of workers should be higher than the number of workers for :class:`ProcessPoolExecutor`. If *wait* is ``True`` then this method will not return until all the pending futures are done executing and the resources associated with the executor have been freed.  If *wait* is ``False`` then this method will return immediately and the resources associated with the executor will be freed when all pending futures are done executing.  Regardless of the value of *wait*, the entire Python program will not exit until all pending futures are done executing. If a *func* call raises an exception, then that exception will be raised when its value is retrieved from the iterator. If both *cancel_futures* and *wait* are ``True``, all futures that the executor has started running will be completed prior to this method returning. The remaining futures are cancelled. If the call completed without raising, ``None`` is returned. If the call raised an exception, this method will raise the same exception. If the future has already completed or been cancelled, *fn* will be called immediately. If the future is cancelled before completing then :exc:`.CancelledError` will be raised. If the method returns ``False`` then the :class:`Future` was cancelled, i.e. :meth:`Future.cancel` was called and returned ``True``.  Any threads waiting on the :class:`Future` completing (i.e. through :func:`as_completed` or :func:`wait`) will be woken up. If the method returns ``True`` then the :class:`Future` was not cancelled and has been put in the running state, i.e. calls to :meth:`Future.running` will return ``True``. Module Functions ProcessPoolExecutor ProcessPoolExecutor Example Raised when a future is cancelled. Raised when an operation is performed on a future that is not allowed in the current state. Return ``True`` if the call is currently being executed and cannot be cancelled. Return ``True`` if the call was successfully cancelled or finished running. Return ``True`` if the call was successfully cancelled. Return the exception raised by the call.  If the call hasn't yet completed then this method will wait up to *timeout* seconds.  If the call hasn't completed in *timeout* seconds, then a :exc:`TimeoutError` will be raised.  *timeout* can be an int or float.  If *timeout* is not specified or ``None``, there is no limit to the wait time. Return the value returned by the call. If the call hasn't yet completed then this method will wait up to *timeout* seconds.  If the call hasn't completed in *timeout* seconds, then a :exc:`TimeoutError` will be raised. *timeout* can be an int or float.  If *timeout* is not specified or ``None``, there is no limit to the wait time. Returns an iterator over the :class:`Future` instances (possibly created by different :class:`Executor` instances) given by *fs* that yields futures as they complete (finished or cancelled futures). Any futures given by *fs* that are duplicated will be returned once. Any futures that completed before :func:`as_completed` is called will be yielded first.  The returned iterator raises a :exc:`TimeoutError` if :meth:`~iterator.__next__` is called and the result isn't available after *timeout* seconds from the original call to :func:`as_completed`.  *timeout* can be an int or float. If *timeout* is not specified or ``None``, there is no limit to the wait time. Schedules the callable, *fn*, to be executed as ``fn(*args, **kwargs)`` and returns a :class:`Future` object representing the execution of the callable. :: Sets the result of the work associated with the :class:`Future` to *result*. Sets the result of the work associated with the :class:`Future` to the :class:`Exception` *exception*. Signal the executor that it should free any resources that it is using when the currently pending futures are done executing.  Calls to :meth:`Executor.submit` and :meth:`Executor.map` made after shutdown will raise :exc:`RuntimeError`. Similar to :func:`map(func, *iterables) <map>` except: The *max_tasks_per_child* argument was added to allow users to control the lifetime of workers in the pool. The *mp_context* argument was added to allow users to control the start_method for worker processes created by the pool. The *thread_name_prefix* argument was added to allow users to control the :class:`threading.Thread` names for worker threads created by the pool for easier debugging. The :class:`Future` class encapsulates the asynchronous execution of a callable. :class:`Future` instances are created by :meth:`Executor.submit`. The :class:`ProcessPoolExecutor` class is an :class:`Executor` subclass that uses a pool of processes to execute calls asynchronously. :class:`ProcessPoolExecutor` uses the :mod:`multiprocessing` module, which allows it to side-step the :term:`Global Interpreter Lock <global interpreter lock>` but also means that only picklable objects can be executed and returned. The :mod:`concurrent.futures` module provides a high-level interface for asynchronously executing callables. The ``__main__`` module must be importable by worker subprocesses. This means that :class:`ProcessPoolExecutor` will not work in the interactive interpreter. The asynchronous execution can be performed with threads, using :class:`ThreadPoolExecutor`, or separate processes, using :class:`ProcessPoolExecutor`.  Both implement the same interface, which is defined by the abstract :class:`Executor` class. The default :mod:`multiprocessing` start method (see :ref:`multiprocessing-start-methods`) will change away from *fork* in Python 3.14.  Code that requires *fork* be used for their :class:`ProcessPoolExecutor` should explicitly specify that by passing a ``mp_context=multiprocessing.get_context("fork")`` parameter. The following :class:`Future` methods are meant for use in unit tests and :class:`Executor` implementations. The function will return when all futures finish or are cancelled. The function will return when any future finishes by raising an exception.  If no future raises an exception then it is equivalent to :const:`ALL_COMPLETED`. The function will return when any future finishes or is cancelled. The proposal which described this feature for inclusion in the Python standard library. The returned iterator raises a :exc:`TimeoutError` if :meth:`~iterator.__next__` is called and the result isn't available after *timeout* seconds from the original call to :meth:`Executor.map`. *timeout* can be an int or a float.  If *timeout* is not specified or ``None``, there is no limit to the wait time. This class was made an alias of :exc:`TimeoutError`. This method can only be called once and cannot be called after :meth:`Future.set_result` or :meth:`Future.set_exception` have been called. This method raises :exc:`concurrent.futures.InvalidStateError` if the :class:`Future` is already done. This method should only be called by :class:`Executor` implementations before executing the work associated with the :class:`Future` and by unit tests. This method should only be used by :class:`Executor` implementations and unit tests. This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. ThreadPoolExecutor ThreadPoolExecutor Example ThreadPoolExecutor now reuses idle worker threads before starting *max_workers* worker threads too. Wait for the :class:`Future` instances (possibly created by different :class:`Executor` instances) given by *fs* to complete. Duplicate futures given to *fs* are removed and will be returned only once. Returns a named 2-tuple of sets.  The first set, named ``done``, contains the futures that completed (finished or cancelled futures) before the wait completed.  The second set, named ``not_done``, contains the futures that did not complete (pending or running futures). When one of the worker processes terminates abruptly, a :exc:`BrokenProcessPool` error is now raised.  Previously, behaviour was undefined but operations on the executor or its futures would often freeze or deadlock. When using :class:`ProcessPoolExecutor`, this method chops *iterables* into a number of chunks which it submits to the pool as separate tasks.  The (approximate) size of these chunks can be specified by setting *chunksize* to a positive integer.  For very long iterables, using a large value for *chunksize* can significantly improve performance compared to the default size of 1.  With :class:`ThreadPoolExecutor`, *chunksize* has no effect. You can avoid having to call this method explicitly if you use the :keyword:`with` statement, which will shutdown the :class:`Executor` (waiting as if :meth:`Executor.shutdown` were called with *wait* set to ``True``):: the *iterables* are collected immediately rather than lazily; Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-04 12:28+0000
PO-Revision-Date: 2021-06-28 00:57+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºç :** :source:`Lib/concurrent/futures/thread.py` å :source:`Lib/concurrent/futures/process.py` *func* æ¯å¼æ­¥æ§è¡çï¼å¯¹ *func* çå¤ä¸ªè°ç¨å¯ä»¥å¹¶åæ§è¡ã *initializer* æ¯ä¸ä¸ªå¯éçå¯è°ç¨å¯¹è±¡ï¼å®ä¼å¨æ¯ä¸ªå·¥ä½è¿ç¨å¯å¨æ¶è¢«è°ç¨ï¼*initargs* æ¯ä¼ ç» initializer çåæ°åç»ã å¦æ *initializer* å¼åäºå¼å¸¸ï¼åææå½åå¨ç­å¾çä»»å¡ä»¥åä»»ä½åè¿ç¨æ± æäº¤æ´å¤ä»»å¡çå°è¯é½å°å¼å :exc:`~concurrent.futures.process.BrokenProcessPool`ã *initializer* æ¯å¨æ¯ä¸ªå·¥ä½èçº¿ç¨å¼å§å¤è°ç¨çä¸ä¸ªå¯éå¯è°ç¨å¯¹è±¡ã *initargs* æ¯ä¼ éç»åå§åå¨çåç»åæ°ãä»»ä½åæ± æäº¤æ´å¤å·¥ä½çå°è¯ï¼ *initializer* é½å°å¼åä¸ä¸ªå¼å¸¸ï¼å½åææç­å¾çå·¥ä½é½ä¼å¼åä¸ä¸ª :exc:`~concurrent.futures.thread.BrokenThreadPool`ã *max_tasks_per_child* æ¯æå®åä¸ªè¿ç¨å¨å¶éåºå¹¶æ¿æ¢ä¸ºæ°å·¥ä½è¿ç¨ä¹åå¯ä»¥æ§è¡çæå¤§ä»»å¡æ°éçå¯éåæ°ã å¨é»è®¤æåµä¸ *max_tasks_per_child* ä¸º ``None`` è¡¨ç¤ºå·¥ä½è¿ç¨å°å­æ´»ä¸è¿ç¨æ± ä¸æ ·é¿çæ¶é´ã å½æå®äºæå¤§æ°éæ¶ï¼åå¦æä¸å­å¨ *mp_context* å½¢ååå°é»è®¤ä½¿ç¨ "spawn" å¤è¿ç¨å¯å¨æ¹æ³ã æ­¤ç¹æ§ä¸è½å¼å®¹ "fork" å¯å¨æ¹æ³ã *return_when* æå®æ­¤å½æ°åºå¨ä½æ¶è¿åãå®å¿é¡»ä¸ºä»¥ä¸å¸¸æ°ä¹ä¸: *timeout* å¯ä»¥ç¨æ¥æ§å¶è¿ååæå¤§çç­å¾ç§æ°ã *timeout* å¯ä»¥ä¸º int æ float ç±»åã å¦æ *timeout* æªæå®æä¸º ``None`` ï¼åä¸éå¶ç­å¾æ¶é´ã :class:`ThreadPoolExecutor` æ¯ :class:`Executor` çå­ç±»ï¼å®ä½¿ç¨çº¿ç¨æ± æ¥å¼æ­¥æ§è¡è°ç¨ã :const:`ALL_COMPLETED` :const:`FIRST_COMPLETED` :const:`FIRST_EXCEPTION` :mod:`concurrent.futures` --- å¯å¨å¹¶è¡ä»»å¡ :pep:`3148` -- future å¯¹è±¡ - å¼æ­¥æ§è¡æä»¤ã :ref:`å¯ç¨æ§ <availability>`: é Emscriptenï¼é WASIã :exc:`TimeoutError` çä¸ä¸ªå·²è¢«å¼ç¨çå«åï¼ä¼å¨ future æä½è¶åºäºç»å®çæ¶éæ¶è¢«å¼åã å¢å äº *cancel_futures*ã å å¥çå¯è°ç¨å¯¹è±¡æ»è¢«å±äºæ·»å å®ä»¬çè¿ç¨ä¸­ççº¿ç¨æå å¥çé¡ºåºè°ç¨ãå¦æå¯è°ç¨å¯¹è±¡å¼åä¸ä¸ª :exc:`Exception` å­ç±»ï¼å®ä¼è¢«è®°å½ä¸æ¥å¹¶è¢«å¿½ç¥æãå¦æå¯è°ç¨å¯¹è±¡å¼åä¸ä¸ª :exc:`BaseException` å­ç±»ï¼è¿ä¸ªè¡ä¸ºæ²¡æå®ä¹ã å å¥ *chunksize* åæ°ã å å¥ *initializer* å*initargs* åæ°ã æææå¥ ``ThreadPoolExecutor`` çéåççº¿ç¨å°å¨è§£éå¨éåºä¹åè¢«åå¹¶ã è¯·æ³¨ææ§è¡æ­¤æä½çéåºå¤çå¥æä¼å¨å¨ä»»ä½ä½¿ç¨ ``atexit`` æ·»å çéåºå¤çå¥æ *ä¹å* è¢«æ§è¡ã è¿æå³çä¸»çº¿ç¨ä¸­çå¼å¸¸å¿é¡»è¢«æè·åå¤çä»¥ä¾¿åçº¿ç¨ååºä¿¡å·ä½¿å¶è½å¤ä¼éå°éåºã ç±äºè¿ä¸ªåçï¼å»ºè®®ä¸è¦å° ``ThreadPoolExecutor`` ç¨äºé¿æè¿è¡çä»»å¡ã å¼æ­¥å°æ§è¡è°ç¨ç :class:`Executor` å­ç±»ä½¿ç¨æå¤ *max_workers* ä¸ªè¿ç¨çè¿ç¨æ± ã å¦æ *max_workers* ä¸º ``None`` ææªç»åºï¼å®å°é»è®¤ä¸ºæºå¨çå¤çå¨ä¸ªæ°ã å¦æ *max_workers* å°äºç­äº ``0``ï¼åå°å¼å :exc:`ValueError`ã å¨ Windows ä¸ï¼*max_workers* å¿é¡»å°äºç­äº ``61``ã å¦æä¸æ¯è¿æ ·åå°å¼å :exc:`ValueError`ã å¦æ *max_workers* ä¸º ``None``ï¼åéæ©çé»è®¤å¼æå¤ä¸º ``61``ï¼å³ä½¿å­å¨æ´å¤çå¤çå¨ã *mp_context* å¯ä»¥æ¯ä¸ä¸ª :mod:`multiprocessing` ä¸ä¸æææ¯ ``None``ã å®å°è¢«ç¨æ¥å¯å¨å·¥ä½è¿ç¨ã å¦æ *mp_context* ä¸º ``None`` ææªç»åºï¼åå°ä½¿ç¨é»è®¤ç :mod:`multiprocessing` ä¸ä¸æã åè§ :ref:`multiprocessing-start-methods`ã :class:`Executor` å­ç±»ä½¿ç¨æå¤ *max_workers* ä¸ªçº¿ç¨ççº¿ç¨æ± æ¥å¼æ­¥æ§è¡è°ç¨ã æ½è±¡ç±»æä¾å¼æ­¥æ§è¡è°ç¨æ¹æ³ãè¦éè¿å®çå­ç±»è°ç¨ï¼èä¸æ¯ç´æ¥è°ç¨ã ä¸:: éå å¯è°ç¨ *fn* å° future å¯¹è±¡ãå½ future å¯¹è±¡è¢«åæ¶æå®æè¿è¡æ¶ï¼å°ä¼è°ç¨ *fn*ï¼èè¿ä¸ª future å¯¹è±¡å°ä½ä¸ºå®å¯ä¸çåæ°ã å°è¯åæ¶è°ç¨ã å¦æè°ç¨æ­£å¨æ§è¡æå·²ç»æè¿è¡ä¸è½è¢«åæ¶åè¯¥æ¹æ³å°è¿å ``False``ï¼å¦åè°ç¨ä¼è¢«åæ¶å¹¶ä¸è¯¥æ¹æ³å°è¿å ``True``ã ä»å¯è°ç¨å¯¹è±¡ä¸­è°ç¨ :class:`Executor` æ :class:`Future` çæ¹æ³æäº¤ç» :class:`ProcessPoolExecutor` ä¼å¯¼è´æ­»éã å¸¸é å½å¯è°ç¨å¯¹è±¡å·²å³èäºä¸ä¸ª :class:`Future` ç¶åå¨ç­å¾å¦ä¸ä¸ª :class:`Future` çç»ææ¶å°±ä¼å¯¼è´æ­»éæåµãä¾å¦:: *max_workers* çé»è®¤å¼å·²æ¹ä¸º ``min(32, os.cpu_count() + 4)``ã è¿ä¸ªé»è®¤å¼ä¼ä¿çè³å° 5 ä¸ªå·¥ä½çº¿ç¨ç¨äº I/O å¯éåä»»å¡ã å¯¹äºé£äºéæ¾äº GIL ç CPU å¯éåä»»å¡ï¼å®æå¤ä¼ä½¿ç¨ 32 ä¸ª CPU æ ¸å¿ãè¿æ ·è½å¤é¿åå¨å¤æ ¸æºå¨ä¸ä¸ç¥ä¸è§å°ä½¿ç¨å¤§éèµæºã å½æ§è¡å¨è¢«æäºåå ä¸­æ­èä¸ä¸è½ç¨æ¥æäº¤ææ§è¡æ°ä»»å¡æ¶å°±ä¼è¢«å¼åæ´¾çäº :exc:`RuntimeError` çå¼å¸¸ç±»ã å½ :class:`ThreadPoolExecutor` ä¸­çå¶ä¸­ä¸ä¸ªå·¥ä½èä¸å®æ´ç»æ­¢æ¶(æ¯å¦ï¼è¢«å¤é¨ææ­»)ä¼å¼åæ´¾çäº :exc:`~concurrent.futures.BrokenExecutor` ( åå :exc:`RuntimeError` ) çå¼å¸¸ç±»ã å½ :class:`ThreadPoolExecutor` ä¸­çå¶ä¸­ä¸ä¸ªå·¥ä½èåå§åå¤±è´¥æ¶ä¼å¼åæ´¾çäº :exc:`~concurrent.futures.BrokenExecutor` çå¼å¸¸ç±»ã æè¿° å°å¯è°ç¨å¯¹è±¡å°è£ä¸ºå¼æ­¥æ§è¡ã:class:`Future` å®ä¾ç± :meth:`Executor.submit` åå»ºï¼é¤éæµè¯ï¼ä¸åºç´æ¥åå»ºã Exception ç±» Executor å¯¹è±¡ Future å¯¹è±¡ å¦æ *cancel_futures* ä¸º ``True``ï¼æ­¤æ¹æ³å°åæ¶æææ§è¡å¨è¿æªå¼å§è¿è¡çæèµ·ç Futureãæ è®º *cancel_futures* çå¼æ¯ä»ä¹ï¼ä»»ä½å·²å®æææ­£å¨è¿è¡ç Future é½ä¸ä¼è¢«åæ¶ã å¦æ *max_workers* ä¸º ``None`` ææ²¡ææå®ï¼å°é»è®¤ä¸ºæºå¨å¤çå¨çä¸ªæ°ï¼åå¦ :class:`ThreadPoolExecutor` ä¾§éäºI/Oæä½èä¸æ¯CPUè¿ç®ï¼é£ä¹å¯ä»¥ä¹ä»¥ ``5`` ï¼åæ¶å·¥ä½çº¿ç¨çæ°éå¯ä»¥æ¯ :class:`ProcessPoolExecutor` çæ°éé«ã å¦æ *wait* ä¸º ``True`` åæ­¤æ¹æ³åªæå¨ææå¾æ§è¡ç future å¯¹è±¡å®ææ§è¡ä¸éæ¾å·²åéçèµæºåæä¼è¿åã å¦æ *wait* ä¸º ``False``ï¼æ¹æ³ç«å³è¿åï¼ææå¾æ§è¡ç future å¯¹è±¡å®ææ§è¡åä¼éæ¾å·²åéçèµæºã ä¸ç®¡ *wait* çå¼æ¯ä»ä¹ï¼æ´ä¸ª Python ç¨åºå°ç­å°ææå¾æ§è¡ç future å¯¹è±¡å®ææ§è¡åæéåºã å¦æ *func* è°ç¨å¼åä¸ä¸ªå¼å¸¸ï¼å½ä»è¿­ä»£å¨ä¸­ååå®çå¼æ¶è¿ä¸ªå¼å¸¸å°è¢«å¼åã å¦æ *cancel_futures* å *wait* åä¸º ``True``ï¼åæ§è¡å¨å·²å¼å§è¿è¡çææ Future å°å¨æ­¤æ¹æ³è¿åä¹åå®æã å¶ä½ç Future ä¼è¢«åæ¶ã å¦æè°ç¨æ­£å¸¸å®æé£ä¹è¿å ``None``ã å¦æè°ç¨å¼åäºä¸ä¸ªå¼å¸¸ï¼è¿ä¸ªæ¹æ³ä¹ä¼å¼ååæ ·çå¼å¸¸ã å¦æ future å¯¹è±¡å·²ç»å®ææå·²åæ¶ï¼*fn* ä¼è¢«ç«å³è°ç¨ã å¦æ future å¨å®æåè¢«åæ¶å :exc:`.CancelledError` å°è¢«è§¦åã å¦ææ­¤æ¹æ³è¿å ``False`` å :class:`Future` å·²è¢«åæ¶ï¼å³ :meth:`Future.cancel` å·²è¢«è°ç¨å¹¶è¿å ``True``ã ä»»ä½ç­å¾ :class:`Future` å®æ (å³éè¿ :func:`as_completed` æ :func:`wait`) ççº¿ç¨å°è¢«å¤éã å¦ææ­¤æ¹æ³è¿å ``True`` å :class:`Future` æ²¡æè¢«åæ¶å¹¶å·²è¢«ç½®ä¸ºæ­£å¨è¿è¡çç¶æï¼å³å¯¹ :meth:`Future.running` çè°ç¨å°è¿å ``True``ã æ¨¡åå½æ° ProcessPoolExecutor ProcessPoolExecutor ä¾å­ future å¯¹è±¡è¢«åæ¶æ¶ä¼è§¦åã å½æä¸ªæä½å¨ä¸ä¸ªå½åç¶ææä¸åè®¸ç future ä¸æ§è¡æ¶å°è¢«å¼åã å¦æè°ç¨æ­£å¨æ§è¡èä¸ä¸è½è¢«åæ¶é£ä¹è¿å ``True`` ã å¦æè°ç¨å·²è¢«åæ¶ææ­£å¸¸ç»æé£ä¹è¿å ``True``ã å¦æè°ç¨æååæ¶è¿å ``True``ã è¿åè°ç¨æå¼åçå¼å¸¸ã å¦æè°ç¨å°æªå®æåæ­¤æ¹æ³å°ç­å¾è³å¤ *timeout* ç§ã å¦æè°ç¨å¨ *timeout* ç§åä»æªå®æï¼åå°å¼å :exc:`TimeoutError`ã *timeout* å¯ä»¥ä¸ºæ´æ°ææµ®ç¹æ°ã å¦æ *timeout* æªæå®æä¸º ``None``ï¼åä¸éå¶ç­å¾æ¶é´ã è¿åè°ç¨æè¿åçå¼ã å¦æè°ç¨å°æªå®æåæ­¤æ¹æ³å°ç­å¾è³å¤ *timeout* ç§ã å¦æè°ç¨å¨ *timeout* ç§åä»æªå®æï¼åå°å¼å :exc:`TimeoutError`ã *timeout* å¯ä»¥ä¸ºæ´æ°ææµ®ç¹æ°ã å¦æ *timeout* æªæå®æä¸º ``None``ï¼åä¸éå¶ç­å¾æ¶é´ã è¿åä¸ä¸ªåå« *fs* æç»åºç :class:`Future` å®ä¾ï¼å¯è½ç±ä¸åç :class:`Executor` å®ä¾åå»ºï¼çè¿­ä»£å¨ï¼è¿äºå®ä¾ä¼å¨å®ææ¶äº§ç future å¯¹è±¡ï¼åæ¬æ­£å¸¸ç»ææè¢«åæ¶ç future å¯¹è±¡ï¼ã ä»»ä½ç± *fs* ç»åºçéå¤ç future å¯¹è±¡å°åªè¢«è¿åä¸æ¬¡ã ä»»ä½å¨ :func:`as_completed` è¢«è°ç¨ä¹åå®æç future å¯¹è±¡å°ä¼åè¢«äº§çã å¦æ :meth:`~iterator.__next__` è¢«è°ç¨å¹¶ä¸å¨å¯¹ :func:`as_completed` çåå§è°ç¨ *timeout* ç§ä¹åå¶ç»æä»ä¸å¯ç¨åæè¿åçè¿­ä»£å¨å°å¼å :exc:`TimeoutError`ã *timeout* å¯ä»¥ä¸ºæ´æ°ææµ®ç¹æ°ã å¦æ *timeout* æªæå®æä¸º ``None``ï¼åä¸éå¶ç­å¾æ¶é´ã è°åº¦å¯è°ç¨å¯¹è±¡ *fn*ï¼ä»¥ ``fn(*args, **kwargs)`` æ¹å¼æ§è¡å¹¶è¿åä¸ä¸ªä»£è¡¨è¯¥å¯è°ç¨å¯¹è±¡çæ§è¡ç :class:`Future` å¯¹è±¡ã :: è®¾ç½®å° :class:`Future` å³èå·¥ä½çç»æç» *result* ã è®¾ç½® :class:`Future` å³èå·¥ä½çç»æç» :class:`Exception` *exception* ã å½å¾æ§è¡ç future å¯¹è±¡å®ææ§è¡ååæ§è¡èåéä¿¡å·ï¼å®å°±ä¼éæ¾æ­£å¨ä½¿ç¨çä»»ä½èµæºã å¨å³é­åè°ç¨ :meth:`Executor.submit` å :meth:`Executor.map` å°ä¼å¼å :exc:`RuntimeError`ã ç±»ä¼¼äº :func:`map(func, *iterables) <map>` å½æ°ï¼é¤äºä»¥ä¸ä¸¤ç¹ï¼ å¢å äº *max_tasks_per_child* åæ°ä»¥åè®¸ç¨æ·æ§å¶è¿ç¨æ± ä¸­å·¥ä½è¿ç¨ççå½æã æ·»å  *mp_context* åæ°åè®¸ç¨æ·æ§å¶ç±è¿ç¨æ± åå»ºç»å·¥ä½èè¿ç¨çå¼å§æ¹æ³ ã æ·»å  *thread_name_prefix* åæ°åè®¸ç¨æ·æ§å¶ç±çº¿ç¨æ± åå»ºç :class:`threading.Thread` å·¥ä½çº¿ç¨åç§°ä»¥æ¹ä¾¿è°è¯ã :class:`Future` ç±»å°å¯è°ç¨å¯¹è±¡å°è£ä¸ºå¼æ­¥æ§è¡ã:class:`Future` å®ä¾ç± :meth:`Executor.submit` åå»ºã :class:`ProcessPoolExecutor` ç±»æ¯ :class:`Executor` çå­ç±»ï¼å®ä½¿ç¨è¿ç¨æ± æ¥å¼æ­¥å°æ§è¡è°ç¨ã :class:`ProcessPoolExecutor` ä¼ä½¿ç¨ :mod:`multiprocessing` æ¨¡åï¼è¿åè®¸å®ç»è¿ :term:`å¨å±è§£éå¨é <global interpreter lock>` ä½ä¹æå³çåªå¯ä»¥å¤çåè¿åå¯å°å­çå¯¹è±¡ã :mod:`concurrent.futures` æ¨¡åæä¾å¼æ­¥æ§è¡å¯è°ç¨å¯¹è±¡é«å±æ¥å£ã ``__main__`` æ¨¡åå¿é¡»å¯ä»¥è¢«å·¥ä½èå­è¿ç¨å¯¼å¥ãè¿æå³ç :class:`ProcessPoolExecutor` ä¸å¯ä»¥å·¥ä½å¨äº¤äºå¼è§£éå¨ä¸­ã å¼æ­¥æ§è¡å¯ä»¥ç± :class:`ThreadPoolExecutor` ä½¿ç¨çº¿ç¨æç± :class:`ProcessPoolExecutor` ä½¿ç¨åç¬çè¿ç¨æ¥å®ç°ã ä¸¤èé½æ¯å®ç°æ½è±¡ç±» :class:`Executor` å®ä¹çæ¥å£ã å¨ Python 3.14 ä¸­é»è®¤ç :mod:`multiprocessing` å¯å¨æ¹æ³ (åè§ :ref:`multiprocessing-start-methods`) å°æ¹ä¸ºä¸åä½¿ç¨ *fork*ã éè¦ä¸ºå¶ :class:`ProcessPoolExecutor` ä½¿ç¨ *fork* çä»£ç åºå½éè¿ä¼ å¥ ``mp_context=multiprocessing.get_context("fork")`` å½¢åæ¥æ¾å¼å°ææè¿ä¸ç¹ã ä¸é¢è¿äº :class:`Future` æ¹æ³ç¨äºååæµè¯å :class:`Executor` å®ç°ã å½æ°å°å¨ææå¯ç­å¾å¯¹è±¡ç»ææåæ¶æ¶è¿åã å½æ°å°å¨ä»»æå¯ç­å¾å¯¹è±¡å å¼åå¼å¸¸èç»ææ¶è¿åãå½æ²¡æå¼åä»»ä½å¼å¸¸æ¶å®å°±ç¸å½äº :const:`ALL_COMPLETED`ã å½æ°å°å¨ä»»æå¯ç­å¾å¯¹è±¡ç»ææåæ¶æ¶è¿åã è¯¥ææ¡æè¿°äºPythonæ ååºä¸­åå«çè¿ä¸ªç¹æ§ã å¦æ :meth:`~iterator.__next__` è¢«è°ç¨ä¸ä»å¯¹ :meth:`Executor.map` åå§è°ç¨ *timeout* ç§ä¹åå¶ç»æè¿ä¸å¯ç¨åå·²è¿åçè¿­ä»£å¨å°å¼å :exc:`TimeoutError`ã *timeout* å¯ä»¥æ¯æ´æ°ææµ®ç¹æ°ã å¦æ *timeout* æªæå®æä¸º ``None``ï¼åä¸éå¶ç­å¾æ¶é´ã è¿ä¸ªç±»æ¯ :exc:`TimeoutError` çå«åã è¿ä¸ªæ¹æ³åªå¯ä»¥è¢«è°ç¨ä¸æ¬¡å¹¶ä¸ä¸è½å¨è°ç¨ :meth:`Future.set_result` æ :meth:`Future.set_exception` ä¹ååè°ç¨ã å¦æ :class:`Future` å·²ç»å®æåæ­¤æ¹æ³ä¼å¼å :exc:`concurrent.futures.InvalidStateError`ã è¿ä¸ªæ¹æ³åªå¯ä»¥å¨æ§è¡å³è :class:`Future`  å·¥ä½ä¹åç± :class:`Executor` å®ç°è°ç¨æç±åæµè¯è°ç¨ã è¿ä¸ªæ¹æ³åªå¯ä»¥ç± :class:`Executor` å®ç°åååæµè¯ä½¿ç¨ã æ­¤æ¨¡åå¨ WebAssembly å¹³å° ``wasm32-emscripten`` å ``wasm32-wasi`` ä¸ä¸éç¨æä¸å¯ç¨ã è¯·åé :ref:`wasm-availability` äºè§£è¯¦æã ThreadPoolExecutor ThreadPoolExecutor ä¾å­ ç°å¨ ThreadPoolExecutor å¨å¯å¨ *max_workers* ä¸ªå·¥ä½çº¿ç¨ä¹åä¹ä¼éç¨ç©ºé²çå·¥ä½çº¿ç¨ã ç­å¾ç± *fs* æå®ç :class:`Future` å®ä¾ï¼å¯è½ç±ä¸åç :class:`Executor` å®ä¾åå»ºï¼å®æã éå¤ä¼ ç» *fs* ç future ä¼è¢«ç§»é¤å¹¶å°åªè¿åä¸æ¬¡ã è¿åä¸ä¸ªç±éåç»æçå·å 2 åç»ã ç¬¬ä¸ä¸ªéåçåç§°ä¸º ``done``ï¼åå«å¨ç­å¾å®æä¹åå·²å®æç futureï¼åæ¬æ­£å¸¸ç»ææè¢«åæ¶ç futureï¼ã ç¬¬äºä¸ªéåçåç§°ä¸º ``not_done``ï¼åå«æªå®æç futureï¼åæ¬æèµ·çææ­£å¨è¿è¡ç futureï¼ã å¦æå¶ä¸­ä¸ä¸ªå·¥ä½è¿ç¨è¢«çªç¶ç»æ­¢ï¼:exc:`BrokenProcessPool` å°±ä¼é©¬ä¸è§¦åã å¯é¢è®¡çè¡ä¸ºæ²¡æå®ä¹ï¼ä½æ§è¡å¨ä¸çæä½æå®ç future å¯¹è±¡ä¼è¢«å»ç»ææ­»éã ä½¿ç¨ :class:`ProcessPoolExecutor` æ¶ï¼è¿ä¸ªæ¹æ³ä¼å° *iterables* åå²ä»»å¡åå¹¶ä½ä¸ºç¬ç«çä»»å¡å¹¶æäº¤å°æ§è¡æ± ä¸­ãè¿äºåçå¤§æ¦æ°éå¯ä»¥ç± *chunksize* æå®æ­£æ´æ°è®¾ç½®ã å¯¹å¾é¿çè¿­ä»£å¨æ¥è¯´ï¼ä½¿ç¨å¤§ç *chunksize* å¼æ¯é»è®¤å¼ 1 è½æ¾èå°æé«æ§è½ã *chunksize* å¯¹ :class:`ThreadPoolExecutor` æ²¡æææã å¦æä½¿ç¨ :keyword:`with` è¯­å¥ï¼ä½ å°±å¯ä»¥é¿åæ¾å¼è°ç¨è¿ä¸ªæ¹æ³ï¼å®å°ä¼åæ­¢ :class:`Executor` (å°±å¥½å :meth:`Executor.shutdown` è°ç¨æ¶ *wait* è®¾ä¸º ``True`` ä¸æ ·ç­å¾):: *iterables* æ¯ç«å³æ§è¡èä¸æ¯å»¶è¿æ§è¡çï¼ 