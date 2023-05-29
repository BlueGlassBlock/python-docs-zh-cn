��    h      \              �     �     �     �     �     �     �     �          &     =     Z     r  z   �  w     '   ~  �  �     �
     �
     �
  �   �
    �  9  �  �   �  &   �  &   �  "   �  �   �  X   �  
   �  %  �  T    Q  r  p   �     5     A     J  
   Z  $   e  o   �  .   �  1   )  �   [  "   !  "   D  y   g  Z   �     <     C     J     Q     Z     b     h  
   o     z  
   �     �     �     �     �     �     �  S   �  Q     Q   h  K   �  �     �  �  �   Q  �   �     ^  �   z  I    �   a   �   <!  �   "  $   �"  �   �"  �   �#  �   v$  r   �$  �   o%  ?  	&  �  I'  �   �(  �   �)  �   *  �   �*  x  >+  =   �,  =   �,     3-  0   D-  �   u-     .     .     -.  8   9.     r.     �.     �.  '   �.     �.  �  �.     �0     �0     �0     �0     �0     �0     1     1     61     M1     j1     �1  n   �1  n   
2     y2  �  �2     �4     �4     �4  �   �4  �  d5    47  �   :8  %   �8  %    9     F9  �   \9  ^   �9  	   G:    Q:  O  m;  =  �<  `   �=     \>     j>     s>  
   �>  *   �>  r   �>  ,   ,?  /   Y?  �   �?  '   9@  '   a@  �   �@  S   A     iA     pA     wA     ~A     �A     �A     �A  
   �A     �A  
   �A     �A     �A     �A     �A     �A     �A  Y   �A  W   IB  W   �B  H   �B  �   BC  �  �C  n   NE  �   �E     CF  �   XF  8  �F  �   *I  �   �I  x   �J     K  �   4K  {   L  q   �L  \   �L     ZM  ,  �M  �  O  �   �P  z   (Q  �   �Q  �   <R  a  �R  A   (T  A   jT     �T  5   �T  �   �T     tU     �U  	   �U  *   �U  	   �U     �U     �U     �U     V   :c:expr:`char` :c:expr:`double` :c:expr:`float` :c:expr:`int` :c:expr:`long long` :c:expr:`long` :c:expr:`short` :c:expr:`unsigned char` :c:expr:`unsigned int` :c:expr:`unsigned long long` :c:expr:`unsigned long` :c:expr:`unsigned short` :c:func:`Py_SIZE()` is changed to an inline static function. The parameter type is no longer :c:expr:`const PyVarObject*`. :c:func:`Py_TYPE()` is changed to an inline static function. The parameter type is no longer :c:expr:`const PyObject*`. Accessing attributes of extension types All object types are extensions of this type.  This is a type which contains the information Python needs to treat a pointer to an object as an object.  In a normal "release" build, it contains only the object's reference count and a pointer to the corresponding type object. Nothing is actually declared to be a :c:type:`PyObject`, but every pointer to a Python object can be cast to a :c:expr:`PyObject*`.  Access to the members must be done by using the macros :c:macro:`Py_REFCNT` and :c:macro:`Py_TYPE`. Base object types and macros C type Common Object Structures Extension of :const:`METH_FASTCALL | METH_KEYWORDS` supporting the *defining class*, that is, the class that contains the method in question. The defining class might be a superclass of ``Py_TYPE(self)``. Extension of :const:`METH_FASTCALL` supporting also keyword arguments, with methods of type :c:type:`_PyCFunctionFastWithKeywords`. Keyword arguments are passed the same way as in the :ref:`vectorcall protocol <vectorcall>`: there is an additional fourth :c:expr:`PyObject*` parameter which is a tuple representing the names of the keyword arguments (which are guaranteed to be strings) or possibly ``NULL`` if there are no keywords.  The values of the keyword arguments are stored in the *args* array, after the positional arguments. Fast calling convention supporting only positional arguments. The methods have the type :c:type:`_PyCFunctionFast`. The first parameter is *self*, the second parameter is a C array of :c:expr:`PyObject*` values indicating the arguments and the third parameter is the number of arguments (the length of the array). Get an attribute belonging to the object at address *obj_addr*.  The attribute is described by ``PyMemberDef`` *m*.  Returns ``NULL`` on error. Get the size of the Python object *o*. Get the type of the Python object *o*. Implementing functions and methods In case the attribute should be deleted the second parameter is ``NULL``. Should return ``0`` on success or ``-1`` with a set exception on failure. It should return a new reference on success or ``NULL`` with a set exception on failure. Macro name Methods with a single object argument can be listed with the :const:`METH_O` flag, instead of invoking :c:func:`PyArg_ParseTuple` with a ``"O"`` argument. They have the type :c:type:`PyCFunction`, with the *self* parameter, and a :c:expr:`PyObject*` parameter representing the single argument. Methods with these flags must be of type :c:type:`PyCFunctionWithKeywords`. The function expects three parameters: *self*, *args*, *kwargs* where *kwargs* is a dictionary of all the keyword arguments or possibly ``NULL`` if there are no keyword arguments.  The parameters are typically processed using :c:func:`PyArg_ParseTupleAndKeywords`. Methods without parameters don't need to check whether arguments are given if they are listed with the :const:`METH_NOARGS` flag.  They need to be of type :c:type:`PyCFunction`.  The first parameter is typically named *self* and will hold a reference to the module or object instance.  In all cases the second parameter will be ``NULL``. One other constant controls whether a method is loaded in place of another definition with the same method name. Python type READONLY READ_RESTRICTED RESTRICTED Return a :term:`borrowed reference`. Return non-zero if the object *o* type is *type*. Return zero otherwise. Equivalent to: ``Py_TYPE(o) == type``. See documentation of :c:type:`PyObject` above. See documentation of :c:type:`PyVarObject` above. Set an attribute belonging to the object at address *obj_addr* to object *o*. The attribute to set is described by ``PyMemberDef`` *m*.  Returns ``0`` if successful and a negative value on failure. Set the object *o* size to *size*. Set the object *o* type to *type*. Structure to define property-like access for a type. See also description of the :c:member:`PyTypeObject.tp_getset` slot. Structure used to describe a method of an extension type.  This structure has four fields: T_BOOL T_BYTE T_CHAR T_DOUBLE T_FLOAT T_INT T_LONG T_LONGLONG T_OBJECT_EX T_PYSSIZET T_SHORT T_STRING T_UBYTE T_UINT T_ULONG T_USHORT Test if an object is the ``False`` singleton, the same as ``x is False`` in Python. Test if an object is the ``None`` singleton, the same as ``x is None`` in Python. Test if an object is the ``True`` singleton, the same as ``x is True`` in Python. Test if the *x* object is the *y* object, the same as ``x is y`` in Python. The :c:member:`ml_flags` field is a bitfield which can include the following flags. The individual flags indicate either a calling convention or a binding convention. The :c:member:`ml_meth` is a C function pointer.  The functions may be of different types, but they always return :c:expr:`PyObject*`.  If the function is not of the :c:type:`PyCFunction`, the compiler will require a cast in the method table. Even though :c:type:`PyCFunction` defines the first parameter as :c:expr:`PyObject*`, it is common that the method implementation uses the specific C type of the *self* object. The ``get`` function takes one :c:expr:`PyObject*` parameter (the instance) and a function pointer (the associated ``closure``):: The function must have 2 parameters. Since the second parameter is unused, :c:macro:`Py_UNUSED` can be used to prevent a compiler warning. The function signature is:: The method needs to be of type :c:type:`PyCMethod`, the same as for ``METH_FASTCALL | METH_KEYWORDS`` with ``defining_class`` argument added after ``self``. The method will be loaded in place of existing definitions.  Without *METH_COEXIST*, the default is to skip repeated definitions.  Since slot wrappers are loaded before the method table, the existence of a *sq_contains* slot, for example, would generate a wrapped method named :meth:`__contains__` and preclude the loading of a corresponding PyCFunction with the same name.  With the flag defined, the PyCFunction will be loaded in place of the wrapper object and will co-exist with the slot.  This is helpful because calls to PyCFunctions are optimized more than wrapper object calls. The method will be passed ``NULL`` as the first parameter rather than an instance of the type.  This is used to create *static methods*, similar to what is created when using the :func:`staticmethod` built-in function. The method will be passed the type object as the first parameter rather than an instance of the type.  This is used to create *class methods*, similar to what is created when using the :func:`classmethod` built-in function. There are a large number of structures which are used in the definition of object types for Python.  This section describes these structures and how they are used. There are these calling conventions: These two constants are not used to indicate the calling convention but the binding when use with methods of classes.  These may not be used for functions defined for modules.  At most one of these flags may be set for any given method. This is a macro used when declaring new types which represent objects with a length that varies from instance to instance. The PyObject_VAR_HEAD macro expands to:: This is a macro used when declaring new types which represent objects without a varying length.  The PyObject_HEAD macro expands to:: This is a macro which expands to initialization values for a new :c:type:`PyObject` type.  This macro expands to:: This is a macro which expands to initialization values for a new :c:type:`PyVarObject` type, including the :attr:`ob_size` field. This macro expands to:: This is an extension of :c:type:`PyObject` that adds the :attr:`ob_size` field.  This is only used for objects that have some notion of *length*. This type does not often appear in the Python/C API. Access to the members must be done by using the macros :c:macro:`Py_REFCNT`, :c:macro:`Py_TYPE`, and :c:macro:`Py_SIZE`. This is the typical calling convention, where the methods have the type :c:type:`PyCFunction`. The function expects two :c:expr:`PyObject*` values. The first one is the *self* object for methods; for module functions, it is the module object.  The second parameter (often called *args*) is a tuple object representing all arguments. This parameter is typically processed using :c:func:`PyArg_ParseTuple` or :c:func:`PyArg_UnpackTuple`. Type of the functions used to implement Python callables in C with signature :const:`METH_FASTCALL | METH_KEYWORDS`. The function signature is:: Type of the functions used to implement Python callables in C with signature :const:`METH_FASTCALL`. The function signature is:: Type of the functions used to implement Python callables in C with signature :const:`METH_METHOD | METH_FASTCALL | METH_KEYWORDS`. The function signature is:: Type of the functions used to implement Python callables in C with signature :const:`METH_VARARGS | METH_KEYWORDS`. The function signature is:: Type of the functions used to implement most Python callables in C. Functions of this type take two :c:expr:`PyObject*` parameters and return one such value.  If the return value is ``NULL``, an exception shall have been set.  If not ``NULL``, the return value is interpreted as the return value of the function as exposed in Python.  The function must return a new reference. Use the :c:func:`Py_SET_SIZE` function to set an object size. Use the :c:func:`Py_SET_TYPE` function to set an object type. WRITE_RESTRICTED ``METH_FASTCALL`` is now part of the stable ABI. ``set`` functions take two :c:expr:`PyObject*` parameters (the instance and the value to be set) and a function pointer (the associated ``closure``):: attribute name built-in function classmethod flags bits indicating how the call should be constructed name of the method optional docstring pointer to the C implementation points to the contents of the docstring staticmethod Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :c:expr:`char` :c:expr:`double` :c:expr:`float` :c:expr:`int` :c:expr:`long long` :c:expr:`long` :c:expr:`short` :c:expr:`unsigned char` :c:expr:`unsigned int` :c:expr:`unsigned long long` :c:expr:`unsigned long` :c:expr:`unsigned short` :c:func:`Py_SIZE()` 被改为一个内联静态函数。 形参类型不再是 :c:expr:`const PyVarObject*`。 :c:func:`Py_TYPE()` 被改为一个内联的静态函数。 形参类型不再是 :c:expr:`const PyObject*`。 访问扩展类型的属性 所有对象类型都是此类型的扩展。 这是一个包含了 Python 将对象的指针当作对象来处理所需的信息的类型。 在一个普通的“发行”编译版中，它只包含对象的引用计数和指向对应类型对象的指针。 没有什么对象被实际声明为 :c:type:`PyObject`，但每个指向 Python 对象的指针都可以被转换为 :c:expr:`PyObject*`。 对成员的访问必须通过使用 :c:macro:`Py_REFCNT` 和 :c:macro:`Py_TYPE` 宏来完成。 基本的对象类型和宏 C 类型 公用对象结构体 :const:`METH_FASTCALL | METH_KEYWORDS` 的扩展支持 *定义式类*，也就是包含相应方法的类。 定义式类可以是 ``Py_TYPE(self)`` 的超类。 :const:`METH_FASTCALL` 的扩展也支持关键字参数，它使用 :c:type:`_PyCFunctionFastWithKeywords` 类型的方法。 关键字参数是以与 :ref:`vectorcall 协议 <vectorcall>` 相同的方式传入的：还存在额外的代表关键字参数名称的元组第四个 :c:expr:`PyObject*` 形参（它将保证为字符串）或者如果没有关键字则可能为 ``NULL``。 关键字参数的值存放在 *args* 数组中，在位置参数之后。 快速调用惯例仅支持位置参数。 这些方法的类型为 :c:type:`_PyCFunctionFast`。 第一个形参为 *self*，第二个形参是由表示参数的 :c:expr:`PyObject*` 值组成的数组而第三个形参是参数的数量（数组的长度）。 获取属于地址Get an attribute belonging to the object at address *obj_addr* 上的对象的某个属性。 该属性是以 ``PyMemberDef`` *m* 来描述的。 出错时返回 ``NULL``。 获取 Python 对象 *o* 的大小。 获取 Python 对象 *o* 的类型。 实现函数和方法 对于属性要被删除的情况第二个形参应为 ``NULL``。 成功时应返回 ``0`` 或在失败时返回 ``-1`` 并设置异常。 它应当在成功时返回一个新的引用或在失败时返回 ``NULL`` 并设置异常。 宏名称 具有一个单独对象参数的方法可使用 :const:`METH_O` 旗标列出，而不必发起调用 :c:func:`PyArg_ParseTuple` 并附带 ``"O"`` 参数。 它们的类型为 :c:type:`PyCFunction`，带有 *self* 形参，以及代表该单独参数的 :c:expr:`PyObject*` 形参。 带有这些旗标的方法必须为 :c:type:`PyCFunctionWithKeywords` 类型。 该函数接受三个形参: *self*, *args*, *kwargs* 其中 *kwargs* 是一个包含所有关键字参数的字典或者如果没有关键字参数则可以为 ``NULL``。 这些形参通常是使用 :c:func:`PyArg_ParseTupleAndKeywords` 来处理的。 没有形参的方法如果通过 :const:`METH_NOARGS` 旗标列出了参数则不需要检查是否提供了参数。 它们必须为 :c:type:`PyCFunction` 类型。 第一个形参通常命名为 *self* 并将存放一个指向模块或对象实例的引用。 在所有情况下第二个形参都将为 ``NULL``。 另一个常量控制方法是否将被载入来替代具有相同方法名的另一个定义。 Python 类型 READONLY READ_RESTRICTED RESTRICTED 返回一个 :term:`borrowed reference`。 如果对象 *o* 的类型为 *type* 则返回非零值。 否则返回零。 等价于: ``Py_TYPE(o) == type``。 参见上面 :c:type:`PyObject` 的文档。 参见上面 :c:type:`PyVarObject` 的文档。 将属于位于地址 *obj_addr* 的对象的属性设置到对象 *o*。 要设置的属性由 ``PyMemberDef`` *m* 描述。 成功时返回 ``0`` 而失败时返回负值。 将对象 *o* 的大小设为 *size*。 将对象 *o* 的类型设为 *type*。 用于定义针对某个类型的特征属性式的访问的结构体。 另请参阅 :c:member:`PyTypeObject.tp_getset` 槽位的描述。 用于描述一个扩展类型的方法的结构体。 该结构体有四个字段: T_BOOL T_BYTE T_CHAR T_DOUBLE T_FLOAT T_INT T_LONG T_LONGLONG T_OBJECT_EX T_PYSSIZET T_SHORT T_STRING T_UBYTE T_UINT T_ULONG T_USHORT 测试一个对象是否为 ``False`` 单例，与 Python 中的 ``x is False`` 相同。 测试一个对象是否为 ``None`` 单例，与 Python 中的 ``x is None`` 相同。 测试一个对象是否为 ``True`` 单例，与 Python 中的 ``x is True`` 相同。 测试 *x* 是否为 *y* 对象，与 Python 中的 ``x is y`` 相同。 :c:member:`ml_flags` 字段是一个可以包括以下旗标的位字段。 每个旗标指明一个调用惯例或一个绑定惯例。 :c:member:`ml_meth` 是一个 C 函数指针。 该函数可能为不同类型，但它们将总是返回 :c:expr:`PyObject*`。 如果该函数不属于 :c:type:`PyCFunction`，则编译器将需要在方法表中进行转换。 虽然 :c:type:`PyCFunction` 将第一个形参定义为 :c:expr:`PyObject*`，但是该方法的实现使用 *self* 对象的特定 C 类型也很常见。 ``get`` 函数接受一个 :c:expr:`PyObject*` 形参 (实例) 和一个函数指针 (关联的 ``closure``):: 该函数必须有 2 个形参。 由于第二个形参不会被使用，:c:macro:`Py_UNUSED` 可以被用来防止编译器警告。 函数的签名为:: 该方法必须为 :c:type:`PyCMethod` 类型，与在 ``self`` 之后添加了 ``defining_class`` 参数的 ``METH_FASTCALL | METH_KEYWORDS`` 一样。 该方法将被载入来替代现有的定义。 如果没有 *METH_COEXIST*，默认将跳过重复的定义。 由于槽位包装器会在方法表之前被载入，例如当存在 *sq_contains* 槽位时，将会生成一个名为 :meth:`__contains__` 的已包装方法并阻止载入具有相同名称的对应 PyCFunction。 如果定义了此旗标，则 PyCFunction 将被载入来替代此包装器对象并将与槽位共存。 因为对This is helpful because calls to PyCFunctions 的调用比包装器对象调用更为优化所以这是很有帮助的。 该方法将接受 ``NULL`` 而不是类型的实例作为第一个形参。 它会被用于创建 *静态方法*，类似于使用 :func:`staticmethod` 内置函数所创建的结果。 该方法将接受类型对象而不是类型的实例作为第一个形参。 它会被用于创建 *类方法*，类似于使用 :func:`classmethod` 内置函数所创建的结果。 大量的结构体被用于定义Python的对象类型。这一节描述了这些的结构体和它们的使用方法。 调用惯例有如下这些: 这两个常量不是被用来指明调用惯例而是在配合类方法使用时指明绑定。 它们不会被用于在模块上定义的函数。 对于任何给定方法这些旗标最多只会设置其中一个。 这是一个在声明代表每个实例具有可变长度的对象时所使用的宏。 PyObject_VAR_HEAD 宏被扩展为:: 这是一个在声明代表无可变长度对象的新类型时所使用的宏。 PyObject_HEAD 宏被扩展为:: 这是一个为新的 :c:type:`PyObject` 类型扩展初始化值的宏。 该宏扩展为:: 这是一个为新的 :c:type:`PyVarObject` 类型扩展初始化值的宏，包括 :attr:`ob_size` 字段。 该宏扩展为:: 这是一个 :c:type:`PyObject` 的添加了 :attr:`ob_size` 字段的扩展。 它仅用于具有某种 *长度* 标记的对象。 此类型并不经常在 Python/C API 中出现。 对成员的访问必须通过使用 :c:macro:`Py_REFCNT`, :c:macro:`Py_TYPE` 和 :c:macro:`Py_SIZE` 宏来完成。 这是典型的调用惯例，其中方法的类型为 :c:type:`PyCFunction`。 该函数接受两个 :c:expr:`PyObject*` 值。 第一个是用于方法的 *self* 对象；对于模块函数，它将为模块对象。 第二个形参 (常被命名为 *args*) 是一个代表所有参数的元组对象。 该形参通常是使用 :c:func:`PyArg_ParseTuple` 或 :c:func:`PyArg_UnpackTuple` 来处理的。 用于在 C 中实现具有 :const:`METH_FASTCALL | METH_KEYWORDS` 签名的 Python 可调用对象的函数类型。 函数的签名为:: 用于在 C 中实现具有 :const:`METH_FASTCALL` 签名的 Python 可调用对象的函数类型。 函数的签名为:: 用于在 C 中实现具有 :const:`METH_METHOD | METH_FASTCALL | METH_KEYWORDS` 签名的 Python 可调用对象的函数类型。 函数的签名为:: 用于在 C 中实现具有 :const:`METH_VARARGS | METH_KEYWORDS` 签名的 Python 可调用对象的函数类型。 函数的签名为:: 用于在 C 中实现大多数 Python 可调用对象的函数类型。 该类型的函数接受两个 :c:expr:`PyObject*` 形参并返回一个这样的值。 如果返回值为 ``NULL``，则将设置一个异常。 如果不为 ``NULL``，则返回值将被解读为 Python 中暴露的函数的返回值。 此函数必须返回一个新的引用。 使用 :c:func:`Py_SET_SIZE` 函数来设置一个对象大小。 使用 :c:func:`Py_SET_TYPE` 函数来设置一个对象类型。 WRITE_RESTRICTED ``METH_FASTCALL`` 现在是稳定 ABI 的一部分。 ``set`` 函数接受两个 :c:expr:`PyObject*` 形参 (实例和要设置的值) 和一个函数指针 (关联的 ``closure``):: 属性名称 内置函数 类方法 指明调用应当如何构造的旗标位 方法名 可选的文档字符串 指向 C 实现的指针 指向文档字符串的内容 静态方法 