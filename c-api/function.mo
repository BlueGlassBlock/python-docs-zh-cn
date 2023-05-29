��          �               �    �     �     �  8   �  p      �   q  a     m   m  m   �  @   I  G   �  �   �  d   d  h   �  s   2  #   �    �  7   �  �   
	  h   �	     

     
  �  
    �     �     �  =     p   N     �  R   ?  [   �  _   �  3   N  4   �  �   �  Z   R  a   �  i        y     �  ,   �  �   �  k   P     �     �   As :c:func:`PyFunction_New`, but also allows setting the function object's ``__qualname__`` attribute.  *qualname* should be a unicode object or ``NULL``; if ``NULL``, the ``__qualname__`` attribute is set to the same value as the code object's ``co_qualname`` field. Function Objects MethodType (in module types) Raises :exc:`SystemError` and returns ``-1`` on failure. Return a :term:`borrowed reference` to the *__module__* attribute of the function object *op*. It can be *NULL*. Return a new function object associated with the code object *code*. *globals* must be a dictionary with the global variables accessible to the function. Return the annotations of the function object *op*. This can be a mutable dictionary or ``NULL``. Return the argument default values of the function object *op*. This can be a tuple of arguments or ``NULL``. Return the closure associated with the function object *op*. This can be ``NULL`` or a tuple of cell objects. Return the code object associated with the function object *op*. Return the globals dictionary associated with the function object *op*. Return true if *o* is a function object (has type :c:data:`PyFunction_Type`). The parameter must not be ``NULL``.  This function always succeeds. Set the annotations for the function object *op*. *annotations* must be a dictionary or ``Py_None``. Set the argument default values for the function object *op*. *defaults* must be ``Py_None`` or a tuple. Set the closure associated with the function object *op*. *closure* must be ``Py_None`` or a tuple of cell objects. The C structure used for functions. The function's docstring and name are retrieved from the code object. *__module__* is retrieved from *globals*. The argument defaults, annotations and closure are set to ``NULL``. *__qualname__* is set to the same value as the code object's ``co_qualname`` field. There are a few functions specific to Python functions. This is an instance of :c:type:`PyTypeObject` and represents the Python function type.  It is exposed to Python programmers as ``types.FunctionType``. This is normally a string containing the module name, but can be set to any other object by Python code. function object Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 类似 :c:func:`PyFunction_New`，但还允许设置函数对象的 ``__qualname__`` 属性。 *qualname* 应当是一个 unicode 对象或 ``NULL``；如果是 ``NULL``，则 ``__qualname__`` 属性会被设为与代码对象的 ``co_qualname`` 字段相同的值。 Function 对象 MethodType (types 模块) 失败时引发 :exc:`SystemError` 异常并返回 ``-1`` 。 向函数对象 *op* 的 *__module__* 属性返回一个 :term:`borrowed reference`。 该值可以为 *NULL*。 返回与代码对象 *code* 关联的新函数对象。 *globals* 必须是一个字典，该函数可以访问全局变量。 返回函数对象 *op* 的标注。 这可以是一个可变字典或 ``NULL``。 返回函数对象 *op* 的参数默认值。 这可以是一个参数元组或 ``NULL``。 返回关联到函数对象 *op* 的闭包。 这可以是 ``NULL`` 或 cell 对象的元组。 返回与函数对象 *op* 关联的代码对象。 返回与函数对象*op*相关联的全局字典。 如果 *o* 是一个函数对象 (类型为 :c:data:`PyFunction_Type`) 则返回真值。 形参必须不为 ``NULL``。 此函数总是会成功执行。 设置函数对象 *op* 的标注。 *annotations* 必须为一个字典或 ``Py_None``。 为函数对象 *op* 设置参数默认值。 *defaults* 必须为 ``Py_None`` 或一个元组。 设置关联到函数对象 *op* 的闭包。 *closure* 必须为 ``Py_None`` 或 cell 对象的元组。 用于函数的 C 结构体。 函数的文档字符串和名称是从代码对象中提取的。 *__module__* 是从 *globals* 中提取的。 参数 defaults, annotations 和 closure 被设为 ``NULL``。 *__qualname__* 被设为与代码对象的 ``co_qualname`` 字段相同的值。 有一些特定于 Python 函数的函数。 这是一个 :c:type:`PyTypeObject` 实例并表示 Python 函数类型。 它作为 ``types.FunctionType`` 向 Python 程序员公开。 这通常为一个包含模块名称的字符串，但可以通过 Python 代码设为任何其他对象。 function -- 函数 object -- 对象 