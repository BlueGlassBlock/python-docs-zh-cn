��    '      T              �  &   �  O  �  #     D   (     m     ~  �   �     ]     s     �  �   �     P     o  �   t  �   R  '   ;  ,   c  �   �     :	     @	     E	     M	  8   [	  T   �	     �	     �	     �	  '   
     *
     .
     6
  
   ;
     F
  
   V
     a
     r
     v
     }
  �  �
  &   D  L  k  %   �  ;   �  	        $  �   +     �          %  �   ,     �       �     �   �     �  $   �  �   �     e     k     p     x  ;   �  Q   �          "     '  &   -     T     X     `  
   e     p  
   �     �     �     �     �   **Source code:** :source:`Lib/tomllib` *parse_float* will be called with the string of every TOML float to be decoded.  By default, this is equivalent to ``float(num_str)``. This can be used to use another datatype or parser for TOML floats (e.g. :class:`decimal.Decimal`). The callable must not return a :class:`dict` or a :class:`list`, else a :exc:`ValueError` is raised. :mod:`tomllib` --- Parse TOML files A :exc:`TOMLDecodeError` will be raised on an invalid TOML document. Conversion Table Examples Load TOML from a :class:`str` object. Return a :class:`dict`. Convert TOML types to Python using this :ref:`conversion table <toml-to-py-table>`. The *parse_float* argument has the same meaning as in :func:`load`. Parsing a TOML file:: Parsing a TOML string:: Python Read a TOML file. The first argument should be a readable and binary file object. Return a :class:`dict`. Convert TOML types to Python using this :ref:`conversion table <toml-to-py-table>`. Subclass of :exc:`ValueError`. TOML The `TOML Kit package <https://pypi.org/project/tomlkit/>`__ is a style-preserving TOML library with both read and write capability. It is a recommended replacement for this module for editing already existing TOML files. The `Tomli-W package <https://pypi.org/project/tomli-w/>`__ is a TOML writer that can be used in conjunction with this module, providing a write API familiar to users of the standard library :mod:`marshal` and :mod:`pickle` modules. The following exceptions are available: This module defines the following functions: This module provides an interface for parsing TOML (Tom's Obvious Minimal Language, `https://toml.io <https://toml.io/en/>`_). This module does not support writing TOML. array bool boolean datetime.date datetime.datetime (``tzinfo`` attribute set to ``None``) datetime.datetime (``tzinfo`` attribute set to an instance of ``datetime.timezone``) datetime.time dict float float (configurable with *parse_float*) int integer list local date local date-time local time offset date-time str string table Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2022-11-05 19:49+0000
Last-Translator: 钟旭尧 <python_zhong@qq.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码：** :source:`Lib/tomllib` 对每个要解析的 TOML 浮点数字符串调用 *parse_float*。默认情况下，这相当于 ``float(num_str)``。这可以用于为 TOML 浮点数使用另一种数据类型或解析器（例如：:class:`decimal.Decimal`）。可调用对象不能返回 :class:`dict` 或 :class:`list`，否则将引发 :exc:`ValueError`。 :mod:`tomllib` --- 解析 TOML 文件 对无效的 TOML 文档将引发 :exc:`TOMLDecodeError`。 转换表 例子 从 :class:`str` 对象中加载 TOML。返回 :class:`dict`。使用 :ref:`转换表<toml-to-py-table>` 将 TOML 类型转换为 Python类型。参数 *parse_float* 与 :func:`load` 中的意义相同。 解析 TOML 文件:: 解析 TOML 字符串:: Python 读取一个 TOML 文件。第一个参数应该是一个可读的二进制文件对象。返回 :class:`dict`。使用 :ref:`转换表<toml-to-py-table>` 将 TOML 类型转换为 Python。 :exc:`ValueError` 的子类 TOML `TOML Kit 包 <https://pypi.org/project/tomlkit/>`__ 是一个兼具读和写功能的保持样式的 TOML 库。推荐使用此模块编辑已经存在的 TOML 文件。 包 `Tomli-W package <https://pypi.org/project/tomli-w/>`__ 是一个 TOML writer，可以与该模块一起使用，其提供了标准库用户熟悉的 :mod:`marshal` 和 :mod:`pickle` 模块相似的写 API。 有以下几种异常： 这个模块定义了以下函数： 这个模块提供了一个解析 TOML （Tom's Obvious Minimal Language, `https://toml.io <https://toml.io/en/>`_）接口。该模块不支持写 TOML。 array bool boolean datetime.date datetime.datetime （``tzinfo`` 属性设置为 ``None``） datetime.datetime（``tzinfo`` 属性设置为 ``datetime.timezone`` 的实例） datetime.time dict float float（可用 *parse_float* 配置） int integer list local date local date-time local time offset date-time str string table 