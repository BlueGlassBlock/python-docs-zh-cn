��    Z      �              �  J   �  �     &   �  C   �  @   �     8     <  &   E     l  #   �  $   �  #   �     �          5     S     q  !   �  #   �     �    �  �   
  p   �
  0  d  K   �  �   �  y   �     )     7  k   H  �   �  �   H  �   �  �   �  �   s  �   �  �   �  �   h    �  �   �  �   �  a   @  �   �     =  f   F  [   �  �   	      �    l   �  u   d  s   �     N     a    s  ]   z     �     �  h      D   p   1   �   >   �   o   &!  �   �!  �   *"  E   �"  O   �"  O   M#  O   �#  �   �#  V   �$    �$     &  �   *&     �&  
   '     '     '     '     ('  �   /'     �'     (  
   (     !(     '(  N   6(     �(  
   �(  �  �(  ;   L*  �   �*  &   +  7   ?+  0   w+     �+  
   �+  &   �+     �+  #   �+  $   ",  #   G,     k,     �,     �,     �,     �,  !   �,  #   -     A-    _-  �   }.  m   B/    �/  H   �1  �   2  y   �2     O3     \3  u   m3  �   �3  �   v4  �   '5  �   6  �   �6  �   B7  �   8  �   �8    ;9  �   >:  �   �:  k   �;  �   �;     �<  Z   �<  E   �<  �   0=  �   >  �  ?  b   �@  }   AA  {   �A     ;B     OB  �   \B  I   -C     wC     �C  O   �C  8   �C  1   #D  6   UD  e   �D  �   �D  �   zE  4   �E  >   1F  C   pF  C   �F  �   �F  j   �G    !H     %I  �   ;I     J     J     'J     ,J     JJ     XJ  �   _J     9K     @K     SK     cK     jK  J   zK     �K  
   �K   *args* is a C array consisting of the positional arguments followed by the *args* must not be *NULL*; use an empty tuple if no arguments are needed. If no named arguments are needed, *kwargs* can be *NULL*. *callable* is the object being called. *kwnames* is a tuple containing the names of the keyword arguments; *nargsf* is the number of positional arguments plus possibly the --- 1 object :c:func:`PyObject_CallFunctionObjArgs` :c:func:`PyObject_CallFunction` :c:func:`PyObject_CallMethodNoArgs` :c:func:`PyObject_CallMethodObjArgs` :c:func:`PyObject_CallMethodOneArg` :c:func:`PyObject_CallMethod` :c:func:`PyObject_CallNoArgs` :c:func:`PyObject_CallObject` :c:func:`PyObject_CallOneArg` :c:func:`PyObject_Call` :c:func:`PyObject_VectorcallDict` :c:func:`PyObject_VectorcallMethod` :c:func:`PyObject_Vectorcall` A call is made using a tuple for the positional arguments and a dict for the keyword arguments, similarly to ``callable(*args, **kwargs)`` in Python code. *args* must be non-NULL (use an empty tuple if there are no arguments) but *kwargs* may be *NULL* if there are no keyword arguments. A class should not implement vectorcall if that would be slower than *tp_call*. For example, if the callee needs to convert the arguments to an args tuple and kwargs dict anyway, then there is no point in implementing vectorcall. A class supporting vectorcall **must** also implement :c:member:`~PyTypeObject.tp_call` with the same semantics. As rule of thumb, CPython will prefer the vectorcall for internal calls if the callable supports it. However, this is not a hard rule. Additionally, some third-party extensions use *tp_call* directly (rather than using :c:func:`PyObject_Call`). Therefore, a class supporting vectorcall must also implement :c:member:`~PyTypeObject.tp_call`. Moreover, the callable must behave the same regardless of which protocol is used. The recommended way to achieve this is by setting :c:member:`~PyTypeObject.tp_call` to :c:func:`PyVectorcall_Call`. This bears repeating: CPython supports two different calling protocols: *tp_call* and vectorcall. Call *callable* with positional arguments passed exactly as in the vectorcall_ protocol, but with keyword arguments passed as a dictionary *kwdict*. The *args* array contains only the positional arguments. Call *callable*'s :c:type:`vectorcallfunc` with positional and keyword arguments given in a tuple and dict, respectively. Call Protocol Call Support API Call a callable Python object *callable* with exactly 1 positional argument *arg* and no keyword arguments. Call a callable Python object *callable* without any arguments. It is the most efficient way to call a callable Python object without any argument. Call a callable Python object *callable*, with a variable number of :c:expr:`PyObject *` arguments.  The arguments are provided as a variable number of parameters followed by *NULL*. Call a callable Python object *callable*, with a variable number of C arguments. The C arguments are described using a :c:func:`Py_BuildValue` style format string.  The format can be *NULL*, indicating that no arguments are provided. Call a callable Python object *callable*, with arguments given by the tuple *args*, and named arguments given by the dictionary *kwargs*. Call a callable Python object *callable*, with arguments given by the tuple *args*.  If no arguments are needed, then *args* can be *NULL*. Call a callable Python object *callable*. The arguments are the same as for :c:type:`vectorcallfunc`. If *callable* supports vectorcall_, this directly calls the vectorcall function stored in *callable*. Call a method of the Python object *obj* with a single positional argument *arg*, where the name of the method is given as a Python string object in *name*. Call a method of the Python object *obj* without arguments, where the name of the method is given as a Python string object in *name*. Call a method of the Python object *obj*, where the name of the method is given as a Python string object in *name*.  It is called with a variable number of :c:expr:`PyObject *` arguments.  The arguments are provided as a variable number of parameters followed by *NULL*. Call the method named *name* of object *obj* with a variable number of C arguments.  The C arguments are described by a :c:func:`Py_BuildValue` format string that should produce a tuple. Determine if the object *o* is callable.  Return ``1`` if the object is callable and ``0`` otherwise.  This function always succeeds. For :c:func:`PyObject_VectorcallMethod`, this flag means instead that ``args[0]`` may be changed. For efficiency, this is not the case for calls done using vectorcall: the callee should use *Py_EnterRecursiveCall* and *Py_LeaveRecursiveCall* if needed. Function Given a vectorcall *nargsf* argument, return the actual number of arguments. Currently equivalent to:: However, the function ``PyVectorcall_NARGS`` should be used to allow for future extensions. If *op* does not support the vectorcall protocol (either because the type does not or because the specific instance does not), return *NULL*. Otherwise, return the vectorcall function pointer stored in *op*. This function never raises an exception. If this flag is set in a vectorcall *nargsf* argument, the callee is allowed to temporarily change ``args[-1]``. In other words, *args* points to argument 1 (not 0) in the allocated vector. The callee must restore the value of ``args[-1]`` before returning. In CPython 3.8, the vectorcall API and related functions were available provisionally under names with a leading underscore: ``_PyObject_Vectorcall``, ``_Py_TPFLAGS_HAVE_VECTORCALL``, ``_PyObject_VectorcallMethod``, ``_PyVectorcall_Function``, ``_PyObject_CallOneArg``, ``_PyObject_CallMethodNoArgs``, ``_PyObject_CallMethodOneArg``. Additionally, ``PyObject_VectorcallDict`` was available as ``_PyObject_FastCallDict``. The old names are still defined as aliases of the new, non-underscored names. Instances of classes that set :c:member:`~PyTypeObject.tp_call` are callable. The signature of the slot is:: Note that if you only pass :c:expr:`PyObject *` args, :c:func:`PyObject_CallFunctionObjArgs` is a faster alternative. Note that if you only pass :c:expr:`PyObject *` args, :c:func:`PyObject_CallMethodObjArgs` is a faster alternative. Object Calling API Recursion Control Regardless of which protocol is used internally, a conversion of arguments needs to be done. Therefore, this function should only be used if the caller already has a dictionary ready to use for the keyword arguments, but not a tuple for the positional arguments. Return the result of the call on success, or raise an exception and return *NULL* on failure. The *tp_call* Protocol The Vectorcall Protocol The following table summarizes the available functions; please see individual documentation for details. The format can be *NULL*, indicating that no arguments are provided. The type of *format* was changed from ``char *``. The types of *name* and *format* were changed from ``char *``. The vectorcall protocol was introduced in :pep:`590` as an additional protocol for making calls more efficient. This convention is not only used by *tp_call*: :c:member:`~PyTypeObject.tp_new` and :c:member:`~PyTypeObject.tp_init` also pass arguments this way. This is mostly useful to check whether or not *op* supports vectorcall, which can be done by checking ``PyVectorcall_Function(op) != NULL``. This is the equivalent of the Python expression: ``callable(*args)``. This is the equivalent of the Python expression: ``callable(*args, **kwargs)``. This is the equivalent of the Python expression: ``callable(arg1, arg2, ...)``. This is the equivalent of the Python expression: ``obj.name(arg1, arg2, ...)``. To call an object that implements vectorcall, use a :ref:`call API <capi-call>` function as with any other callable. :c:func:`PyObject_Vectorcall` will usually be most efficient. To call an object, use :c:func:`PyObject_Call` or another :ref:`call API <capi-call>`. Various functions are available for calling a Python object. Each converts its arguments to a convention supported by the called object – either *tp_call* or vectorcall. In order to do as little conversion as possible, pick one that best fits the format of data you have available. Vectorcall Support API When using *tp_call*, callees do not need to worry about :ref:`recursion <recursion>`: CPython uses :c:func:`Py_EnterRecursiveCall` and :c:func:`Py_LeaveRecursiveCall` for calls made using *tp_call*. ``PyObject *`` arg + name args callable dict/``NULL`` format in other words, the keys of the kwargs dict. These names must be strings (instances of ``str`` or a subclass) and they must be unique. If there are no keyword arguments, then *kwnames* can instead be *NULL*. kwargs obj + ``char*`` obj + name tuple tuple/``NULL`` values of the keyword arguments. This can be *NULL* if there are no arguments. variadic vectorcall Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 00:47+0000
Last-Translator: Bryan不可思议, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 *args* 是一个C语言数组，由位置参数和后面的 *args* 必须不为 *NULL*；如果不想要参数请使用一个空元组。 如果不想要关键字参数，则 *kwargs* 可以为 *NULL*。 *callable* 是指被调用的对象。 *kwnames* 是一包含所有关键字名称的元组。 *nargsf* 是位置参数的数量加上可能的 --- 1个对象 :c:func:`PyObject_CallFunctionObjArgs` :c:func:`PyObject_CallFunction` :c:func:`PyObject_CallMethodNoArgs` :c:func:`PyObject_CallMethodObjArgs` :c:func:`PyObject_CallMethodOneArg` :c:func:`PyObject_CallMethod` :c:func:`PyObject_CallNoArgs` :c:func:`PyObject_CallObject` :c:func:`PyObject_CallOneArg` :c:func:`PyObject_Call` :c:func:`PyObject_VectorcallDict` :c:func:`PyObject_VectorcallMethod` :c:func:`PyObject_Vectorcall` 一个调用是用一个元组表示位置参数，用一个dict表示关键字参数，类似于Python代码中的 ``callable(*args, **kwargs)``。*args*必须是非空的（如果没有参数，会使用一个空元组），但如果没有关键字参数，*kwargs*可以是*NULL*。 如果一个类的vectorcall比*tp_call*慢，就不应该实现vectorcall。例如，如果被调用者需要将参数转换为args 元组和kwargs dict，那么实现vectorcall就没有意义。 一个支持 Vectorcall 的类 **必须** 也实现具有相同语义的 :c:member:`~PyTypeObject.tp_call`。 作为经验法则，如果可调用程序支持 vectorcall，CPython 会更倾向于内联调用。 然而，这并不是一个硬性规定。 此外，一些第三方扩展直接使用 *tp_call* (而不是使用 :c:func:`PyObject_Call`)。 因此，一个支持 vectorcall 的类也必须实现 :c:member:`~PyTypeObject.tp_call`。 此外，无论使用哪种协议，可调对象的行为都必须是相同的。 推荐的方法是将 :c:member:`~PyTypeObject.tp_call` 设置为 :c:func:`PyVectorcall_Call`。值得一提的是: CPython 支持两种不同的调用协议：*tp_call* 和矢量调用。 调用 *callable* 并附带与在 vectorcall_ 协议中传入的完全相同的位置参数，但会加上以字典 *kwdict* 形式传入的关键字参数。 *args* 数组将只包含位置参数。 调用*可调对象*的 :c:type:`vectorcallfunc`，其位置参数和关键字参数分别以元组和dict形式给出。 调用协议 调用支持 API 调用一个可调用的 Python 对象 *callable* 并附带恰好 1 个位置参数 *arg* 而没有关键字参数。 调用一个可调用的 Python 对象 *callable* 并不附带任何参数。 这是不带参数调用 Python 可调用对象的最有效方式。 调用一个 Python 可调用对象 *callable*，附带可变数量的 :c:expr:`PyObject *` 参数。 这些参数是以 *NULL* 之后可变数量的形参的形式提供的。 调用一个可调用的 Python 对象 *callable*，附带可变数量的 C 参数。 这些 C 参数使用 :c:func:`Py_BuildValue` 风格的格式字符串来描述。 format 可以为 *NULL*，表示没有提供任何参数。 调用一个可调用的 Python 对象 *callable*，附带由元组 *args* 所给出的参数，以及由字典 *kwargs* 所给出的关键字参数。 调用一个可调用的 Python 对象 *callable*，附带由元组 *args* 所给出的参数。 如果不想要传入参数，则 *args* 可以为 *NULL*。 调用一个可调用的 Python 对象 *callable*。 附带的参数与 :c:type:`vectorcallfunc` 相同。 如果 *callable* 支持 vectorcall_，则它会直接调用存放在 *callable* 中的 vectorcall 函数。 调用 Python 对象 *obj* 中的一个方法并附带单个位置参数 *arg*，其中方法名称由 *name* 中的 Python 字符串对象给出。 调用 Python 对象 *obj* 中的一个方法并不附带任何参数，其中方法名称由 *name* 中的 Python 字符串对象给出。 调用 Python 对象 *obj* 中的一个访问，其中方法名称由 *name* 中的 Python 字符串对象给出。 它将附带可变数量的 :c:expr:`PyObject *` 参数被调用。 这些参数是以 *NULL* 之后可变数量的形参的形式提供的。 调用 *obj* 对象中名为 *name* 的方法并附带可变数量的 C 参数。 这些 C 参数由 :c:func:`Py_BuildValue` 格式字符串来描述并应当生成一个元组。 确定对象 *o* 是可调对象。如果对象是可调对象则返回 ``1`` ，其他情况返回 ``0`` 。这个函数不会调用失败。 对于 :c:func:`PyObject_VectorcallMethod` ，这个标志的改变意味着 ``args[0]`` 可能改变了。 为保证效率，这不适用于使用 vectorcall 的调用：被调用方在需要时应当使用 *Py_EnterRecursiveCall* 和 *Py_LeaveRecursiveCall*。 函数 给定一个 vectorcall *nargsf* 实参，返回参数的实际数量。 目前等同于:: 然而，应使用 ``PyVectorcall_NARGS`` 函数以便将来扩展。 如果*op*不支持vectorcall协议（要么是因为类型不支持，要么是因为具体实例不支持），返回*NULL*。否则，返回存储在*op*中的vectorcall函数指针。这个函数从不触发异常。 如果在 vectorcall 的 *nargsf* 参数中设置了此标志，则允许被调用者临时更改 ``args[-1]`` 的值。换句话说， *args* 指向分配向量中的参数 1（不是 0 ）。被调用方必须在返回之前还原 ``args[-1]`` 的值。 在 CPython 3.8 中，vectorcall API 和相关的函数暂定以带开头下划线的名称提供: ``_PyObject_Vectorcall``, ``_Py_TPFLAGS_HAVE_VECTORCALL``, ``_PyObject_VectorcallMethod``, ``_PyVectorcall_Function``, ``_PyObject_CallOneArg``, ``_PyObject_CallMethodNoArgs``, ``_PyObject_CallMethodOneArg``。 此外， ``PyObject_VectorcallDict`` 以 ``_PyObject_FastCallDict`` 的名称提供。 旧名称仍然被定义为不带下划线的新名称的别名。 设置 :c:member:`~PyTypeObject.tp_call` 的类的实例都是可调用的。 槽位的签名为:: 请注意如果你只传入 :c:expr:`PyObject *` 参数，则 :c:func:`PyObject_CallFunctionObjArgs` 是更快速的选择。 请注意如果你只传入 :c:expr:`PyObject *` 参数，则 :c:func:`PyObject_CallMethodObjArgs` 是更快速的选择。 调用对象的 API 递归控制 无论在内部使用哪种协议，都需要进行参数的转换。 因此，此函数应当仅在调用方已经拥有作为关键字参数的字典，但没有作为位置参数的元组时才被使用。 成功时返回结果，在失败时抛出一个异常并返回 *NULL*。 *tp_call* 协议 Vectorcall 协议 下表总结了可用的功能； 请参阅各个文档以了解详细信息。 格式可以为 *NULL* ，表示未提供任何参数。 这个 *format* 类型已从 ``char *`` 更改。  *name* 和 *format* 类型已从 ``char *`` 更改。 vectorcall 协议是在 :pep:`590` 被引入的，它是使调用函数更加有效的附加协议。 这个约定不仅被*tp_call*使用： :c:member:`~PyTypeObject.tp_new` 和 :c:member:`~PyTypeObject.tp_init` 也这样传递参数。 这在检查 *op* 是否支持 vectorcall 时最有用处，可以通过检查 ``PyVectorcall_Function(op) != NULL`` 来实现。 这等价于 Python 表达式 ``callable(*args)``。 这等价于 Python 表达式 ``callable(*args, **kwargs)``。 这和Python表达式 ``callable(arg1, arg2, ...)`` 是一样的。 这和Python表达式 ``obj.name(arg1, arg2, ...)`` 是一样的。 要调用一个实现了 vectorcall 的对象，请使用某个 :ref:`call API<capi-call>` 函数，就像其他可调对象一样。  :c:func:`PyObject_Vectorcall` 通常是最有效的。 要调用一个对象，请使用 :c:func:`PyObject_Call` 或者其他的 :ref:`调用 API <capi-call>`。 有多个函数可被用来调用 Python 对象。 各个函数会将其参数转换为被调用对象所支持的惯例 – 可以是 *tp_call* 或 vectorcall。 为了尽可能少地进行转换，请选择一个适合你所拥有的数据格式的函数。 Vectorcall 支持 API 在使用 *tp_call* 时，被调用者不必担心 :ref:`递归 <recursion>`: CPython 对于使用 *tp_call* 进行的调用会使用 :c:func:`Py_EnterRecursiveCall` 和 :c:func:`Py_LeaveRecursiveCall`。 ``PyObject *`` 参数 + 名称 args 可调用对象（Callable） dict/``NULL`` format 换句话说，就是 kwargs 字典的键。 这些名字必须是字符串 (``str`` 或其子类的实例)，并且它们必须是唯一的。 如果没有关键字参数，那么 *kwnames* 可以用 *NULL* 代替。 kwargs 对象 + ``char*`` 对象 + 名称 元组 元组/``NULL`` 关键字参数的值。如果没有参数，这个值可以是 *NULL* 。 可变参数 vectorcall 