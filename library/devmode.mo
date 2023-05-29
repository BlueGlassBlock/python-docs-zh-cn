��    2      �              <     =     W      l     �  e   �  !   
     ,     <  -   M  �   {  �   ,  �     &   �  '   �  �   �  O   �  w   �  a   H  R   �  6   �  W   4	  U   �	  K   �	  �   .
  �   �
     Z  m   y    �     �       ,   -  1   Z  3   �  O   �  b     >   s  B   �  �   �  �    �   2  �   �  �   �  J   V  a   �  �     �   �     .  �   F  A  �  �       �     �           /  p   F     �     �     �  4   �  �   (  �   �  �   �     ^     {  ~   �  S     e   n  B   �  M     <   e  H   �  F   �  E   2  �   x  �   �     �   h   �   �   !     �!     "  !   "  8   :"  3   s"  N   �"  U   �"  J   L#  T   �#  z   �#  T  g$  �   �%  �   T&  �   M'  Q   �'  s   #(  �   �(  �   ()     �)  �   �)  9  f*   :exc:`DeprecationWarning` :exc:`ImportWarning` :exc:`PendingDeprecationWarning` :exc:`ResourceWarning` Add ``default`` :ref:`warning filter <describing-warning-filters>`. The following warnings are shown: Bad file descriptor error example Buffer overflow Buffer underflow By default, Python does not emit any warning: By default, for best performance, the *errors* argument is only checked at the first encoding/decoding error and the *encoding* argument is sometimes ignored for empty strings. Call :func:`faulthandler.enable` at Python startup to install handlers for the :const:`SIGSEGV`, :const:`SIGFPE`, :const:`SIGABRT`, :const:`SIGBUS` and :const:`SIGILL` signals to dump the Python traceback on a crash. Check the *encoding* and *errors* arguments for string encoding and decoding operations. Examples: :func:`open`, :meth:`str.encode` and :meth:`bytes.decode`. Effects of the Python Development Mode Effects of the Python Development Mode: Enable :ref:`asyncio debug mode <asyncio-debug-mode>`. For example, :mod:`asyncio` checks for coroutines that were not awaited and logs them. Enabling the Python Development Mode displays a :exc:`ResourceWarning` warning: Enabling the Python Development Mode is similar to the following command, but with additional effects described below:: Example of a script counting the number of lines of the text file specified in the command line:: In addition, enabling :mod:`tracemalloc` shows the line where the file was opened: Install debug hooks on memory allocators to check for: It behaves as if the :envvar:`PYTHONASYNCIODEBUG` environment variable is set to ``1``. It behaves as if the :envvar:`PYTHONMALLOC` environment variable is set to ``debug``. It behaves as if the :option:`-W default <-W>` command line option is used. It behaves as if the :option:`-X faulthandler <-X>` command line option is used or if the :envvar:`PYTHONFAULTHANDLER` environment variable is set to ``1``. It can be enabled using the :option:`-X dev <-X>` command line option or by setting the :envvar:`PYTHONDEVMODE` environment variable to ``1``. Memory allocator API violation Normally, the above warnings are filtered by the default :ref:`warning filters <describing-warning-filters>`. Not closing a resource explicitly can leave a resource open for way longer than expected; it can cause severe issues upon exiting Python. It is bad in CPython, but it is even worse in PyPy. Closing resources explicitly makes an application more deterministic and more reliable. Python Development Mode ResourceWarning Example Script displaying the first line of itself:: See also :ref:`Python debug build <debug-build>`. See the :c:func:`PyMem_SetupDebugHooks` C function. Set the :attr:`~sys.flags.dev_mode` attribute of :attr:`sys.flags` to ``True``. The *encoding* and *errors* arguments are now checked for string encoding and decoding operations. The :class:`io.IOBase` destructor logs ``close()`` exceptions. The :class:`io.IOBase` destructor now logs ``close()`` exceptions. The Python Development Mode can only be enabled at the Python startup. Its value can be read from :data:`sys.flags.dev_mode <sys.flags>`. The Python Development Mode does not enable the :mod:`tracemalloc` module by default, because the overhead cost (to performance and memory) would be too large. Enabling the :mod:`tracemalloc` module provides additional information on the origin of some errors. For example, :exc:`ResourceWarning` logs the traceback where the resource was allocated, and a buffer overflow error logs the traceback where the memory block was allocated. The Python Development Mode does not prevent the :option:`-O` command line option from removing :keyword:`assert` statements nor from setting :const:`__debug__` to ``False``. The Python Development Mode introduces additional runtime checks that are too expensive to be enabled by default. It should not be more verbose than the default if the code is correct; new warnings are only emitted when an issue is detected. The Python Development Mode shows a :exc:`ResourceWarning` and logs a "Bad file descriptor" error when finalizing the file object: The fix is to close explicitly the file. Example using a context manager:: The fix is to remove the ``os.close(fp.fileno())`` line, or open the file with ``closefd=False``. The script does not close the file explicitly. By default, Python does not emit any warning. Example using README.txt, which has 269 lines: To enable the Python Development Mode without installing debug hooks on memory allocators, set the :envvar:`PYTHONMALLOC` environment variable to ``default``. Unsafe usage of the GIL Use the :option:`-W error <-W>` command line option or set the :envvar:`PYTHONWARNINGS` environment variable to ``error`` to treat warnings as errors. ``os.close(fp.fileno())`` closes the file descriptor. When the file object finalizer tries to close the file descriptor again, it fails with the ``Bad file descriptor`` error. A file descriptor must be closed only once. In the worst case scenario, closing it twice can lead to a crash (see :issue:`18748` for an example). Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:04+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :exc:`DeprecationWarning` :exc:`ImportWarning` :exc:`PendingDeprecationWarning` :exc:`ResourceWarning` 加入 ``default`` :ref:`warning filter <describing-warning-filters>` 。下述警告信息将会显示出来： 文件描述符错误示例 缓冲区上溢 缓冲区下溢 默认情况下，Python 不会触发任何警告： 为了获得最佳性能，默认只会在第一次编码/解码错误时才会检查  *errors* 参数，有时 *encoding* 参数为空字符串时还会被忽略。 在启动 Python 时调用 :func:`faulthandler.enable` ，会安装 :const:`SIGSEGV` 、 :const:`SIGFPE` 、 :const:`SIGABRT` 、 :const:`SIGBUS` 和 :const:`SIGILL` 信号的处理程序，以便在程序崩溃时将 Python 跟踪信息转储下来。 检查字符串编码和解码函数的 *encoding* 和 *errors* 参数。例如： :func:`open` 、 :meth:`str.encode` 和 :meth:`bytes.decode`。 Python 开发模式的效果 Python 开发模式的效果： 启用 :ref:`asyncio debug mode <asyncio-debug-mode>`。比如 :mod:`asyncio` 会检查没有等待的协程并记录下来。 启用 Python 开发模式后，则会显示一条 :exc:`ResourceWarning` 警告： 启用 Python 开发模式后的效果，与以下命令类似，不过还有下面的额外效果： 以下示例将统计由命令行指定的文本文件的行数： 启用 :mod:`tracemalloc` 后，则还会显示打开文件的那行代码： 在内存分配程序中安装调试钩子，用以查看： 效果如同将环境变量 :envvar:`PYTHONASYNCIODEBUG` 设为 ``1``。 效果如同将环境变量 :envvar:`PYTHONMALLOC` 设为 ``debug``。 效果类似于采用了 :option:`-W default <-W>` 命令行参数。 其行为如同使用了 :option:`-X faulthandler <-X>` 命令行选项或将 :envvar:`PYTHONFAULTHANDLER` 环境变量设为 ``1``。 使用 :option:`-X dev <-X>` 命令行参数或将环境变量 :envvar:`PYTHONDEVMODE` 置为 ``1`` ，可以启用开发模式。 内存分配 API 冲突 通常上述警告是由默认的 :ref:`warning filters <describing-warning-filters>` 负责处理的。 未能显式关闭资源，会让资源打开时长远超预期；在退出 Python 时可能会导致严重问题。这在 CPython 中比较糟糕，但在 PyPy 中会更糟。显式关闭资源能让应用程序更加稳定可靠。 Python 开发模式 ResourceWarning 示例 显示自身的第一行代码： 另请参考 :ref:`Python debug build <debug-build>` 。 参见 C 函数 :c:func:`PyMem_SetupDebugHooks` 。 将 :attr:`sys.flags` 的 :attr:`~sys.flags.dev_mode` 属性设为 ``True``。 现在，字符串编码和解码操作时会检查 *encoding* 和 *errors* 参数。 :class:`io.IOBase` 的析构函数会记录 ``close()`` 触发的异常。 现在， :class:`io.IOBase` 的析构函数会记录 ``close()`` 触发的异常。 Python 开发模式只能在 Python 启动时启用。其参数值可从  :data:`sys.flags.dev_mode <sys.flags>` 读取。 Python 开发模式下，默认不会启用 :mod:`tracemalloc` 模块，因为其性能和内存开销太大。启用 :mod:`tracemalloc` 模块后，能够提供有关错误来源的一些额外信息。例如，:exc:`ResourceWarning` 记录了资源分配的跟踪信息，而缓冲区溢出错误记录了内存块分配的跟踪信息。 Python 开发模式不会阻止命令行参数 :option:`-O` 删除 :keyword:`assert` 语句，也不会阻止将 :const:`__debug__` 设为 ``False``。 开发模式下的 Python 加入了额外的运行时检查，由于开销太大，并非默认启用的。如果代码能够正确执行，默认的调试级别足矣，不应再提高了；仅当觉察到问题时再提升警告触发的级别。 在 Python 开发模式下，会在析构文件对象时显示 :exc:`ResourceWarning` 并记录 “Bad file descriptor” 错误。 修正方案就是显式关闭文件。下面用上下文管理器作为示例： 修正方案是删除 ``os.close(fp.fileno())`` 这一行，或者打开文件时带上 ``closefd=False`` 参数。 上述代码没有显式关闭文件。默认情况下，Python 不会触发任何警告。下面用 README.txt 文件测试下，有 269 行： 若要启用 Python 开发模式，却又不要在内存分配程序中安装调试钩子，请将 环境变量 :envvar:`PYTHONMALLOC` 设为 ``default``。 不安全的 GIL 调用 使用命令行参数 :option:`-W error <-W>` 或将环境变量 :envvar:`PYTHONWARNINGS` 设为 ``error``，可将警告视为错误。 ``os.close(fp.fileno())`` 会关闭文件描述符。当文件对象析构函数试图再次关闭文件描述符时会失败，并触发 ``Bad file descriptor`` 错误。每个文件描述符只允许关闭一次。在最坏的情况下，关闭两次会导致程序崩溃（示例可参见 :issue:`18748` ）。 