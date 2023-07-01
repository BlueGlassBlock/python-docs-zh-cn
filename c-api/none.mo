��          \               �      �      �   �   �   )   �  �   �     r     �  �  �  '   M     u  �   z  *   p  �   �     #     3   :c:data:`Py_None` is immortal. None Note that the :c:type:`PyTypeObject` for ``None`` is not directly exposed in the Python/C API.  Since ``None`` is a singleton, testing for object identity (using ``==`` in C) is sufficient. There is no :c:func:`PyNone_Check` function for the same reason. Return :c:data:`Py_None` from a function. The Python ``None`` object, denoting lack of value.  This object has no methods and is `immortal <https://peps.python.org/pep-0683/>`_. The ``None`` Object object Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-30 14:13+0000
PO-Revision-Date: 2021-06-28 00:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :c:data:`Py_None` 是永久性对象。 None 请注意， ``None`` 的 :c:type:`PyTypeObject` 不会直接在 Python / C API 中公开。 由于 ``None`` 是单例，测试对象标识（在C中使用 ``==`` ）就足够了。 由于同样的原因，没有 :c:func:`PyNone_Check` 函数。 从一个函数返回 :c:data:`Py_None`。 Python ``None`` 对象，表示空值。 该对象没有任何方法并且是 `永久性对象 <https://peps.python.org/pep-0683/>`_。 ``None`` 对象 object -- 对象 