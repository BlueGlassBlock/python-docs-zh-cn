��          �               <  �   =     '  �   8  �     �   �  R   J  T   �  4   �  �   '  �   �  �     0  "  �   S  �   	  _   �	     �	     �	  �  �	  �   �     �  �   �  �   d  �   �  Q   �  Q   �  <   )  �   f  z     �   �    (  �   @  q   �  `   c     �     �   Map the string *key* to the value *v* in object *o*.  Returns ``-1`` on failure.  This is the equivalent of the Python statement ``o[key] = v``. See also :c:func:`PyObject_SetItem`.  This function *does not* steal a reference to *v*. Mapping Protocol Note that exceptions which occur while calling the :meth:`~object.__getitem__` method and creating a temporary string object will get suppressed. To get error reporting use :c:func:`PyMapping_GetItemString()` instead. Note that exceptions which occur while calling the :meth:`~object.__getitem__` method will get suppressed. To get error reporting use :c:func:`PyObject_GetItem()` instead. On success, return a list of the items in object *o*, where each item is a tuple containing a key-value pair.  On failure, return ``NULL``. On success, return a list of the keys in object *o*.  On failure, return ``NULL``. On success, return a list of the values in object *o*.  On failure, return ``NULL``. Previously, the function returned a list or a tuple. Remove the mapping for the object *key* from the object *o*.  Return ``-1`` on failure.  This is equivalent to the Python statement ``del o[key]``. This is an alias of :c:func:`PyObject_DelItem`. Remove the mapping for the string *key* from the object *o*.  Return ``-1`` on failure.  This is equivalent to the Python statement ``del o[key]``. Return ``1`` if the mapping object has the key *key* and ``0`` otherwise. This is equivalent to the Python expression ``key in o``. This function always succeeds. Return ``1`` if the object provides the mapping protocol or supports slicing, and ``0`` otherwise.  Note that it returns ``1`` for Python classes with a :meth:`~object.__getitem__` method, since in general it is impossible to determine what type of keys the class supports. This function always succeeds. Return element of *o* corresponding to the string *key* or ``NULL`` on failure. This is the equivalent of the Python expression ``o[key]``. See also :c:func:`PyObject_GetItem`. Returns the number of keys in object *o* on success, and ``-1`` on failure. This is equivalent to the Python expression ``len(o)``. See also :c:func:`PyObject_GetItem`, :c:func:`PyObject_SetItem` and :c:func:`PyObject_DelItem`. built-in function len Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-29 02:08+0000
PO-Revision-Date: 2021-06-28 00:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 在对象 *o* 中将字符串 *key* 映射到值 *v*。 失败时返回 ``-1``。 这相当于 Python 语句 ``o[key] = v``。 另请参见 :c:func:`PyObject_SetItem`。 此函数 *不会* 增加对 *v* 的引用。 映射协议 请注意在调用 :meth:`~object.__getitem__` 方法和创建临时字符串对象期间发生的异常将会被抑制。 要获取错误报告请改用 :c:func:`PyMapping_GetItemString()`。 请注意在调用 :meth:`~object.__getitem__` 方法期间出现的异常将被抑制。 要获取错误报告请改用 :c:func:`PyObject_GetItem()`。 成功时，返回对象 *o* 中条目的列表，其中每个条目是一个包含键值对的元组。 失败时，返回 ``NULL``。 成功时，返回对象 *o* 中的键的列表。 失败时，返回 ``NULL``。 成功时，返回对象 *o* 中的值的列表。 失败时，返回 ``NULL``。 在之前版本中，此函数返回一个列表或元组。 从对象 *o* 中移除对象 *key* 的映射。 失败时返回 ``-1``。 这相当于 Python 语句 ``del o[key]``。 这是 :c:func:`PyObject_DelItem` 的一个别名。 从对象 *o* 中移除字符串 *key* 的映射。 失败时返回 ``-1``。 这相当于 Python 语句 ``del o[key]``。 如果映射对象具有键 *key* 则返回 ``1``，否则返回 ``0``。 这相当于 Python 表达式 ``key in o``。 此函数总是会成功执行。 如果对象提供了映射协议或是支持切片则返回 ``1``，否则返回 ``0``。 请注意它将为具有 :meth:`~object.__getitem__` 方法的 Python 类返回 ``1``，因为在通常情况下无法确定该类支持哪种键类型。 此函数总是会成功执行。 返回 *o* 中对应于字符串 *key* 的元素，或者失败时返回 ``NULL``。 这相当于 Python 表达式 ``o[key]``。 另请参见 also :c:func:`PyObject_GetItem`。 成功时返回对象 *o* 中键的数量，失败时返回 ``-1``。 这相当于 Python 表达式 ``len(o)``。 参见 :c:func:`PyObject_GetItem`、:c:func:`PyObject_SetItem` 与 :c:func:`PyObject_DelItem`。 内置函数 len 