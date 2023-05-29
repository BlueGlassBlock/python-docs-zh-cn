��    ,      |              �  *   �  /     '   8      `  )   �  (   �  =   �  �     m   �  )        /     8  �   M  _   �  E   C     �     �  �   �  �   2  |   �  T   F  a   �  G   �     E	  !   e	  $   �	  &   �	  c   �	  �   7
  ,   �
  �   &  N   �  X   *  �   �  �   9  �   �  �   �  M     �   Z  p   C     �     �     �  �  �  (   �  3   �  *   �  !     +   7  &   c  ;   �  w   �  f   >  (   �     �     �  �   �  a   w  V   �     0     H  �   ]  �   �  z   j  =   �  D   #  .   h  $   �  (   �     �     �  ^     �   {  $   O  �   t  ]     S   t  �   �  �   �       �   �  U   1  �   �  q   `     �     �     �   **Source code:** :source:`Lib/plistlib.py` :data:`FMT_BINARY`: Binary formatted plist file :data:`FMT_BINARY`: Binary plist format :data:`FMT_XML`: XML file format :data:`FMT_XML`: XML formatted plist file :data:`None`: Autodetect the file format :mod:`plistlib` --- Generate and parse Apple ``.plist`` files A :exc:`TypeError` will be raised if the object is of an unsupported type or a container that contains objects of unsupported types. An :exc:`OverflowError` will be raised for integer values that cannot be represented in (binary) plist files. Apple's documentation of the file format. Examples Generating a plist:: It has one attribute, :attr:`data`, which can be used to retrieve the int value of the UID.  :attr:`data` must be in the range ``0 <= data < 2**64``. Load a plist from a bytes object. See :func:`load` for an explanation of the keyword arguments. New API, old API deprecated.  Support for binary format plists added. Old API removed. Parsing a plist:: Read a plist file. *fp* should be a readable and binary file object. Return the unpacked root object (which usually is a dictionary). Return *value* as a plist-formatted bytes object. See the documentation for :func:`dump` for an explanation of the keyword arguments of this function. Support added for reading and writing :class:`UID` tokens in binary plists as used by NSKeyedArchiver and NSKeyedUnarchiver. The *dict_type* is the type used for dictionaries that are read from the plist file. The *fmt* argument specifies the format of the plist file and can be one of the following values: The *fmt* is the format of the file and the following values are valid: The XML format for plist files. The binary format for plist files The following classes are available: The following constants are available: The parser for the binary format raises :exc:`InvalidFileException` when the file cannot be parsed. The property list (``.plist``) file format is a simple serialization supporting basic object types, like dictionaries, lists, numbers and strings.  Usually the top level object is a dictionary. This module defines the following functions: This module provides an interface for reading and writing the "property list" files used by Apple, primarily on macOS and iOS. This module supports both binary and XML plist files. To work with plist data in bytes objects, use :func:`dumps` and :func:`loads`. To write out and to parse a plist file, use the :func:`dump` and :func:`load` functions. Values can be strings, integers, floats, booleans, tuples, lists, dictionaries (but only with string keys), :class:`bytes`, :class:`bytearray` or :class:`datetime.datetime` objects. When *skipkeys* is false (the default) the function raises :exc:`TypeError` when a key of a dictionary is not a string, otherwise such keys are skipped. When *sort_keys* is true (the default) the keys for dictionaries will be written to the plist in sorted order, otherwise they will be written in the iteration order of the dictionary. Wraps an :class:`int`.  This is used when reading or writing NSKeyedArchiver encoded data, which contains UID (see PList manual). Write *value* to a plist file. *Fp* should be a writable, binary file object. XML data for the :data:`FMT_XML` format is parsed using the Expat parser from :mod:`xml.parsers.expat` -- see its documentation for possible exceptions on ill-formed XML.  Unknown elements will simply be ignored by the plist parser. `PList manual page <https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/PropertyLists/>`_ file plist property list Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:11+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码:** :source:`Lib/plistlib.py` :data:`FMT_BINARY`: 二进制格式的 plist 文件 :data:`FMT_BINARY`: 二进制 plist 格式 :data:`FMT_XML`: XML 文件格式 :data:`FMT_XML`: XML 格式的 plist 文件 :data:`None`: 自动检测文件格式 :mod:`plistlib` --- 生成与解析 Apple ``.plist`` 文件 如果对象是不受支持的类型或者是包含不受支持类型的对象的容器则将引发 :exc:`TypeError`。 对于无法在（二进制）plist 文件中表示的整数值，将会引发 :exc:`OverflowError`。 针对该文件格式的 Apple 文档。 例子 生成一个 plist:: 它具有一个属性 :attr:`data`，可以被用来提取 UID 的 int 值。 :attr:`data` 的取值范围必须为 ``0 <= data < 2**64``。 从一个 bytes 对象加载 plist。 参阅 :func:`load` 获取相应关键字参数的说明。 新版 API，旧版 API 已被弃用。 添加了对二进制 plist 格式的支持。 旧 API 已被移除。 解析一个 plist:: 读取 plist 文件。 *fp* 应当可读并且为二进制文件对象。 返回已解包的根对象（通常是一个字典）。 将 *value* 以 plist 格式字节串对象的形式返回。 参阅 :func:`dump` 的文档获取此函数的关键字参数的说明。 添加了在二进制 plist 中读写 :class:`UID` 令牌的支持，例如用于 NSKeyedArchiver 和 NSKeyedUnarchiver。 *dict_type* 为字典用来从 plist 文件读取的类型。 *fmt* 参数指定 plist 文件的格式，可以是以下值之一: *fmt* 为文件的格式，有效的值如下: 用于 plist 文件的 XML 格式。 用于 plist 文件的二进制格式。 可以使用以下的类: 可以使用以下的常量: 当文件无法被解析时二进制格式的解析器将引发 :exc:`InvalidFileException`。 property list (``.plist``) 文件格式是一种简单的序列化格式，它支持一些基本对象类型，例如字典、列表、数字和字符串等。 通常使用一个字典作为最高层级对象。 这个模块定义了以下函数： 此模块提供了可读写 Apple "property list" 文件的接口，它主要用于 macOS 和 iOS 系统。 此模块同时支持二进制和 XML plist 文件。 要以字节串对象形式操作 plist 数据，请使用 :func:`dumps` 和 :func:`loads`。 要写入和解析 plist 文件，请使用 :func:`dump` 和 :func:`load` 函数。 值可以为字符串、整数、浮点数、布尔值、元组、列表、字典（但只允许用字符串作为键）、:class:`bytes`、:class:`bytearray` 或 :class:`datetime.datetime` 对象。 当 *skipkeys* 为假值（默认）时该函数将在字典的键不为字符串时引发 :exc:`TypeError`，否则将跳过这样的键。 当 *sort_keys* 为真值（默认）时字典的键将经过排序再写入 plist，否则将按字典的迭代顺序写入。 包装一个 :class:`int`。 该类将在读取或写入 NSKeyedArchiver 编码的数据时被使用，其中包含 UID（参见 PList 指南）。 将 *value* 写入 plist 文件。 *Fp* 应当可写并且为二进制文件对象。 :data:`FMT_XML` 格式的 XML 数据 会使用来自 :mod:`xml.parsers.expat` 的 Expat 解析器 -- 请参阅其文档了解错误格式 XML 可能引发的异常。 未知元素将被 plist 解析器直接略过。 `PList 指南页面 <https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/PropertyLists/>`_ 文件 plist property list 