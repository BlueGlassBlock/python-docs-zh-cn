��    	      d               �      �   �   �   T   �  S     d   f  T   �  �      �   �  �  =     �  �   �  I   �  H     `   e  b   �  }   )  |   �   Boolean Objects Booleans in Python are implemented as a subclass of integers.  There are only two booleans, :const:`Py_False` and :const:`Py_True`.  As such, the normal creation and deletion functions don't apply to booleans.  The following macros are available, however. Return :const:`Py_False` from a function, properly incrementing its reference count. Return :const:`Py_True` from a function, properly incrementing its reference count. Return a new reference to :const:`Py_True` or :const:`Py_False` depending on the truth value of *v*. Return true if *o* is of type :c:data:`PyBool_Type`.  This function always succeeds. The Python ``False`` object.  This object has no methods.  It needs to be treated just like any other object with respect to reference counts. The Python ``True`` object.  This object has no methods.  It needs to be treated just like any other object with respect to reference counts. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:47+0000
Last-Translator: Bryan不可思议, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 布尔对象 Python 中的布尔值是作为整数的子类实现的。只有 :const:`Py_False` 和 :const:`Py_True` 两个布尔值。因此，正常的创建和删除功能不适用于布尔值。但是，下列宏可用。 从函数返回 :const:`Py_False` 时，需要增加它的引用计数。 从函数返回 :const:`Py_True` 时，需要增加它的引用计数。 根据 *v* 的实际值，返回一个 :const:`Py_True` 或者 :const:`Py_False` 的新引用。 如果 *o* 的类型为 :c:data:`PyBool_Type` 则返回真值。 此函数总是会成功执行。 Python的 ``False`` 对象。该对象没有任何方法。它应该象其它使用引用计数管理的对象一样使用。 Python的 ``True`` 对象。该对象没有任何方法。它应该象其它使用引用计数管理的对象一样使用。 