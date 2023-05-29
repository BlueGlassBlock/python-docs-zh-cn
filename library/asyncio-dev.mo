��    +      t              �  c   �  &  1  @  X  �   �  L   h  �   �  i   �  �   �     �     �  
   �     	  !   #	     E	  #   ]	  �   �	  6   o
     �
  �   �
  �   L     �       .        E  G   [  �   �  P   {  b   �  a   /  4   �  `  �  I   '  ]   q  }   �  �   M  3     �   A       �   4  a   �  �   0  �   �  �  �  X   N    �  B  �  �   �  3   �  �   �  k   �  �   �  !   �     �     �  !   �          2     E  �   `  +   ,     X  �   e  �         �      �   4   �      �   @   !  �   R!  K   A"  T   �"  U   �"  .   8#  4  g#  E   �%  W   �%  w   :&  �   �&  .   `'  �   �'     o(  �   �(  e   )  �   z)  �   *   :ref:`Enable the debug mode <asyncio-debug-mode>` to get the traceback where the task was created:: Almost all asyncio objects are not thread safe, which is typically not a problem unless there is code that works with them from outside of a Task or a callback.  If there's a need for such code to call a low-level asyncio API, the :meth:`loop.call_soon_threadsafe` method should be used, e.g.:: An event loop runs in a thread (typically the main thread) and executes all callbacks and Tasks in its thread.  While a Task is running in the event loop, no other Tasks can run in the same thread.  When a Task executes an ``await`` expression, the running Task gets suspended, and the event loop executes the next Task. An executor can be used to run a task in a different thread or even in a different process to avoid blocking the OS thread with the event loop.  See the :meth:`loop.run_in_executor` method for more details. Asynchronous programming is different from classic "sequential" programming. Blocking (CPU-bound) code should not be called directly.  For example, if a function performs a CPU-intensive calculation for 1 second, all concurrent asyncio Tasks and IO operations would be delayed by 1 second. By default asyncio runs in production mode.  In order to ease the development asyncio has a *debug mode*. Callbacks taking longer than 100 milliseconds are logged.  The :attr:`loop.slow_callback_duration` attribute can be used to set the minimum execution duration in seconds that is considered "slow". Calling :meth:`loop.set_debug`. Concurrency and Multithreading Debug Mode Detect never-awaited coroutines Detect never-retrieved exceptions Developing with asyncio Example of an unhandled exception:: If a :meth:`Future.set_exception` is called but the Future object is never awaited on, the exception would never be propagated to the user code.  In this case, asyncio would emit a log message when the Future object is garbage collected. In addition to enabling the debug mode, consider also: Logging Many non-threadsafe asyncio APIs (such as :meth:`loop.call_soon` and :meth:`loop.call_at` methods) raise an exception if they are called from a wrong thread. Network logging can block the event loop. It is recommended to use a separate thread for handling logs or use non-blocking IO. For example, see :ref:`blocking-handlers`. Output in debug mode:: Output:: Passing ``debug=True`` to :func:`asyncio.run`. Running Blocking Code Setting the :envvar:`PYTHONASYNCIODEBUG` environment variable to ``1``. The :meth:`loop.run_in_executor` method can be used with a :class:`concurrent.futures.ThreadPoolExecutor` to execute blocking code in a different OS thread without blocking the OS thread that the event loop runs in. The default log level is :py:data:`logging.INFO`, which can be easily adjusted:: The execution time of the I/O selector is logged if it takes too long to perform an I/O operation. The usual fix is to either await the coroutine or call the :meth:`asyncio.create_task` function:: There are several ways to enable asyncio debug mode: There is currently no way to schedule coroutines or callbacks directly from a different process (such as one started with :mod:`multiprocessing`). The :ref:`asyncio-event-loop-methods` section lists APIs that can read from pipes and watch file descriptors without blocking the event loop. In addition, asyncio's :ref:`Subprocess <asyncio-subprocess>` APIs provide a way to start a process and communicate with it from the event loop. Lastly, the aforementioned :meth:`loop.run_in_executor` method can also be used with a :class:`concurrent.futures.ProcessPoolExecutor` to execute code in a different process. This page lists common mistakes and traps and explains how to avoid them. To handle signals and to execute subprocesses, the event loop must be run in the main thread. To schedule a :term:`callback` from another OS thread, the :meth:`loop.call_soon_threadsafe` method should be used. Example:: To schedule a coroutine object from a different OS thread, the :func:`run_coroutine_threadsafe` function should be used. It returns a :class:`concurrent.futures.Future` to access the result:: Using the :ref:`Python Development Mode <devmode>`. When a coroutine function is called, but not awaited (e.g. ``coro()`` instead of ``await coro()``) or the coroutine is not scheduled with :meth:`asyncio.create_task`, asyncio will emit a :exc:`RuntimeWarning`:: When the debug mode is enabled: asyncio checks for :ref:`coroutines that were not awaited <asyncio-coroutine-not-scheduled>` and logs them; this mitigates the "forgotten await" pitfall. asyncio uses the :mod:`logging` module and all logging is performed via the ``"asyncio"`` logger. configuring the :mod:`warnings` module to display :exc:`ResourceWarning` warnings.  One way of doing that is by using the :option:`-W` ``default`` command line option. setting the log level of the :ref:`asyncio logger <asyncio-logger>` to :py:data:`logging.DEBUG`, for example the following snippet of code can be run at startup of the application:: Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:54+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :ref:`激活调试模式 <asyncio-debug-mode>` 以获取任务创建处的跟踪信息:: 几乎所有异步对象都不是线程安全的，这通常不是问题，除非在任务或回调函数之外有代码可以使用它们。如果需要这样的代码来调用低级异步API，应该使用 :meth:`loop.call_soon_threadsafe` 方法，例如:: 事件循环在线程中运行(通常是主线程)，并在其线程中执行所有回调和任务。当一个任务在事件循环中运行时，没有其他任务可以在同一个线程中运行。当一个任务执行一个 ``await`` 表达式时，正在运行的任务被挂起，事件循环执行下一个任务。 可以用执行器在不同的线程甚至不同的进程中运行任务，以避免使用事件循环阻塞 OS 线程。 请参阅 :meth:`loop.run_in_executor` 方法了解详情。 异步编程与传统的“顺序”编程不同。 不应该直接调用阻塞( CPU 绑定)代码。例如，如果一个函数执行1秒的 CPU 密集型计算，那么所有并发异步任务和 IO 操作都将延迟1秒。 默认情况下，asyncio以生产模式运行。为了简化开发，asyncio还有一种*debug 模式* 。 执行时间超过 100 毫秒的回调会被写入日志。 :attr:`loop.slow_callback_duration` 属性可用于设置以秒为单位的将被视为“缓慢”的最小执行持续时间。 调用 :meth:`loop.set_debug` 。 并发性和多线程 Debug 模式 检测 never-awaited 协同程序 检测就再也没异常 用 asyncio 开发 未处理异常的例子:: 如果调用 :meth:`Future.set_exception` ，但不等待 Future 对象，将异常传播到用户代码。在这种情况下，当 Future 对象被垃圾收集时，asyncio将发出一条日志消息。 除了启用调试模式外，还要考虑: 日志记录 许多非线程安全的异步 APIs (例如 :meth:`loop.call_soon` 和 :meth:`loop.call_at` 方法)，如果从错误的线程调用，则会引发异常。 网络日志会阻塞事件循环。 建议使用一个单独进程来处理日志或者使用非阻塞式 IO。 例如，可以参阅 :ref:`blocking-handlers`。 调试模式的输出:: 输出:: 将 ``debug=True`` 传递给 :func:`asyncio.run` 。 运行阻塞的代码 将 :envvar:`PYTHONASYNCIODEBUG` 环境变量设置为 ``1`` 。 方法 :meth:`loop.run_in_executor` 可以和 :class:`concurrent.futures.ThreadPoolExecutor` 一起使用，用于在一个不同的操作系统线程中执行阻塞代码，并避免阻塞运行事件循环的那个操作系统线程。 默认日志级别是 :py:data:`logging.INFO` 。可以很容易地调整:: 如果执行I/O操作花费的时间太长，则记录I/O选择器的执行时间。 通常的修复方法是等待协程或者调用 :meth:`asyncio.create_task` 函数:: 有几种方法可以启用异步调试模式: 目前没有办法直接从另一个进程（如使用 :mod:`multiprocessing` 启动的进程）安排协程或回调。 :ref:`asyncio-event-loop-methods` 小节列出了一些可以从管道读取并监视文件描述符而不会阻塞事件循环的 API。 此外，asyncio 的 :ref:`子进程 <asyncio-subprocess>` API 提供了一种启动进程并在事件循环中与其通信的办法。 最后，之前提到的 :meth:`loop.run_in_executor` 方法也可以配合 :class:`concurrent.futures.ProcessPoolExecutor` 使用以在另一个进程中执行代码。 本页列出常见的错误和陷阱，并解释如何避免它们。 为了能够处理信号和执行子进程，事件循环必须运行于主线程中。 要调度来自另一 OS 线程的 :term:`callback`，应该使用 :meth:`loop.call_soon_threadsafe` 方法。 例如:: 要从不同的OS线程调度一个协程对象，应该使用 :func:`run_coroutine_threadsafe` 函数。它返回一个 :class:`concurrent.futures.Future` 。查询结果:: 使用 :ref:`Python 开发模式 <devmode>`。 当协程函数被调用而不是被等待时 (即执行 ``coro()`` 而不是 ``await coro()``) 或者协程没有通过 :meth:`asyncio.create_task` 被排入计划日程，asyncio 将会发出一条 :exc:`RuntimeWarning`:: 启用调试模式时: asyncio 检查 :ref:`未被等待的协程 <asyncio-coroutine-not-scheduled>` 并记录他们；这将消除“被遗忘的等待”问题。 asyncio使用 :mod:`logging` 模块，所有日志记录都是通过 ``"asyncio"`` logger执行的。 配置 :mod:`warnings` 模块以显示 :exc:`ResourceWarning` 警告。一种方法是使用 :option:`-W` ``default`` 命令行选项。 将 :ref:`asyncio logger <asyncio-logger>` 的日志级别设置为 :py:data:`logging.DEBUG`，例如，下面的代码片段可以在应用程序启动时运行:: 