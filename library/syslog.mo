��    !      $              ,  �   -  &  �  �   �  .   �  =   �        �        �     �  }   �  �   X  S        k  �   x     0  Q   O  t   �  [   	  f   r	  J   �	  �  $
  v  �     >  +   M  +   y  �  �    Z  :  f    �  �   �  �   W  �   �  �  �  �   {  2    �   M     �  =        O  �   j          
  y     �   �  Y   E     �  �   �     b  X     m   �  ]   F  _   �  :     �  ?  Z  �     H!     U!  $   u!  �  �!  �   #    $  �   $%  �   &  v   �&  �   .'   :const:`LOG_EMERG`, :const:`LOG_ALERT`, :const:`LOG_CRIT`, :const:`LOG_ERR`, :const:`LOG_WARNING`, :const:`LOG_NOTICE`, :const:`LOG_INFO`, :const:`LOG_DEBUG`. :const:`LOG_KERN`, :const:`LOG_USER`, :const:`LOG_MAIL`, :const:`LOG_DAEMON`, :const:`LOG_AUTH`, :const:`LOG_LPR`, :const:`LOG_NEWS`, :const:`LOG_UUCP`, :const:`LOG_CRON`, :const:`LOG_SYSLOG`, :const:`LOG_LOCAL0` to :const:`LOG_LOCAL7`, and, if defined in ``<syslog.h>``, :const:`LOG_AUTHPRIV`. :const:`LOG_PID`, :const:`LOG_CONS`, :const:`LOG_NDELAY`, and, if defined in ``<syslog.h>``, :const:`LOG_ODELAY`, :const:`LOG_NOWAIT`, and :const:`LOG_PERROR`. :mod:`syslog` --- Unix syslog library routines :ref:`Availability <availability>`: not Emscripten, not WASI. A simple set of examples:: An example of setting some log options, these would include the process ID in logged messages, and write the messages to the destination facility used for mail logging:: Examples Facilities: If :func:`openlog` has not been called prior to the call to :func:`syslog`, :func:`openlog` will be called with no arguments. In previous versions, :func:`openlog` would not be called automatically if it wasn't called prior to the call to :func:`syslog`, deferring to the syslog implementation to call ``openlog()``. In previous versions, keyword arguments were not allowed, and *ident* was required. Log options: Logging options of subsequent :func:`syslog` calls can be set by calling :func:`openlog`.  :func:`syslog` will call :func:`openlog` with no arguments if the log is not currently open. Priority levels (high to low): Raises an :ref:`auditing event <auditing>` ``syslog.closelog`` with no arguments. Raises an :ref:`auditing event <auditing>` ``syslog.openlog`` with arguments ``ident``, ``logoption``, ``facility``. Raises an :ref:`auditing event <auditing>` ``syslog.setlogmask`` with argument ``maskpri``. Raises an :ref:`auditing event <auditing>` ``syslog.syslog`` with arguments ``priority``, ``message``. Reset the syslog module values and call the system library ``closelog()``. Send the string *message* to the system logger.  A trailing newline is added if necessary.  Each message is tagged with a priority composed of a *facility* and a *level*.  The optional *priority* argument, which defaults to :const:`LOG_INFO`, determines the message priority.  If the facility is not encoded in *priority* using logical-or (``LOG_INFO | LOG_USER``), the value given in the :func:`openlog` call is used. Set the priority mask to *maskpri* and return the previous mask value.  Calls to :func:`syslog` with a priority level not set in *maskpri* are ignored. The default is to log all priorities.  The function ``LOG_MASK(pri)`` calculates the mask for the individual priority *pri*.  The function ``LOG_UPTO(pri)`` calculates the mask for all priorities up to and including *pri*. Simple example The module defines the following constants: The module defines the following functions: The optional *ident* keyword argument is a string which is prepended to every message, and defaults to ``sys.argv[0]`` with leading path components stripped.  The optional *logoption* keyword argument (default is 0) is a bit field -- see below for possible values to combine.  The optional *facility* keyword argument (default is :const:`LOG_USER`) sets the default facility for messages which do not have a facility explicitly encoded. This causes the module to behave as it does when initially imported.  For example, :func:`openlog` will be called on the first :func:`syslog` call (if :func:`openlog` hasn't already been called), and *ident* and other :func:`openlog` parameters are reset to defaults. This function is restricted in subinterpreters. (Only code that runs in multiple interpreters is affected and the restriction is not relevant for most users.) :func:`openlog` must be called in the main interpreter before :func:`syslog` may be used in a subinterpreter.  Otherwise it will raise :exc:`RuntimeError`. This function is restricted in subinterpreters. (Only code that runs in multiple interpreters is affected and the restriction is not relevant for most users.) This may only be called in the main interpreter. It will raise :exc:`RuntimeError` if called in a subinterpreter. This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. This module provides an interface to the Unix ``syslog`` library routines. Refer to the Unix manual pages for a detailed description of the ``syslog`` facility. This module wraps the system ``syslog`` family of routines.  A pure Python library that can speak to a syslog server is available in the :mod:`logging.handlers` module as :class:`SysLogHandler`. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-02 19:38+0000
PO-Revision-Date: 2021-06-28 01:14+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :const:`LOG_EMERG`, :const:`LOG_ALERT`, :const:`LOG_CRIT`, :const:`LOG_ERR`, :const:`LOG_WARNING`, :const:`LOG_NOTICE`, :const:`LOG_INFO`, :const:`LOG_DEBUG`. :const:`LOG_KERN`, :const:`LOG_USER`, :const:`LOG_MAIL`, :const:`LOG_DAEMON`, :const:`LOG_AUTH`, :const:`LOG_LPR`, :const:`LOG_NEWS`, :const:`LOG_UUCP`, :const:`LOG_CRON`, :const:`LOG_SYSLOG`, :const:`LOG_LOCAL0` to :const:`LOG_LOCAL7`，如果 ``<syslog.h>`` 中有定义则还有 :const:`LOG_AUTHPRIV`。 :const:`LOG_PID`, :const:`LOG_CONS`, :const:`LOG_NDELAY`，如果 ``<syslog.h>`` 中有定义则还有 :const:`LOG_ODELAY`, :const:`LOG_NOWAIT` 以及 :const:`LOG_PERROR`。 Unix syslog 库例程 :ref:`可用性 <availability>`: 非 Emscripten，非 WASI。 一个简单的示例集:: 一个设置多种日志选项的示例，其中有在日志消息中包含进程 ID，以及将消息写入用于邮件日志记录的目标设施等:: 例子 设施: 如果 :func:`openlog` 未在对 :func:`syslog` 的调用之前被调用，则将不带参数地调用 :func:`openlog`。 在之前的版本中，如果 :func:`openlog` 未在对 :func:`syslog` 的调用之前被调用则它将不会被自动调用，而是由 syslog 实现来负责调用 ``openlog()``。 在之前的版本中，不允许使用关键字参数，并且要求必须有 *ident*。 日志选项: 后续 :func:`syslog` 调用的日志选项可以通过调用 :func:`openlog` 来设置。 如果日志当前未打开则 :func:`syslog` 将不带参数地调用 :func:`openlog`。 优先级级别 (高到低): 引发一个 :ref:`审计事件 <auditing>` ``syslog.closelog`` 不附带任何参数。 引发 :ref:`审计事件 <auditing>` ``syslog.openlog`` 使用参数 ``ident``, ``logoption``, ``facility``. 引发一个 :ref:`审计事件 <auditing>` ``syslog.setlogmask`` 附带参数 ``maskpri``。 引发 :ref:`审计事件 <auditing>` ``syslog.syslog`` 使用参数 ``priority``, ``message``. 重置日志模块值并且调用系统库 ``closelog()``. 将字符串 *message* 发送到系统日志记录器。 如有必要会添加末尾换行符。 每条消息都带有一个由 *facility* 和 *level* 组成的优先级标价签。 可选的 *priority* 参数默认值为 :const:`LOG_INFO`，它确定消息的优先级。 如果未在 *priority* 中使用逻辑或 (``LOG_INFO | LOG_USER``) 对 facility 进行编码，则会使用在 :func:`openlog` 调用中所给定的值。 将优先级掩码设为 *maskpri* 并返回之前的掩码值。 调用 :func:`syslog` 并附带未在 *maskpri* 中设置的优先级将会被忽略。 默认设置为记录所有优先级。 函数 ``LOG_MASK(pri)`` 可计算单个优先级 *pri* 的掩码。 函数 ``LOG_UPTO(pri)`` 可计算包括 *pri* 在内的所有优先级的掩码。 简单示例 此模块定义了一下常量: 这个模块定义了以下函数： 可选的 *ident* 关键字参数是在每条消息前添加的字符串，默认为 ``sys.argv[0]`` 去除打头的路径部分。 可选的 *logoption* 关键字参数（默认为 0）是一个位字段 -- 请参见下文了解可能的组合值。 可选的 *facility* 关键字参数 (默认为 :const:`LOG_USER`) 为没有显式编码 facility 的消息设置默认的 facility。 这使得此模块在初始导入时行为固定。 例如，:func:`openlog` 将在首次调用 :func:`syslog` 时被调用（如果 :func:`openlog` 还未被调用过），并且 *ident* 和其他 :func:`openlog` 形参会被重置为默认值。 此函数在子解释器中受到限制。 （该限制只影响在多解释器中运行的代码因而与大多数用户无关。） :func:`openlog` 必须在子解释器使用 :func:`syslog` 之前在主解释器中被调用。 否则它将引发 :exc:`RuntimeError`。 此函数在子解释器中受到限制。 （该限制只影响在多解释器中运行的代码因而与大多数用户无关。）  此函数只能在主解释器中被调用。 如果在子解释器中被调用它将引发 :exc:`RuntimeError`。 此模块在 WebAssembly 平台 ``wasm32-emscripten`` 和 ``wasm32-wasi`` 上不适用或不可用。 请参阅 :ref:`wasm-availability` 了解详情。 此模块提供一个接口到Unix ``syslog`` 日常库. 参考 Unix 手册页关于 ``syslog`` 设施的详细描述. 此模块包装了系统的 ``syslog`` 例程族。 一个能与 syslog 服务器对话的纯 Python 库则以 :mod:`logging.handlers` 模块中 :class:`SysLogHandler` 类的形式提供。 