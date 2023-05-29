��          �               �   )   �   ;     �   S    �     �  �      k   �  c    _   ~     �     �     �  �  �  '   �  C   �  �       �     �	  �   �	  }   ]
  0  �
  T        a     f     m   **Source code:** :source:`Lib/copyreg.py` :mod:`copyreg` --- Register :mod:`pickle` support functions Declares *object* to be a valid constructor.  If *object* is not callable (and hence not valid as a constructor), raises :exc:`TypeError`. Declares that *function* should be used as a "reduction" function for objects of type *type*.  *function* must return either a string or a tuple containing between two and six elements. See the :attr:`~pickle.Pickler.dispatch_table` for more details on the interface of *function*. Example Note that the :attr:`~pickle.Pickler.dispatch_table` attribute of a pickler object or subclass of :class:`pickle.Pickler` can also be used for declaring reduction functions. The *constructor_ob* parameter is a legacy feature and is now ignored, but if passed it must be a callable. The :mod:`copyreg` module offers a way to define functions used while pickling specific objects.  The :mod:`pickle` and :mod:`copy` modules use those functions when pickling/copying those objects.  The module provides configuration information about object constructors which are not classes. Such constructors may be factory functions or class instances. The example below would like to show how to register a pickle function and how it will be used: copy module pickle Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:03+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码:** :source:`Lib/copyreg.py` :mod:`copyreg` --- 注册配合 :mod:`pickle` 模块使用的函数 将 *object* 声明为一个有效的构造器。 如果 *object* 是不可调用的（因而不是一个有效的构造器）则会引发 :exc:`TypeError`。 声明 *function* 应当被用作 *type* 类型的对象的“归约”函数。 *function* 必须返回一个字符串或包含二至六个元素的元组。 请参阅 :attr:`~pickle.Pickler.dispatch_table` 了解有关 *function* 的接口的更多细节。 示例 请注意一个 pickler 或 :class:`pickle.Pickler` 的子类的 :attr:`~pickle.Pickler.dispatch_table` 属性也可以被用来声明约归函数。 *constructor_ob* 形参是一个旧式特性并且现在会被忽略，但如果传入则它必须为一个可调用对象。 :mod:`copyreg` 模块提供了可在封存特定对象时使用的一种定义函数方式。 :mod:`pickle` 和 :mod:`copy` 模块会在封存/拷贝特定对象时使用这些函数。 此模块提供了非类对象构造器的相关配置信息。 这样的构造器可以是工厂函数或类实例。 以下示例将会显示如何注册一个封存函数，以及如何来使用它： copy module pickle 