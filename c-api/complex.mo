��          �               �     �     �  !     N   6  [   �     �  �  a  �   �    �  E   �  A   (  c   j  ]   �  :   ,  a   g  [   �  \   %	  5   �	  W   �	  �   
  �   �
  �   "  �     M   �  +   �     "     1  �  8     �            P   ;  b   �  w   �  x  g  �   �  �   �  V   V  8   �  F   �  K   -  6   y  C   �  I   �  F   >  6   �  F   �  �     �   �  �   6  �   �  P   �  2   �             Complex Number Objects Complex Numbers as C Structures Complex Numbers as Python Objects Create a new Python complex number object from a C :c:type:`Py_complex` value. If *divisor* is null, this method returns zero and sets :c:data:`errno` to :c:macro:`EDOM`. If *num* is null and *exp* is not a positive real number, this method returns zero and sets :c:data:`errno` to :c:macro:`EDOM`. If *op* is not a Python complex number object but has a :meth:`~object.__complex__` method, this method will first be called to convert *op* to a Python complex number object.  If :meth:`!__complex__` is not defined then it falls back to :meth:`~object.__float__`.  If :meth:`!__float__` is not defined then it falls back to :meth:`~object.__index__`.  Upon failure, this method returns ``-1.0`` as a real value. Note that the functions which accept these structures as parameters and return them as results do so *by value* rather than dereferencing them through pointers.  This is consistent throughout the API. Python's complex number objects are implemented as two distinct types when viewed from the C API:  one is the Python object exposed to Python programs, and the other is a C structure which represents the actual complex number value. The API provides functions for working with both. Return a new :c:type:`PyComplexObject` object from *real* and *imag*. Return the :c:type:`Py_complex` value of the complex number *op*. Return the difference between two complex numbers, using the C :c:type:`Py_complex` representation. Return the exponentiation of *num* by *exp*, using the C :c:type:`Py_complex` representation. Return the imaginary part of *op* as a C :c:expr:`double`. Return the negation of the complex number *num*, using the C :c:type:`Py_complex` representation. Return the product of two complex numbers, using the C :c:type:`Py_complex` representation. Return the quotient of two complex numbers, using the C :c:type:`Py_complex` representation. Return the real part of *op* as a C :c:expr:`double`. Return the sum of two complex numbers, using the C :c:type:`Py_complex` representation. Return true if its argument is a :c:type:`PyComplexObject` or a subtype of :c:type:`PyComplexObject`.  This function always succeeds. Return true if its argument is a :c:type:`PyComplexObject`, but not a subtype of :c:type:`PyComplexObject`.  This function always succeeds. The C structure which corresponds to the value portion of a Python complex number object.  Most of the functions for dealing with complex number objects use structures of this type as input or output values, as appropriate.  It is defined as:: This instance of :c:type:`PyTypeObject` represents the Python complex number type. It is the same object as :class:`complex` in the Python layer. This subtype of :c:type:`PyObject` represents a Python complex number object. Use :meth:`~object.__index__` if available. complex number object Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 复数对象 表示复数的C结构体 表示复数的Python对象 根据C类型 :c:type:`Py_complex` 的值生成一个新的Python复数对象。 如果 *divisor* 为空，这个方法将返回零并将 :c:data:`errno` 设为 :c:macro:`EDOM`。 如果 *num* 为空且 *exp* 不为正实数，这个方法将返回零并将 :c:data:`errno` 设为 :c:macro:`EDOM`。 如果 *op* 不是一个 Python 复数对象但是具有 :meth:`~object.__complex__` 方法，则会先调用该方法将 *op* 转换为 Python 复数对象。 如果 :meth:`!__complex__` 未定义则将回退至 :meth:`~object.__float__`。 如果 :meth:`!__float__` 未定义则将回退至 :meth:`~object.__index__`。 当失败时，该方法将返回实数值 ``-1.0``。 需要注意的是接受这些结构体的作为参数并当做结果返回的函数，都是传递“值”而不是引用指针。此规则适用于整个API。 从C API看，Python的复数对象由两个不同的部分实现：一个是在Python程序使用的Python对象，另外的是一个代表真正复数值的C结构体。API提供了函数共同操作两者。 根据 *real* 和 *imag* 返回一个新的C类型 :c:type:`PyComplexObject` 对象。 返回复数 *op* 的C类型 :c:type:`Py_complex` 值。 返回两个复数的差，用 C 类型 :c:type:`Py_complex` 表示。 返回 *num* 的 *exp* 次幂，用 C 类型 :c:type:`Py_complex` 表示。 以 C 类型 :c:expr:`double` 返回 *op* 的虚部。 返回复数 *num* 的负值，用 C :c:type:`Py_complex` 表示。 返回两个复数的乘积，用 C 类型 :c:type:`Py_complex` 表示。 返回两个复数的商，用 C 类型 :c:type:`Py_complex` 表示。 以 C 类型 :c:expr:`double` 返回 *op* 的实部。 返回两个复数的和，用 C 类型 :c:type:`Py_complex` 表示。 如果它的参数是一个 :c:type:`PyComplexObject` 或者 :c:type:`PyComplexObject` 的子类型则返回真值。 此函数总是会成功执行。 如果它的参数是一个 :c:type:`PyComplexObject` 但不是 :c:type:`PyComplexObject` 的子类型则返回真值。 此函数总是会成功执行。 这是一个对应Python复数对象的值部分的C结构体。绝大部分处理复数对象的函数都用这类型的结构体作为输入或者输出值，它可近似地定义为： 这是个属于 :c:type:`PyTypeObject` 的代表Python复数类型的实例。在Python层面的类型 :class:`complex` 是同一个对象。 这个C类型 :c:type:`PyObject` 的子类型代表一个 Python 复数对象。 如果可能将使用 :meth:`~object.__index__`。 complex number -- 复数 object -- 对象 