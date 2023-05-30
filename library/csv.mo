��    c      4              L  %   M    s  t   �  +   	     /	  4  I	  �   ~
  H   0  <   y  <   �     �  N     %   Z  �   �  ^   `  %   �  $   �  %   
  �   0  �     V     S  e  �   �  �   �  �   �  9  1  �   k  "   �  *     7   E  4   }  �   �     �  	   �  U  �  1    �   7  ]   �    ,  �   H  6   �  B   ,     o  |     �   �  9   �      �   �   �   4   R!  )   �!     �!  d  �!  �  2%  �   �)  ,   [*    �*  3   �+  ,   �+  r   �+    e,  �   k-  W  f.  F   �/  0   0  �   60  �   �0  �   ^1  �   �1  4   �2  6   3  6   D3  6   {3  �  �3  �   ^5  G   86  8   �6  �   �6  �   H7  ,   �7  �  8  ^   �:  T   1;    �;  ~   >  l   �>  W   �>  �   J?  �   &@  �   �@     �A  3   �A     �A     �A     �A     �A  3   �A  �   B     �B  �  �B  %   zD    �D  g   �F     G  P   ?G  L  �G  �   �H  ;   lI  -   �I  ,   �I     J  6   !J  '   XJ  �   �J  S   SK     �K     �K  $   �K  �   L  �   M  M   �M  Y  -N  �   �O  �   |P  �   DQ    �Q  �   U     �U      �U  ,   �U  ,   �U  �   %V     W     W  @   W     aX  �   �Y  a   Z  �   uZ  �   r[  ;   \  D   K\     �\  p   �\  �   ]  6   �]     �]  p   �]  (   e^     �^     �^  �  �^  6  �a  �   �e  '   �f    �f  6   �g  0   h  {   Eh    �h  �   �i  D  �j  7   �k  ,   l  �   Bl  {   �l  �   Wm  �   �m  &   �n  )   �n  )   o  )   ;o  f  eo  �   �p  ?   �q  #   �q  i   �q  j   cr  +   �r  4  �r  F   /u  W   vu  -  �u  z   �w  k   wx  h   �x  �   Ly  �   =z  �   �z     �{  (   �{     �{     �{     �{     �{  !   �{  o   |  "   ||   **Source code:** :source:`Lib/csv.py` :class:`Writer` objects (:class:`DictWriter` instances and objects returned by the :func:`writer` function) have the following public methods.  A *row* must be an iterable of strings or numbers for :class:`Writer` objects and a dictionary mapping fieldnames to strings or numbers (by passing them through :func:`str` first) for :class:`DictWriter` objects.  Note that complex numbers are written out surrounded by parens. This may cause some problems for other programs which read CSV files (assuming they support complex numbers at all). :meth:`writeheader` now also returns the value returned by the :meth:`csvwriter.writerow` method it uses internally. :mod:`csv` --- CSV File Reading and Writing :pep:`305` - CSV File API A one-character string used by the writer to escape the *delimiter* if *quoting* is set to :const:`QUOTE_NONE` and the *quotechar* if *doublequote* is :const:`False`. On reading, the *escapechar* removes any special meaning from the following character. It defaults to :const:`None`, which disables escaping. A one-character string used to quote fields containing special characters, such as the *delimiter* or *quotechar*, or which contain new-line characters.  It defaults to ``'"'``. A one-character string used to separate fields.  It defaults to ``','``. A read-only description of the dialect in use by the parser. A read-only description of the dialect in use by the writer. A short usage example:: A slightly more advanced use of the reader --- catching and reporting errors:: Added support of arbitrary iterables. All available :class:`Dialect` names are returned by :func:`list_dialects`, and they can be registered with specific :class:`reader` and :class:`writer` classes through their initializer (``__init__``) functions like this:: All other optional or keyword arguments are passed to the underlying :class:`reader` instance. An empty *escapechar* is not allowed. An empty *quotechar* is not allowed. An example for :class:`Sniffer` use:: Analyze the given *sample* and return a :class:`Dialect` subclass reflecting the parameters found.  If the optional *delimiters* parameter is given, it is interpreted as a string containing possible valid delimiter characters. Analyze the sample text (presumed to be in CSV format) and return :const:`True` if the first row appears to be a series of column headers. Inspecting each column, one of two key criteria will be considered to estimate if the sample contains a header: And while the module doesn't directly support parsing strings, it can easily be done:: Associate *dialect* with *name*.  *name* must be a string. The dialect can be specified either by passing a sub-class of :class:`Dialect`, or by *fmtparams* keyword arguments, or both, with keyword arguments overriding parameters of the dialect. For full details about dialects and formatting parameters, see section :ref:`csv-fmt-params`. Controls how instances of *quotechar* appearing inside a field should themselves be quoted.  When :const:`True`, the character is doubled. When :const:`False`, the *escapechar* is used as a prefix to the *quotechar*.  It defaults to :const:`True`. Controls when quotes should be generated by the writer and recognised by the reader.  It can take on any of the :const:`QUOTE_\*` constants (see section :ref:`csv-contents`) and defaults to :const:`QUOTE_MINIMAL`. Create an object that operates like a regular reader but maps the information in each row to a :class:`dict` whose keys are given by the optional *fieldnames* parameter. Create an object which operates like a regular writer but maps dictionaries onto output rows.  The *fieldnames* parameter is a :mod:`sequence <collections.abc>` of keys that identify the order in which values in the dictionary passed to the :meth:`writerow` method are written to file *f*.  The optional *restval* parameter specifies the value to be written if the dictionary is missing a key in *fieldnames*.  If the dictionary passed to the :meth:`writerow` method contains a key not found in *fieldnames*, the optional *extrasaction* parameter indicates what action to take. If it is set to ``'raise'``, the default value, a :exc:`ValueError` is raised. If it is set to ``'ignore'``, extra values in the dictionary are ignored. Any other optional or keyword arguments are passed to the underlying :class:`writer` instance. Delete the dialect associated with *name* from the dialect registry.  An :exc:`Error` is raised if *name* is not a registered dialect name. Dialects and Formatting Parameters Dialects support the following attributes: DictReader objects have the following public attribute: DictWriter objects have the following public method: Each row read from the csv file is returned as a list of strings.  No automatic data type conversion is performed unless the ``QUOTE_NONNUMERIC`` format option is specified (in which case unquoted fields are transformed into floats). Examples Footnotes If ``newline=''`` is not specified, newlines embedded inside quoted fields will not be interpreted correctly, and on platforms that use ``\r\n`` linendings on write an extra ``\r`` will be added.  It should always be safe to specify ``newline=''``, since the csv module does its own (:term:`universal <universal newlines>`) newline handling. If a row has more fields than fieldnames, the remaining data is put in a list and stored with the fieldname specified by *restkey* (which defaults to ``None``).  If a non-blank row has fewer fields than fieldnames, the missing values are filled-in with the value of *restval* (which defaults to ``None``). If not passed as a parameter when creating the object, this attribute is initialized upon first access or when the first record is read from the file. If the argument passed to *fieldnames* is an iterator, it will be coerced to a :class:`list`. Instructs :class:`writer` objects to never quote fields.  When the current *delimiter* occurs in output data it is preceded by the current *escapechar* character.  If *escapechar* is not set, the writer will raise :exc:`Error` if any characters that require escaping are encountered. Instructs :class:`writer` objects to only quote those fields which contain special characters such as *delimiter*, *quotechar* or any of the characters in *lineterminator*. Instructs :class:`writer` objects to quote all fields. Instructs :class:`writer` objects to quote all non-numeric fields. Module Contents Note that unlike the :class:`DictReader` class, the *fieldnames* parameter of the :class:`DictWriter` class is not optional. On output, if *doublequote* is :const:`False` and no *escapechar* is set, :exc:`Error` is raised if a *quotechar* is found in a field. Raised by any of the functions when an error is detected. Reader Objects Reader objects (:class:`DictReader` instances and objects returned by the :func:`reader` function) have the following public methods: Reader objects have the following public attributes: Reading a file with an alternate format:: Registering a new dialect:: Return a reader object which will iterate over lines in the given *csvfile*. *csvfile* can be any object which supports the :term:`iterator` protocol and returns a string each time its :meth:`!__next__` method is called --- :term:`file objects <file object>` and list objects are both suitable.   If *csvfile* is a file object, it should be opened with ``newline=''``. [1]_  An optional *dialect* parameter can be given which is used to define a set of parameters specific to a particular CSV dialect.  It may be an instance of a subclass of the :class:`Dialect` class or one of the strings returned by the :func:`list_dialects` function.  The other optional *fmtparams* keyword arguments can be given to override individual formatting parameters in the current dialect.  For full details about the dialect and formatting parameters, see section :ref:`csv-fmt-params`. Return a writer object responsible for converting the user's data into delimited strings on the given file-like object.  *csvfile* can be any object with a :func:`write` method.  If *csvfile* is a file object, it should be opened with ``newline=''`` [1]_.  An optional *dialect* parameter can be given which is used to define a set of parameters specific to a particular CSV dialect.  It may be an instance of a subclass of the :class:`Dialect` class or one of the strings returned by the :func:`list_dialects` function.  The other optional *fmtparams* keyword arguments can be given to override individual formatting parameters in the current dialect.  For full details about dialects and formatting parameters, see the :ref:`csv-fmt-params` section. To make it as easy as possible to interface with modules which implement the DB API, the value :const:`None` is written as the empty string.  While this isn't a reversible transformation, it makes it easier to dump SQL NULL data values to CSV files without preprocessing the data returned from a ``cursor.fetch*`` call. All other non-string data are stringified with :func:`str` before being written. Return the dialect associated with *name*.  An :exc:`Error` is raised if *name* is not a registered dialect name.  This function returns an immutable :class:`Dialect`. Return the names of all registered dialects. Return the next row of the reader's iterable object as a list (if the object was returned from :func:`reader`) or a dict (if it is a :class:`DictReader` instance), parsed according to the current :class:`Dialect`.  Usually you should call this as ``next(reader)``. Returned rows are now of type :class:`OrderedDict`. Returned rows are now of type :class:`dict`. Returns the current maximum field size allowed by the parser. If *new_limit* is given, this becomes the new limit. Since :func:`open` is used to open a CSV file for reading, the file will by default be decoded into unicode using the system default encoding (see :func:`locale.getencoding`).  To decode a file using a different encoding, use the ``encoding`` argument of open:: The *fieldnames* parameter is a :term:`sequence`.  If *fieldnames* is omitted, the values in the first row of file *f* will be used as the fieldnames.  Regardless of how the fieldnames are determined, the dictionary preserves their original ordering. The :class:`Dialect` class is a container class whose attributes contain information for how to handle doublequotes, whitespace, delimiters, etc. Due to the lack of a strict CSV specification, different applications produce subtly different CSV data.  :class:`Dialect` instances define how :class:`reader` and :class:`writer` instances behave. The :class:`Sniffer` class is used to deduce the format of a CSV file. The :class:`Sniffer` class provides two methods: The :class:`excel_tab` class defines the usual properties of an Excel-generated TAB-delimited file.  It is registered with the dialect name ``'excel-tab'``. The :class:`excel` class defines the usual properties of an Excel-generated CSV file.  It is registered with the dialect name ``'excel'``. The :class:`reader` is hard-coded to recognise either ``'\r'`` or ``'\n'`` as end-of-line, and ignores *lineterminator*. This behavior may change in the future. The :class:`unix_dialect` class defines the usual properties of a CSV file generated on UNIX systems, i.e. using ``'\n'`` as line terminator and quoting all fields.  It is registered with the dialect name ``'unix'``. The :mod:`csv` module defines the following classes: The :mod:`csv` module defines the following constants: The :mod:`csv` module defines the following exception: The :mod:`csv` module defines the following functions: The :mod:`csv` module implements classes to read and write tabular data in CSV format.  It allows programmers to say, "write this data in the format preferred by Excel," or "read data from this file which was generated by Excel," without knowing the precise details of the CSV format used by Excel.  Programmers can also describe the CSV formats understood by other applications or define their own special-purpose CSV formats. The :mod:`csv` module's :class:`reader` and :class:`writer` objects read and write sequences.  Programmers can also read and write data in dictionary form using the :class:`DictReader` and :class:`DictWriter` classes. The Python Enhancement Proposal which proposed this addition to Python. The corresponding simplest possible writing example is:: The number of lines read from the source iterator. This is not the same as the number of records returned, as records can span multiple lines. The same applies to writing in something other than the system default encoding: specify the encoding argument when opening the output file. The simplest example of reading a CSV file:: The so-called CSV (Comma Separated Values) format is the most common import and export format for spreadsheets and databases.  CSV format was used for many years prior to attempts to describe the format in a standardized way in :rfc:`4180`.  The lack of a well-defined standard means that subtle differences often exist in the data produced and consumed by different applications.  These differences can make it annoying to process CSV files from multiple sources. Still, while the delimiters and quoting characters vary, the overall format is similar enough that it is possible to write a single module which can efficiently manipulate such data, hiding the details of reading and writing the data from the programmer. The string used to terminate lines produced by the :class:`writer`. It defaults to ``'\r\n'``. This method is a rough heuristic and may produce both false positives and negatives. To make it easier to specify the format of input and output records, specific formatting parameters are grouped together into dialects.  A dialect is a subclass of the :class:`Dialect` class having a set of specific methods and a single :meth:`validate` method.  When creating :class:`reader` or :class:`writer` objects, the programmer can specify a string or a subclass of the :class:`Dialect` class as the dialect parameter.  In addition to, or instead of, the *dialect* parameter, the programmer can also specify individual formatting parameters, which have the same names as the attributes defined below for the :class:`Dialect` class. Twenty rows after the first row are sampled; if more than half of columns + rows meet the criteria, :const:`True` is returned. When :const:`True`, spaces immediately following the *delimiter* are ignored. The default is :const:`False`. When ``True``, raise exception :exc:`Error` on bad CSV input. The default is ``False``. Write a row with the field names (as specified in the constructor) to the writer's file object, formatted according to the current dialect. Return the return value of the :meth:`csvwriter.writerow` call used internally. Write all elements in *rows* (an iterable of *row* objects as described above) to the writer's file object, formatted according to the current dialect. Write the *row* parameter to the writer's file object, formatted according to the current :class:`Dialect`. Return the return value of the call to the *write* method of the underlying file object. Writer Objects Writer objects have the following public attribute: csv csv.reader function data tabular the second through n-th rows contain numeric values the second through n-th rows contain strings where at least one value's length differs from that of the putative header of that column. universal newlines Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-29 16:50+0000
PO-Revision-Date: 2021-06-28 01:03+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码：** :source:`Lib/csv.py` :class:`Writer` 对象（:class:`DictWriter` 实例和 :func:`writer` 函数返回的对象）具有下面的公开方法。对于 :class:`Writer` 对象，*行* 必须是（一组可迭代的）字符串或数字。对于 :class:`DictWriter` 对象，*行* 必须是一个字典，这个字典将字段名映射为字符串或数字（数字要先经过 :func:`str` 转换类型）。请注意，输出的复数会有括号包围。这样其他程序读取 CSV 文件时可能会有一些问题（假设它们完全支持复数）。 现在 :meth:`writeheader` 也返回其内部使用的 :meth:`csvwriter.writerow` 方法的返回值。 :mod:`csv` --- CSV 文件读写 该实现在“Python 增强提议” - PEP `305` (CSV 文件 API)  中被提出 一个用于 writer 的单字符，用来在 *quoting* 设置为 :const:`QUOTE_NONE` 的情况下转义 *定界符*，在 *doublequote* 设置为 :const:`False` 的情况下转义 *引号字符*。在读取时，*escapechar* 去除了其后所跟字符的任何特殊含义。该属性默认为 :const:`None`，表示禁用转义。 一个单字符，用于包住含有特殊字符的字段，特殊字符如 *定界符* 或 *引号字符* 或换行符。默认为 ``'"'``。 一个用于分隔字段的单字符，默认为 ``','``。 变种描述，只读，供解析器使用。 变种描述，只读，供 writer 使用。 一个简短的用法示例:: Reader 的更高级用法——捕获并报告错误:: 开始支持任意类型的迭代器。 所有可用的 :class:`Dialect` 名称会由 :func:`list_dialects` 返回，并且它们可由特定的 :class:`reader` 和 :class:`writer` 类通过它们的初始化函数 (``__init__``) 来注册，例如:: 所有其他可选或关键字参数都传递给底层的 :class:`reader` 实例。 不允许空的 *escapechar*。 不允许空的 *quotechar*。 使用 :class:`Sniffer` 的示例： 分析给定的 *sample* 并返回一个 :class:`Dialect` 子类，该子类中包含了分析出的格式参数。如果给出可选的 *delimiters* 参数，则该参数会被解释为字符串，该字符串包含了可能的有效定界符。 分析 sample 文本（假定为 CSV 格式），如果发现其首行为一组列标题则返回 :const:`True`。 在检查每一列时，将考虑是否满足两个关键标准之一来估计 sample 是否包含标题: 尽管该模块不直接支持解析字符串，但仍可如下轻松完成:: 将 *dialect* 与 *name* 关联起来。  *name* 必须是字符串。 变种的指定可以通过传入一个 :class:`Dialect` 的子类，或通过 *fmtparams* 关键字参数，或是两者同时传入，此时关键字参数会覆盖 dialect 形参。 有关变种和格式化形参的完整细节，请参阅 :ref:`csv-fmt-params` 部分。 控制出现在字段中的 *引号字符* 本身应如何被引出。当该属性为 :const:`True` 时，双写引号字符。如果该属性为 :const:`False`，则在 *引号字符* 的前面放置 *转义符*。默认值为 :const:`True`。 控制 writer 何时生成引号，以及 reader 何时识别引号。该属性可以等于任何 :const:`QUOTE_\*` 常量（参见 :ref:`csv-contents` 段落），默认为 :const:`QUOTE_MINIMAL`。 创建一个对象，该对象在操作上类似于常规 reader，但是将每行中的信息映射到一个 :class:`dict`，该 dict 的键由 *fieldnames* 可选参数给出。 创建一个对象，该对象在操作上类似常规 writer，但会将字典映射到输出行。 *fieldnames* 参数是由键组成的 :mod:`序列 <collections.abc>`，它指定字典中值的顺序，这些值会按指定顺序传递给 :meth:`writerow` 方法并写入文件 *f*。 如果字典缺少 *fieldnames* 中的键，则可选参数 *restval* 用于指定要写入的值。 如果传递给 :meth:`writerow` 方法的字典的某些键在 *fieldnames* 中找不到，则可选参数 *extrasaction* 用于指定要执行的操作。 如果将其设置为默认值 ``'raise'``，则会引发 :exc:`ValueError`。 如果将其设置为 ``'ignore'``，则字典中的其他键值将被忽略。 所有其他可选或关键字参数都传递给底层的 :class:`writer` 实例。 从变种注册表中删除 *name* 对应的变种。如果 *name* 不是已注册的变种名称，则抛出 :exc:`Error` 异常。 变种与格式参数 Dialect 类支持以下属性： DictReader 对象具有以下公开属性： DictWriter 对象具有以下公开方法： csv 文件的每一行都读取为一个由字符串组成的列表。除非指定了 ``QUOTE_NONNUMERIC`` 格式选项（在这种情况下，未加引号的字段会转换为浮点数），否则不会执行自动数据类型转换。 例子 备注 如果没有指定 ``newline=''``，则嵌入引号中的换行符将无法正确解析，并且在写入时，使用 ``\r\n`` 换行的平台会有多余的 ``\r`` 写入。由于 csv 模块会执行自己的（:term:`通用 <universal newlines>`）换行符处理，因此指定 ``newline=''`` 应该总是安全的。 如果某一行中的字段多于字段名，则剩余数据会被放入一个列表，并与 *restkey* 所指定的字段名 (默认为 ``None``) 一起保存。 如果某个非空白行的字段少于字段名，则缺失的值会使用 *restval* 的值来填充 (默认为 ``None``)。 字段名称。如果在创建对象时未传入字段名称，则首次访问时或从文件中读取第一条记录时会初始化此属性。 如果传给 *fieldnames* 的参数是一个迭代器，它将被强制转换为 :class:`list`。 指示 :class:`writer` 对象不使用引号引出字段。当 *定界符* 出现在输出数据中时，其前面应该有 *转义符*。如果未设置 *转义符*，则遇到任何需要转义的字符时，writer 都会抛出 :exc:`Error` 异常。 指示 :class:`writer` 对象仅为包含特殊字符（例如 *定界符*、*引号字符* 或 *行结束符* 中的任何字符）的字段加上引号。 指示 :class:`writer` 对象给所有字段加上引号。 指示 :class:`writer` 对象为所有非数字字段加上引号。 模块内容 注意，与 :class:`DictReader` 类不同，:class:`DictWriter` 类的 *fieldnames* 参数不是可选参数。 在输出时，如果 *doublequote* 是 :const:`False`，且 *转义符* 未指定，且在字段中发现 *引号字符* 时，会抛出 :exc:`Error` 异常。 该异常可能由任何发生错误的函数抛出。 Reader 对象 Reader 对象（:class:`DictReader` 实例和 :func:`reader` 函数返回的对象）具有以下公开方法： Reader 对象具有以下公开属性： 读取其他格式的文件:: 注册一个新的变种:: 返回一个 reader 对象，该对象将逐行遍历 *csvfile*。*csvfile* 可以是任何对象，只要这个对象支持 :term:`iterator` 协议并在每次调用 :meth:`!__next__` 方法时都返回字符串，:term:`文件对象 <file object>` 和列表对象均适用。如果 *csvfile* 是文件对象，则打开它时应使用 ``newline=''``。 [1]_ 可选参数 *dialect* 是用于不同的 CSV 变种的特定参数组。它可以是 :class:`Dialect` 类的子类的实例，也可以是 :func:`list_dialects` 函数返回的字符串之一。另一个可选关键字参数 *fmtparams* 可以覆写当前变种格式中的单个格式设置。有关变种和格式设置参数的完整详细信息，请参见 :ref:`csv-fmt-params` 部分。 返回一个 writer 对象，该对象负责将用户的数据在给定的文件类对象上转换为带分隔符的字符串。 *csvfile* 可以是任何具有 :func:`write` 方法的对象。 如果 *csvfile* 是一个文件对象，则打开它时应使用 ``newline=''`` [1]_。 可以给出可选的 *dialect* 形参用来定义一组特定 CSV 变种专属的形参。 它可以是 :class:`Dialect` 类的某个子类的实例或是 :func:`list_dialects` 函数所返回的字符串之一。 还可以给出另一个可选的 *fmtparams* 关键字参数来覆盖当前变种中的单个格式化形参。 有关各个变种和格式化形参的完整细节，请参阅 :ref:`csv-fmt-params` 部分。 为了尽量简化与实现 DB API 的模块之间的接口，:const:`None` 值会被当作空字符串写入。 虽然这个转换是不可逆的，但它可以简化 SQL NULL 数据值到 CSV 文件的转储而无需预处理从 ``cursor.fetch*`` 调用返回的数据。 在被写入之前所有其他非字符串数据都会先用 :func:`str` 来转转为字符串。 返回 *name* 对应的变种。如果 *name* 不是已注册的变种名称，则抛出 :exc:`Error` 异常。该函数返回的是不可变的 :class:`Dialect` 对象。 返回所有已注册变种的名称。 返回 reader 的可迭代对象的下一行，它可以是一个列表（如果对象是由 :func:`reader` 返回）或字典（如果是一个 :class:`DictReader` 实例），根据当前 :class:`Dialect` 来解析。 通常你应当以 ``next(reader)`` 的形式来调用它。 返回的行现在的类型是 :class:`OrderedDict`。 现在，返回的行是 :class:`dict` 类型。 返回解析器当前允许的最大字段大小。如果指定了 *new_limit*，则它将成为新的最大字段大小。 由于 :func:`open` 被用来打开 CSV 文件供读取，因此在默认情况下将使用系统默认编码格式  (参见 :func:`locale.getencoding`) 把文件解码至 unicode。 要使用其他编码格式来解码文件，请使用 open 的 ``encoding`` 参数:: *fieldnames* 参数是一个 :term:`sequence`。如果省略 *fieldnames*，则文件 *f* 第一行中的值将用作字段名。无论字段名是如何确定的，字典都将保留其原始顺序。 :class:`Dialect` 类是一个容器类，其属性包含有如何处理双引号、空白符、分隔符等的信息。 由于缺少严格的 CSV 规格描述，不同的应用程序会产生略有差别的 CSV 数据。  :class:`Dialect` 实例定义了 :class:`reader` 和 :class:`writer` 实例将具有怎样的行为。 :class:`Sniffer` 类用于推断 CSV 文件的格式。 :class:`Sniffer` 类提供了两个方法： :class:`excel_tab` 类定义了 Excel 生成的、制表符分隔的 CSV 文件的常规属性。它在变种注册表中的名称是 ``'excel-tab'``。 :class:`excel` 类定义了 Excel 生成的 CSV 文件的常规属性。它在变种注册表中的名称是 ``'excel'``。 :class:`reader` 经过硬编码，会识别 ``'\r'`` 或 ``'\n'`` 作为行尾，并忽略 *lineterminator*。未来可能会更改这一行为。 :class:`unix_dialect` 类定义了在 UNIX 系统上生成的 CSV 文件的常规属性，即使用 ``'\n'`` 作为换行符，且所有字段都有引号包围。它在变种注册表中的名称是 ``'unix'``。 :mod:`csv` 模块定义了以下类： :mod:`csv` 模块定义了以下常量： :mod:`csv` 模块定义了以下异常： :mod:`csv` 模块定义了以下函数： :mod:`csv` 模块实现了 CSV 格式表单数据的读写。其提供了诸如“以兼容 Excel 的方式输出数据文件”或“读取 Excel 程序输出的数据文件”的功能，程序员无需知道 Excel 所采用 CSV 格式的细节。此模块同样可以用于定义其他应用程序可用的 CSV 格式或定义特定需求的 CSV 格式。 :mod:`csv` 模块中的 :class:`reader` 类和 :class:`writer` 类可用于读写序列化的数据。也可使用 :class:`DictReader` 类和 :class:`DictWriter` 类以字典的形式读写数据。 《Python 增强提议》提出了对 Python 的这一补充。 相应最简单的写入示例是:: 源迭代器已经读取了的行数。它与返回的记录数不同，因为记录可能跨越多行。 这同样适用于写入非系统默认编码的内容：打开输出文件时，指定 encoding 参数。 读取 CSV 文件最简单的一个例子:: CSV (Comma Separated Values) 格式是电子表格和数据库中最常见的输入、输出文件格式。在 :rfc:`4180` 规范推出的很多年前，CSV 格式就已经被开始使用了，由于当时并没有合理的标准，不同应用程序读写的数据会存在细微的差别。这种差别让处理多个来源的 CSV 文件变得困难。但尽管分隔符会变化，此类文件的大致格式是相似的，所以编写一个单独的模块以高效处理此类数据，将程序员从读写数据的繁琐细节中解放出来是有可能的。 放在 :class:`writer` 产生的行的结尾，默认为 ``'\r\n'``。 此方法是一个粗略的启发式方式，有可能产生错误的真值和假值。 为了更容易指定输入和输出记录的格式，特定的一组格式参数组合为一个 dialect（变种）。一个 dialect 是一个 :class:`Dialect` 类的子类，它具有一组特定的方法和一个 :meth:`validate` 方法。创建 :class:`reader` 或 :class:`writer` 对象时，程序员可以将某个字符串或 :class:`Dialect` 类的子类指定为 dialect 参数。要想补充或覆盖 *dialect* 参数，程序员还可以单独指定某些格式参数，这些参数的名称与下面 :class:`Dialect` 类定义的属性相同。 会对第一行之后的二十行进行采样；如果有超过一半的列 + 行符合标准，则返回 :const:`True`。 当为 :const:`True` 时，紧接在 *delimiter* 之后空格会被忽略。 默认值为 :const:`False`。 如果为 ``True``，则在输入错误的 CSV 时抛出 :exc:`Error` 异常。默认值为 ``False``。 在 writer 的文件对象中，写入一行字段名称（字段名称在构造函数中指定），并根据当前设置的变种进行格式化。本方法的返回值就是内部使用的 :meth:`csvwriter.writerow` 方法的返回值。 将 *rows*（即能迭代出多个上述 *row* 对象的迭代器）中的所有元素写入 writer 的文件对象，并根据当前设置的变种进行格式化。 将 *row* 形参写入到 writer 的文件对象，根据当前 :class:`Dialect` 进行格式化。 返回对下层文件对象的 *write* 方法的调用的返回值。 Writer 对象 Writer 对象具有以下公开属性： csv csv.reader 函数 数据 tabular 第二至第 n 行包含数字值 第二至第 n 行包含字符串值，其中至少有一个值的长度与该列预期标题的长度不同。 universal newlines -- 通用换行 