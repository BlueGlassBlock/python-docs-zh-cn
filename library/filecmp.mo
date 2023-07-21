��    (      \              �  )   �  1   �  �   �  �   �  ]   L  b   �  A     A   O  -   �  %   �  %   �       Z   &  ?   �  m   �  �   /  �   �  �   x  :   	  �   R	  c   �	  �   :
  P   �
  �   9  ?   �  K     O   T  �  �  #   >  Z   b     �  m   �  �   E  9   �  �   !  :   �          )  �   <  �    '   �  +   �  �   %  �   �  V   �  o   �  G   S  G   �  =   �  ,   !  ,   N  1   {  U   �  1     [   5  �   �  p   `  �   �  2   l  f   �  c     �   j  T     �   f  L   	  >   V  C   �  �  �  4   c  M   �     �  c   �  p   ^   (   �   �   �   .   �!     �!     �!  �   "   **Source code:** :source:`Lib/filecmp.py` :mod:`filecmp` --- File and Directory Comparisons A dictionary mapping names in :attr:`common_dirs` to :class:`dircmp` instances (or MyDirCmp instances if this instance is of type MyDirCmp, a subclass of :class:`dircmp`). Clear the filecmp cache. This may be useful if a file is compared so quickly after it is modified that it is within the mtime resolution of the underlying filesystem. Compare the files in the two directories *dir1* and *dir2* whose names are given by *common*. Compare the files named *f1* and *f2*, returning ``True`` if they seem equal, ``False`` otherwise. Files and subdirectories in *a*, filtered by *hide* and *ignore*. Files and subdirectories in *b*, filtered by *hide* and *ignore*. Files and subdirectories in both *a* and *b*. Files and subdirectories only in *a*. Files and subdirectories only in *b*. Files in both *a* and *b*. Files which are identical in both *a* and *b*, using the class's file comparison operator. Files which are in both *a* and *b*, but could not be compared. Files which are in both *a* and *b*, whose contents differ according to the class's file comparison operator. For example, ``cmpfiles('a', 'b', ['c', 'd/e'])`` will compare ``a/c`` with ``b/c`` and ``a/d/e`` with ``b/d/e``.  ``'c'`` and ``'d/e'`` will each be in one of the three returned lists. Here is a simplified example of using the ``subdirs`` attribute to search recursively through two directories to show common different files:: If *shallow* is true and the :func:`os.stat` signatures (file type, size, and modification time) of both files are identical, the files are taken to be equal. List of directories ignored by :class:`dircmp` by default. Names in both *a* and *b*, such that the type differs between the directories, or names for which :func:`os.stat` reports an error. Note that no external programs are called from this function, giving it portability and efficiency. Note that via :meth:`__getattr__` hooks, all attributes are computed lazily, so there is no speed penalty if only those attributes which are lightweight to compute are used. Otherwise, the files are treated as different if their sizes or contents differ. Previously entries were always :class:`dircmp` instances. Now entries are the same type as *self*, if *self* is a subclass of :class:`dircmp`. Print (to :data:`sys.stdout`) a comparison between *a* and *b*. Print a comparison between *a* and *b* and common immediate subdirectories. Print a comparison between *a* and *b* and common subdirectories (recursively). Returns three lists of file names: *match*, *mismatch*, *errors*.  *match* contains the list of files that match, *mismatch* contains the names of those that don't, and *errors* lists the names of files which could not be compared.  Files are listed in *errors* if they don't exist in one of the directories, the user lacks permission to read them or if the comparison could not be done for some other reason. Subdirectories in both *a* and *b*. The *shallow* parameter has the same meaning and default value as for :func:`filecmp.cmp`. The :class:`dircmp` class The :class:`dircmp` class compares files by doing *shallow* comparisons as described for :func:`filecmp.cmp`. The :class:`dircmp` class offers a number of interesting attributes that may be used to get various bits of information about the directory trees being compared. The :class:`dircmp` class provides the following methods: The :mod:`filecmp` module defines functions to compare files and directories, with various optional time/correctness trade-offs. For comparing files, see also the :mod:`difflib` module. The :mod:`filecmp` module defines the following functions: The directory *a*. The directory *b*. This function uses a cache for past comparisons and the results, with cache entries invalidated if the :func:`os.stat` information for the file changes.  The entire cache may be cleared using :func:`clear_cache`. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 01:06+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码:** :source:`Lib/filecmp.py` :mod:`filecmp` --- 文件及目录的比较 一个将 :attr:`common_dirs` 中的名称映射到 :class:`dircmp` 实例（或者 MyDirCmp 实例，如果该实例类型为 :class:`dircmp` 的子类 MyDirCmp 的话）的字典。 清除 filecmp 缓存。如果一个文件过快地修改，以至于超过底层文件系统记录修改时间的精度，那么该函数可能有助于比较该类文件。 比较在两个目录 *dir1* 和 *dir2* 中，由 *common* 所确定名称的文件。 比较名为 *f1* 和 *f2* 的文件，如果它们似乎相等则返回 ``True`` ，否则返回 ``False`` 。 经 *hide* 和 *ignore* 过滤，目录 *a* 中的文件与子目录。 经 *hide* 和 *ignore* 过滤，目录 *b* 中的文件与子目录。 同时存在于目录 *a* 和 *b* 中的文件和子目录。 仅在目录 *a* 中的文件和子目录。 仅在目录 *b* 中的文件和子目录。 同时存在于目录 *a* 和 *b* 中的文件。 在目录 *a* 和 *b* 中，使用类的文件比较操作符判定相等的文件。 在目录 *a* 和 *b* 中无法比较的文件。 在目录 *a* 和 *b* 中，根据类的文件比较操作符判定内容不等的文件。 例如， ``cmpfiles('a', 'b', ['c', 'd/e'])`` 将会比较 ``a/c`` 与 ``b/c`` 以及 ``a/d/e`` 与 ``b/d/e`` 。 ``'c'`` 和 ``'d/e'`` 将会各自出现在返回的三个列表里的某一个列表中。 下面是一个简单的例子，使用 ``subdirs`` 属性递归搜索两个目录以显示公共差异文件： 如果 *shallow* 为真值且两个文件的 :func:`os.stat` 签名信息（文件类型、大小和修改时间）一致，则文件会被视为相同。 默认被 :class:`dircmp` 忽略的目录列表。 在目录 *a* 和 *b* 中类型不同的名字，或者那些 :func:`os.stat` 报告错误的名字。 需要注意，没有外部程序被该函数调用，这赋予了该函数可移植性与效率。 需要注意，通过 :meth:`__getattr__`  钩子，所有的属性将会惰性求值，因此如果只使用那些计算简便的属性，将不会有速度损失。 在其他情况下，如果文件大小或内容不同则它们会被视为不同。 在之前版本中字典条目总是为 :class:`dircmp` 实例。 现在条目将与 *self* 的类型相同，如果 *self* 为 :class:`dircmp` 的子类的话。 将 *a* 与 *b* 之间的比较结果打印（到  :data:`sys.stdout` ）。 打印 *a* 与 *b*  及共同直接子目录的比较结果。 打印 *a* 与 *b* 及共同子目录比较结果（递归地）。 返回三组文件名列表： *match*, *mismatch*, *errors* 。 *match* 含有相匹配的文件， *mismatch* 含有那些不匹配的，然后 *errors* 列出那些未被比较文件的名称。如果文件不存在于两目录中的任一个，或者用户缺少读取它们的权限，又或者因为其他的一些原因而无法比较，那么这些文件将会被列在 *errors* 中。 同时存在于目录 *a* 和 *b* 中的子目录。 参数 *shallow* 具有同 :func:`filecmp.cmp` 一致的含义与默认值。 :class:`dircmp` 类 :class:`dircmp` 类如 :func:`filecmp.cmp` 中所描述的那样对文件进行 *shallow* 比较。 :class:`dircmp` 类提供了一些有趣的属性，用以得到关于参与比较的目录树的各种信息。 :class:`dircmp` 类提供以下方法： :mod:`filecmp` 模块定义了用于比较文件及目录的函数，并且可以选取多种关于时间和准确性的折衷方案。对于文件的比较，另见 :mod:`difflib` 模块。 :mod:`filecmp`  模块定义了如下函数： 目录 *a* 。 目录 *b* 。 该函数会缓存过去的比较及其结果，且在文件的 :func:`os.stat` 信息变化后缓存条目失效。所有的缓存可以通过使用  :func:`clear_cache` 来清除。 