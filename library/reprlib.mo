��          �               �  )   �     �  �   �  8   �  �   �  �   �  P   �  `    �   e       %  "  �   H     �  2  q	     �
     �
  �   �
  ]   �  �   �  
  �  �   �  �   �  �   7  :     J   K     �  �  �  '   b     �  �   �  0   6  �   g  �     =   �  P     �   q       �     �   �  Z   �    �            �   -  J   �  ~   3  �   �  �   �  �   T  �     <   �  B        D   **Source code:** :source:`Lib/reprlib.py` ... :class:`Repr` instances provide several attributes which can be used to provide size limits for the representations of different object types,  and methods which format specific object types. :mod:`reprlib` --- Alternate :func:`repr` implementation Class which provides formatting services useful in implementing functions similar to the built-in :func:`repr`; size limits for  different object types are added to avoid the generation of representations which are excessively long. Decorator for :meth:`__repr__` methods to detect recursive calls within the same thread.  If a recursive call is made, the *fillvalue* is returned, otherwise, the usual :meth:`__repr__` call is made.  For example: Depth limit on the creation of recursive representations.  The default is ``6``. Formatting methods for specific types are implemented as methods with a name based on the type name.  In the method name, **TYPE** is replaced by ``'_'.join(type(obj).__name__.split())``. Dispatch to these methods is handled by :meth:`repr1`. Type-specific methods which need to recursively format a value should call ``self.repr1(subobj, level - 1)``. In addition to size-limiting tools, the module also provides a decorator for detecting recursive calls to :meth:`__repr__` and substituting a placeholder string instead. Is equivalent to:: Limit on the number of characters in the representation of the string.  Note that the "normal" representation of the string is used as the character source: if escape sequences are needed in the representation, these may be mangled when the representation is shortened.  The default is ``30``. Limits on the number of entries represented for the named object type.  The default is ``4`` for :attr:`maxdict`, ``5`` for :attr:`maxarray`, and  ``6`` for the others. Maximum number of characters in the representation for an integer.  Digits are dropped from the middle.  The default is ``40``. Recursive implementation used by :meth:`.repr`.  This uses the type of *obj* to determine which formatting method to call, passing it *obj* and *level*.  The type-specific methods should call :meth:`repr1` to perform recursive formatting, with ``level - 1`` for the value of *level* in the recursive  call. Repr Objects Subclassing Repr Objects The :mod:`reprlib` module provides a means for producing object representations with limits on the size of the resulting strings. This is used in the Python debugger and may be useful in other contexts as well. The equivalent to the built-in :func:`repr` that uses the formatting imposed by the instance. The keyword arguments of the constructor can be used as a shortcut to set the attributes of the :class:`Repr` instance. Which means that the following initialization:: The use of dynamic dispatching by :meth:`Repr.repr1` allows subclasses of :class:`Repr` to add support for additional built-in object types or to modify the handling of types already supported. This example shows how special support for file objects could be added:: This is an instance of :class:`Repr` which is used to provide the :func:`.repr` function described below.  Changing the attributes of this object will affect the size limits used by :func:`.repr` and the Python debugger. This is the :meth:`~Repr.repr` method of ``aRepr``.  It returns a string similar to that returned by the built-in function of the same name, but with limits on most sizes. This limit is used to control the size of object types for which no specific formatting method is available on the :class:`Repr` object. It is applied in a similar manner as :attr:`maxstring`.  The default is ``20``. This module provides a class, an instance, and a function: This string is displayed for recursive references. It defaults to ``...``. placeholder Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-29 16:50+0000
PO-Revision-Date: 2021-06-28 01:12+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码:** :source:`Lib/reprlib.py` ... :class:`Repr` 实例对象包含一些属性可以用于为不同对象类型的表示提供大小限制，还包含一些方法可以格式化特定的对象类型。 :mod:`reprlib` --- 另一种 :func:`repr` 实现 该类提供了格式化服务 适用于实现与内置 :func:`repr` 相似的方法；其中附加了针对不同对象类型的大小限制，以避免生成超长的表示。 用于为 :meth:`__repr__` 方法检测同一线程内部递归调用的装饰器。 如果执行了递归调用，则会返回 *fillvalue*，否则执行正常的 :meth:`__repr__` 调用。 例如： 创建递归表示形式的深度限制。 默认为 ``6``。 特定类型的格式化方法会被实现为基于类型名称来命名的方法。 在方法名称中，**TYPE** 会被替换为 ``'_'.join(type(obj).__name__.split())``。 对这些方法的分派会由 :meth:`repr1` 来处理。 需要对值进行递归格式化的类型专属方法应当调用 ``self.repr1(subobj, level - 1)``。 在大小限制工具以外，此模块还提供了一个装饰器，用于检测对 :meth:`__repr__` 的递归调用并改用一个占位符来替换。 等价于： 表示字符串的字符数量限制。 请注意字符源会使用字符串的“正常”表示形式：如果表示中需要用到转义序列，在缩短表示时它们可能会被破坏。 默认值为 ``30``。 表示命名对象类型的条目数量限制。 对于 :attr:`maxdict` 的默认值为 ``4``，对于 :attr:`maxarray` 为 ``5``，对于其他则为  ``6``。 表示整数的最大字符数量。 数码会从中间被丢弃。 默认值为 ``40``。 供 :meth:`.repr` 使用的递归实现。 此方法使用 *obj* 的类型来确定要调用哪个格式化方法，并传入 *obj* 和 *level*。 类型专属的方法应当调用 :meth:`repr1` 来执行递归格式化，在递归调用中使用 ``level - 1`` 作为 *level* 的值。 Repr 对象 子类化 Repr 对象 :mod:`reprlib` 模块提供了一种对象表示的产生方式，它会对结果字符串的大小进行限制。 该方式被用于 Python 调试器，也适用于某些其他场景。 内置 :func:`repr` 的等价形式，它使用实例专属的格式化。 该构造器的关键字参数可被用作设置 :class:`Repr` 实例属性的快捷方式。 这意味着以下的初始化:: 通过 :meth:`Repr.repr1` 使用动态分派允许 :class:`Repr` 的子类添加对额外内置对象类型的支持，或是修改对已支持类型的处理。 这个例子演示了如何添加对文件对象的特殊支持:: 这是 :class:`Repr` 的一个实例，用于提供如下所述的 :func:`.repr` 函数。 改变此对象的属性将会影响 :func:`.repr` 和 Python 调试器所使用的大小限制。 这是 ``aRepr`` 的 :meth:`~Repr.repr` 方法。 它会返回与同名内置函数所返回字符串相似的字符串，区别在于附带了对多数类型的大小限制。 此限制用于控制在 :class:`Repr` 对象上没有特定的格式化方法可用的对象类型的大小。 它会以类似 :attr:`maxstring` 的方式被应用。 默认值为 ``20``。 此模块提供了一个类、一个实例和一个函数： 该字符串将针对递归引用显示。 它默认为 ``...``。 placeholder 