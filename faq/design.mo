��    �      $              ,  w  -    �	  s  �  �   3      [     #  q  N   �    �  �   �  �   �  �   �  �   �     z  \   �  C  �  �   *  �   
  A   �  h   :     �     �  �  �  �  �  �   *!  y   �!  �   %"  �   �"  5   X#  D  �#  �   �$  �  �%  C  '  �   P(  �   )  ,   �)  %   �)  ;   �)     :*     Y*  �   r*  �   a+  �   �+  �   �,  l   �-  J   ,.  /   w.  w  �.  y   0  �   �0  �   �1  �   v2    ;3  �   A5  }  �5  �   G7  �   �7  �   �8  �  29  �   �:  �   �;  F  �<    >  �  (?  \  �@  T   B  ?  rB  �  �C  6  iE  $   �G     �G  �   �G  4   �H      �H  N   I  �  OJ  ~   L  �  �L  =  {N  g  �O  _   !R  ,  �R  _   �S     T  (   ,T  2   UT  �   �T  �   @U  }   �U  �   ZV  �  �V  5  �X  0   �Y    Z    [  C   \  !   c\  >   �\  2   �\  1   �\  /   )]  0   Y]  7   �]  <   �]  ;   �]  p   ;^  E   �^  E   �^  /   8_  0   h_  @   �_     �_  .   �_  5   `  C   U`  &   �`  G  �`  �   b  �   �b  �   �c  G   ^d  �   �d  �   7e  	   �e     �e     f  �   f     �f  �  g  K  �h  �  j  J  �k  �   m  �  �m  >   �o    �o  <   �p  �   2q  �   �q  �   �r  �   |s  �   At     �t  L   �t  :  Ku  �   �v  �   Aw  =   x  c   Tx     �x     �x  <  �x  *  |  ^   C~  j   �~  z     �   �  ,   �    <�  �   V�  7  �    V�  �   s�  �   '�  (   ��  (   �  0   �     <�     X�  �   k�  �   E�  �   ̇  �   ��  d   I�  K   ��  0   ��  Q  +�  i   }�  �   �  �   ׌  �   ��  �  5�  t   	�  F  ~�  �   ő  o   \�  �   ̒  K  i�  �   ��  �   |�    b�  �   �  {  [�  ;  י  N   �    b�  �  e�  �  �  $   ��     �  �   ��  3   ��  *   Ѡ  %  ��  �  "�  X   ��  ~  �  %  ��    ��  \   ��  !  �  O   1�     ��  !   ��  -   ��  �   �  �   o�  X   �     ^�  �  ެ    u�  ,   ��  �   ��  �   ��  6   w�  *   ��  1   ٱ  !   �  3   -�  '   a�  -   ��  B   ��  ?   ��  /   :�  �   j�  :   �  7   -�  1   e�  *   ��  J   ´     �  1   $�  .   V�  C   ��  *   ɵ  ?  ��  �   4�  �   �  �   ܸ  G   t�  �   ��  �   D�     �     �     ��  �   �     �   (a) For some operations, prefix notation just reads better than postfix -- prefix (and infix!) operations have a long tradition in mathematics which likes notations where the visuals help the mathematician thinking about a problem. Compare the easy with which we rewrite a formula like x*(a+b) into x*a + x*b to the clumsiness of doing the same thing using a raw OO notation. (b) When I read code that says len(x) I *know* that it is asking for the length of something. This tells me two things: the result is an integer, and the argument is some kind of container. To the contrary, when I read x.len(), I have to already know that x is some kind of container implementing an interface or inheriting from a class that has a standard len(). Witness the confusion we occasionally have when a class that is not implementing a mapping has a get() or keys() method, or something that isn't a file has a write() method. :meth:`~str.join` is a string method because in using it you are telling the separator string to iterate over a sequence of strings and insert itself between adjacent elements.  This method can be used with any argument which obeys the rules for sequence objects, including any new classes you might define yourself. Similar methods exist for bytes and bytearray objects. A :keyword:`try`/:keyword:`except` block is extremely efficient if no exceptions are raised.  Actually catching an exception is expensive.  In versions of Python prior to 2.0 it was common to use this idiom:: A good test suite for a module can both provide a regression test and serve as a module interface specification and a set of examples.  Many Python modules can be run as a script to provide a simple "self test."  Even modules which use complex external interfaces can often be tested in isolation using trivial "stub" emulations of the external interface.  The :mod:`doctest` and :mod:`unittest` modules or third-party test frameworks can be used to construct exhaustive test suites that exercise every line of code in a module. Accidentally omitting the comma can lead to errors that are hard to diagnose. For example:: Allow lists as keys but tell the user not to modify them.  This would allow a class of hard-to-track bugs in programs when you forgot or modified a list by accident. It also invalidates an important invariant of dictionaries: every value in ``d.keys()`` is usable as a key of the dictionary. Allowing the trailing comma may also make programmatic code generation easier. An interface specification for a module as provided by languages such as C++ and Java describes the prototypes for the methods and functions of the module.  Many feel that compile-time enforcement of interface specifications helps in the construction of large programs. Another advantage is that strings in Python are considered as "elemental" as numbers.  No amount of activity will change the value 8 to anything else, and in Python, no amount of activity will change the string "eight" to anything else. Another minor reason is that the colon makes it easier for editors with syntax highlighting; they can look for colons to decide when indentation needs to be increased instead of having to do a more elaborate parsing of the program text. Answer 1: Unfortunately, the interpreter pushes at least one C stack frame for each Python stack frame.  Also, extensions can call back into Python at almost random moments.  Therefore, a complete threads implementation requires thread support for C. Answer 2: Fortunately, there is `Stackless Python <https://github.com/stackless-dev/stackless/wiki>`_, which has a completely redesigned interpreter loop that avoids the C stack. As Guido said: Assignment expressions using the walrus operator ``:=`` assign a variable in an expression:: Because there are no begin/end brackets, Python is much less prone to coding-style conflicts.  In C there are many different ways to place the braces. After becoming used to reading and writing code using a particular style, it is normal to feel somewhat uneasy when reading (or being required to write) in a different one. CPython's dictionaries are implemented as resizable hash tables.  Compared to B-trees, this gives better performance for lookup (the most common operation by far) under most circumstances, and the implementation is simpler. CPython's lists are really variable-length arrays, not Lisp-style linked lists. The implementation uses a contiguous array of references to other objects, and keeps a pointer to this array and the array's length in a list head structure. Can Python be compiled to machine code, C or some other language? Can't you emulate threads in the interpreter instead of relying on an OS-specific thread implementation? Contents Design and History FAQ Finally, for instance variables it solves a syntactic problem with assignment: since local variables in Python are (by definition!) those variables to which a value is assigned in a function body (and that aren't explicitly declared global), there has to be some way to tell the interpreter that an assignment was meant to assign to an instance variable instead of to a local variable, and it should preferably be syntactic (for efficiency reasons).  C++ does this through declarations, but Python doesn't have declarations and it would be a pity having to introduce them just for this purpose.  Using the explicit ``self.var`` solves this nicely.  Similarly, for using instance variables, having to write ``self.var`` means that references to unqualified names inside a method don't have to search the instance's directories.  To put it another way, local variables and instance variables live in two different namespaces, and you need to tell Python which namespace to use. First, it's more obvious that you are using a method or instance attribute instead of a local variable.  Reading ``self.x`` or ``self.meth()`` makes it absolutely clear that an instance variable or method is used even if you don't know the class definition by heart.  In C++, you can sort of tell by the lack of a local variable declaration (assuming globals are rare or easily recognizable) -- but in Python, there are no local variable declarations, so you'd have to look up the class definition to be sure.  Some C++ and Java coding standards call for instance attributes to have an ``m_`` prefix, so this explicitness is still useful in those languages, too. For Python, many of the advantages of interface specifications can be obtained by an appropriate test discipline for components. For a fuller explanation, please see the :ref:`floating point arithmetic <tut-fp-issues>` chapter in the Python tutorial. For calling methods on objects, you can simplify yet further by using the :func:`getattr` built-in to retrieve methods with a particular name:: For cases where you need to choose from a very large number of possibilities, you can create a dictionary mapping case values to functions to call.  For example:: For instance, take the following incomplete snippet:: For one thing, this is not a C standard feature and hence it's not portable. (Yes, we know about the Boehm GC library.  It has bits of assembler code for *most* common platforms, not for all of them, and although it is mostly transparent, it isn't completely transparent; patches are required to get Python to work with it.) For this specific case, you could also use ``value = dict.setdefault(key, getvalue(key))``, but only if the ``getvalue()`` call is cheap enough because it is evaluated in all cases. Functions are already first class objects in Python, and can be declared in a local scope.  Therefore the only advantage of using a lambda instead of a locally defined function is that you don't need to invent a name for the function -- but that's just a local variable to which the function object (which is exactly the same type of object that a lambda expression yields) is assigned! Furthermore it must always be the case that if ``o1 == o2`` (ie ``o1.__eq__(o2) is True``) then ``hash(o1) == hash(o2)`` (ie, ``o1.__hash__() == o2.__hash__()``), regardless of whether the object is in a dictionary or not.  If you fail to meet these restrictions dictionaries and other hash based structures will misbehave. Guido van Rossum believes that using indentation for grouping is extremely elegant and contributes a lot to the clarity of the average Python program. Most people learn to love this feature after a while. Hash lists by their address (object ID).  This doesn't work because if you construct a new list with the same value it won't be found; e.g.:: How are dictionaries implemented in CPython? How are lists implemented in CPython? How do you specify and enforce an interface spec in Python? How does Python manage memory? How fast are exceptions? If you want a dictionary indexed with a list, simply convert the list to a tuple first; the function ``tuple(L)`` creates a tuple with the same entries as the list ``L``.  Tuples are immutable and can therefore be used as dictionary keys. If you want to force Python to delete certain things on deallocation use the :mod:`atexit` module to run a function that will force those deletions. If you want to return a new list, use the built-in :func:`sorted` function instead.  This function creates a new list from a provided iterable, sorts it and returns it.  For example, here's how to iterate over the keys of a dictionary in sorted order:: If you want to write code that will work with any Python implementation, you should explicitly close the file or use the :keyword:`with` statement; this will work regardless of memory management scheme:: If you're trying to build Windows pathnames, note that all Windows system calls accept forward slashes too:: If you're trying to build a pathname for a DOS command, try e.g. one of :: In Python, such a construct would be ambiguous. In situations where performance matters, making a copy of the list just to sort it would be wasteful. Therefore, :meth:`list.sort` sorts the list in place. In order to remind you of that fact, it does not return the sorted list.  This way, you won't be fooled into accidentally overwriting a list when you need a sorted copy but also need to keep the unsorted version around. In some Python implementations, the following code (which is fine in CPython) will probably run out of file descriptors:: Indeed, using CPython's reference counting and destructor scheme, each new assignment to ``f`` closes the previous file.  With a traditional GC, however, those file objects will only get collected (and closed) at varying and possibly long intervals. It's suggested that you use a prefix for the method names, such as ``visit_`` in this example.  Without such a prefix, if values are coming from an untrusted source, an attacker would be able to call any method on your object. Make a copy when using a list as a key.  This doesn't work because the list, being a mutable object, could contain a reference to itself, and then the copying code would run into an infinite loop. Many coding styles place begin/end brackets on a line by themselves.  This makes programs considerably longer and wastes valuable screen space, making it harder to get a good overview of a program.  Ideally, a function should fit on one screen (say, 20--30 lines).  20 lines of Python can do a lot more work than 20 lines of C.  This is not solely due to the lack of begin/end brackets -- the lack of declarations and the high-level data types are also responsible -- but the indentation-based syntax certainly helps. Many numbers that can be written easily in decimal notation cannot be expressed exactly in binary floating-point.  For example, after:: Mark lists as read-only once they are used as a dictionary key.  The problem is that it's not just the top-level object that could change its value; you could use a tuple containing a list as a key.  Entering anything as a key into a dictionary would require marking all objects reachable from there as read-only -- and again, self-referential objects could cause an infinite loop. More precisely, they can't end with an odd number of backslashes: the unpaired backslash at the end escapes the closing quote character, leaving an unterminated string. Note that the hash computation is complicated by the possibility that some members of the list may be unhashable and also by the possibility of arithmetic overflow. Notice how the second one is slightly easier to read.  Notice further how a colon sets off the example in this FAQ answer; it's a standard usage in English. Objects referenced from the global namespaces of Python modules are not always deallocated when Python exits.  This may happen if there are circular references.  There are also certain bits of memory that are allocated by the C library that are impossible to free (e.g. a tool like Purify will complain about these).  Python is, however, aggressive about cleaning up memory on exit and does try to destroy every single object. One is performance: knowing that a string is immutable means we can allocate space for it at creation time, and the storage requirements are fixed and unchanging.  This is also one of the reasons for the distinction between tuples and lists. Only the ``x++`` statement is executed if the condition is true, but the indentation leads many to believe otherwise.  Even experienced C programmers will sometimes stare at it a long time wondering as to why ``y`` is being decremented even for ``x > y``. Other implementations (such as `Jython <https://www.jython.org>`_ or `PyPy <https://www.pypy.org>`_), however, can rely on a different mechanism such as a full-blown garbage collector.  This difference can cause some subtle porting problems if your Python code depends on the behavior of the reference counting implementation. Other languages, such as Object Pascal, Delphi, and C++, use static types, so it's possible to know, in an unambiguous way, what member is being assigned to. This is the main point of static typing -- the compiler *always* knows the scope of every variable at compile time. Python 2.6 adds an :mod:`abc` module that lets you define Abstract Base Classes (ABCs).  You can then use :func:`isinstance` and :func:`issubclass` to check whether an instance or a class implements a particular ABC.  The :mod:`collections.abc` module defines a set of useful ABCs such as :class:`~collections.abc.Iterable`, :class:`~collections.abc.Container`, and :class:`~collections.abc.MutableMapping`. Python lambda expressions cannot contain statements because Python's syntactic framework can't handle statements nested inside expressions.  However, in Python, this is not a serious problem.  Unlike lambda forms in other languages, where they add functionality, Python lambdas are only a shorthand notation if you're too lazy to define a function. Python lets you add a trailing comma at the end of lists, tuples, and dictionaries:: Python uses dynamic types. It is impossible to know in advance which attribute will be referenced at runtime. Member attributes may be added or removed from objects on the fly. This makes it impossible to know, from a simple reading, what attribute is being referenced: a local one, a global one, or a member attribute? Raw strings were designed to ease creating input for processors (chiefly regular expression engines) that want to do their own backslash escape processing. Such processors consider an unmatched trailing backslash to be an error anyway, so raw strings disallow that.  In return, they allow you to pass on the string quote character by escaping it with a backslash.  These rules work well when r-strings are used for their intended purpose. Second, it means that no special syntax is necessary if you want to explicitly reference or call the method from a particular class.  In C++, if you want to use a method from a base class which is overridden in a derived class, you have to use the ``::`` operator -- in Python you can write ``baseclass.methodname(self, <argument list>)``.  This is particularly useful for :meth:`~object.__init__` methods, and in general in cases where a derived class method wants to extend the base class method of the same name and thus has to call the base class method somehow. See :pep:`572` for more information. See the next question. Since there are no begin/end brackets there cannot be a disagreement between grouping perceived by the parser and the human reader.  Occasionally C programmers will encounter a fragment of code like this:: Some unacceptable solutions that have been proposed: Starting in Python 3.8, you can! Strings became much more like other standard types starting in Python 1.6, when methods were added which give the same functionality that has always been available using the functions of the string module.  Most of these new methods have been widely accepted, but the one which appears to make some programmers feel uncomfortable is:: The :class:`float` type in CPython uses a C ``double`` for storage.  A :class:`float` object's value is stored in binary floating-point with a fixed precision (typically 53 bits) and Python uses C operations, which in turn rely on the hardware implementation in the processor, to perform floating-point operations. This means that as far as floating-point operations are concerned, Python behaves like many popular languages including C and Java. The colon is required primarily to enhance readability (one of the results of the experimental ABC language).  Consider this:: The details of Python memory management depend on the implementation.  The standard implementation of Python, :term:`CPython`, uses reference counting to detect inaccessible objects, and another mechanism to collect reference cycles, periodically executing a cycle detection algorithm which looks for inaccessible cycles and deletes the objects involved. The :mod:`gc` module provides functions to perform a garbage collection, obtain debugging statistics, and tune the collector's parameters. The first runs along the lines of: "It looks really ugly using a method of a string literal (string constant)", to which the answer is that it might, but a string literal is just a fixed value. If the methods are to be allowed on names bound to strings there is no logical reason to make them unavailable on literals. The hash table implementation of dictionaries uses a hash value calculated from the key value to find the key.  If the key were a mutable object, its value could change, and thus its hash could also change.  But since whoever changes the key object can't tell that it was being used as a dictionary key, it can't move the entry around in the dictionary.  Then, when you try to look up the same object in the dictionary it won't be found because its hash value is different. If you tried to look up the old value it wouldn't be found either, because the value of the object found in that hash bin would be different. The idea was borrowed from Modula-3.  It turns out to be very useful, for a variety of reasons. The second objection is typically cast as: "I am really telling a sequence to join its members together with a string constant".  Sadly, you aren't.  For some reason there seems to be much less difficulty with having :meth:`~str.split` as a string method, since in that case it is easy to see that :: The typical precision of 53 bits provides Python floats with 15--16 decimal digits of accuracy. There are several advantages. There are several reasons to allow this. There are two common arguments against this usage. This also has the side-effect of increasing execution speed because name bindings are resolved at run-time in Python, and the second version only needs to perform the resolution once. This list looks like it has four elements, but it actually contains three: "fee", "fiefoo" and "fum".  Always adding the comma avoids this source of error. This makes indexing a list ``a[i]`` an operation whose cost is independent of the size of the list or the value of the index. This only made sense when you expected the dict to have the key almost all the time.  If that wasn't the case, you coded it like this:: Traditional GC also becomes a problem when Python is embedded into other applications.  While in a standalone Python it's fine to replace the standard ``malloc()`` and ``free()`` with versions provided by the GC library, an application embedding Python may want to have its *own* substitute for ``malloc()`` and ``free()``, and may not want Python's.  Right now, CPython works with anything that implements ``malloc()`` and ``free()`` properly. Tuples are immutable, meaning that once a tuple has been created, you can't replace any of its elements with a new value.  Lists are mutable, meaning that you can always change a list's elements.  Only immutable elements can be used as dictionary keys, and hence only tuples and not lists can be used as keys. Users are often surprised by results like this:: When items are appended or inserted, the array of references is resized.  Some cleverness is applied to improve the performance of appending items repeatedly; when the array must be grown, some extra space is allocated so the next few times don't require an actual resize. When you have a literal value for a list, tuple, or dictionary spread across multiple lines, it's easier to add more elements because you don't have to remember to add a comma to the previous line.  The lines can also be reordered without creating a syntax error. Why am I getting strange results with simple arithmetic operations? Why are Python strings immutable? Why are colons required for the if/while/def/class statements? Why are floating-point calculations so inaccurate? Why are there separate tuple and list data types? Why can't I use an assignment in an expression? Why can't lambda expressions contain statements? Why can't raw strings (r-strings) end with a backslash? Why does Python allow commas at the end of lists and tuples? Why does Python use indentation for grouping of statements? Why does Python use methods for some functionality (e.g. list.index()) but functions for other (e.g. len(list))? Why doesn't CPython use a more traditional garbage collection scheme? Why doesn't Python have a "with" statement for attribute assignments? Why doesn't list.sort() return the sorted list? Why don't generators support the with statement? Why is join() a string method instead of a list or tuple method? Why is there no goto? Why isn't all memory freed when CPython exits? Why isn't there a switch or case statement in Python? Why must 'self' be used explicitly in method definitions and calls? Why must dictionary keys be immutable? Writing test suites is very helpful, and you might want to design your code to make it easily tested. One increasingly popular technique, test-driven development, calls for writing parts of the test suite first, before you write any of the actual code.  Of course Python allows you to be sloppy and not write test cases at all. You can do this easily enough with a sequence of ``if... elif... elif... else``. For literal values, or constants within a namespace, you can also use a ``match ... case`` statement. `Cython <https://cython.org/>`_ compiles a modified version of Python with optional annotations into C extensions.  `Nuitka <https://www.nuitka.net/>`_ is an up-and-coming compiler of Python into C++ code, aiming to support the full Python language. and think it is a bug in Python.  It's not.  This has little to do with Python, and much more to do with how the underlying platform handles floating-point numbers. https://mail.python.org/pipermail/python-3000/2006-November/004643.html is an instruction to a string literal to return the substrings delimited by the given separator (or, by default, arbitrary runs of white space). the value stored for ``x`` is a (very good) approximation to the decimal value ``1.2``, but is not exactly equal to it.  On a typical machine, the actual stored value is:: versus :: which gives the result:: which is exactly:: would raise a :exc:`KeyError` exception because the id of the ``[1, 2]`` used in the second line differs from that in the first line.  In other words, dictionary keys should be compared using ``==``, not using :keyword:`is`. write this:: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-07 14:14+0000
PO-Revision-Date: 2021-06-28 00:52+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 (a) 对于某些操作，前缀表示法比后缀更容易阅读 -- 前缀（和中缀！）运算在数学中有着悠久的传统，就像在视觉上帮助数学家思考问题的记法。比较一下我们将 x*(a+b) 这样的公式改写为 x*a+x*b 的容易程度，以及使用原始OO符号做相同事情的笨拙程度。 (b)  当读到写有len(X)的代码时，就知道它要求的是某件东西的长度。这告诉我们两件事：结果是一个整数，参数是某种容器。相反，当阅读x.len()时，必须已经知道x是某种实现接口的容器，或者是从具有标准len()的类继承的容器。当没有实现映射的类有get()或key()方法，或者不是文件的类有write()方法时，我们偶尔会感到困惑。 :meth:`~str.join` 是字符串方法，因为在使用该方法时，您告诉分隔符字符串去迭代一个字符串序列，并在相邻元素之间插入自身。此方法的参数可以是任何遵循序列规则的对象，包括您自己定义的任何新的类。对于字节和字节数组对象也有类似的方法。 如果没有引发异常则 :keyword:`try`/:keyword:`except` 代码块是非常高效的。 实际上捕获异常是很消耗性能的。 在 2.0 之前的 Python 版本中通常使用这例程:: 一个好的模块测试套件既可以提供回归测试，也可以作为模块接口规范和一组示例。许多Python模块可以作为脚本运行，以提供简单的“自我测试”。即使是使用复杂外部接口的模块，也常常可以使用外部接口的简单“桩代码（stub）”模拟进行隔离测试。可以使用 :mod:`doctest` 和 :mod:`unittest` 模块或第三方测试框架来构造详尽的测试套件，以运行模块中的每一行代码。 不小心省略逗号会导致难以诊断的错误。例如:: 允许列表作为键，但告诉用户不要修改它们。当你意外忘记或修改列表时，这将产生程序中的一类难以跟踪的错误。它还使一个重要的字典不变量无效： ``d.keys()`` 中的每个值都可用作字典的键。 允许尾随逗号也可以使编程代码更容易生成。 由C++和Java等语言提供的模块接口规范描述了模块的方法和函数的原型。许多人认为接口规范的编译时强制执行有助于构建大型程序。 另一个优点是，Python 中的字符串被视为与数字一样“基本”。 任何动作都不会将值 8 更改为其他值，在 Python 中，任何动作都不会将字符串 "8" 更改为其他值。 另一个次要原因是冒号使带有语法突出显示的编辑器更容易工作；他们可以寻找冒号来决定何时需要增加缩进，而不必对程序文本进行更精细的解析。 答案1： 不幸的是，解释器为每个Python堆栈帧推送至少一个C堆栈帧。此外，扩展可以随时回调Python。因此，一个完整的线程实现需要对C的线程支持。 答案2： 幸运的是， `Stackless Python <https://github.com/stackless-dev/stackless/wiki>`_ 有一个完全重新设计的解释器循环，可以避免C堆栈。 正如Guido所说： 赋值表达式使用海象运算符 ``:=`` 在表达式中为变量赋值:: 因为没有开始/结束花括号，所以 Python 更不容易发生代码风格冲突。 在 C 中有许多不同的放置花括号的方式。 在习惯了阅读和编写某种特定风格的代码之后，当阅读（或被要求编写）另一种风格的代码时通常都会令人感觉有点不舒服）。 CPython的字典实现为可调整大小的哈希表。与B-树相比，这在大多数情况下为查找（目前最常见的操作）提供了更好的性能，并且实现更简单。 CPython的列表实际上是可变长度的数组，而不是lisp风格的链表。该实现使用对其他对象的引用的连续数组，并在列表头结构中保留指向该数组和数组长度的指针。 可以将Python编译为机器代码，C或其他语言吗？ 难道不能在解释器中模拟线程，而非得依赖特定于操作系统的线程实现吗？ 目录 设计和历史常见问题 最后，它解决了变量赋值的语法问题：为了 Python 中的局部变量（根据定义！）在函数体中赋值的那些变量（并且没有明确声明为全局）赋值，就必须以某种方式告诉解释器一个赋值是为了分配一个实例变量而不是一个局部变量，它最好是通过语法实现的（出于效率原因）。 C++ 通过声明来做到这一点，但是 Python 没有声明，仅仅为了这个目的而引入它们会很可惜。 使用显式的 ``self.var`` 很好地解决了这个问题。 类似地，对于使用实例变量，必须编写 ``self.var`` 意味着对方法内部的非限定名称的引用不必搜索实例的目录。 换句话说，局部变量和实例变量存在于两个不同的命名空间中，您需要告诉 Python 使用哪个命名空间。 首先，更明显的显示出，使用的是方法或实例属性而不是局部变量。 阅读 ``self.x`` 或 ``self.meth()`` 可以清楚地表明，即使您不知道类的定义，也会使用实例变量或方法。在 C++ 中，可以通过缺少局部变量声明来判断（假设全局变量很少见或容易识别） —— 但是在 Python 中没有局部变量声明，所以必须查找类定义才能确定。 一些 C++ 和 Java 编码标准要求实例属性具有 ``m_`` 前缀，因此这种显式性在这些语言中仍然有用。 对于 Python，接口规范的许多好处可以通过组件的适当测试规程来获得。 要获得更完整的解释，请参阅 Python 教程中的 :ref:`浮点算术 <tut-fp-issues>`  一章。 对于对象调用方法，可以通过使用 :func:`getattr` 内置检索具有特定名称的方法来进一步简化： 对于需要从大量可能性中进行选择的情况，可以创建一个字典，将case 值映射到要调用的函数。例如： 例如，采用以下不完整的代码段:: 首先，这不是C标准特性，因此不能移植。(是的，我们知道Boehm GC库。它包含了 *大多数* 常见平台（但不是所有平台）的汇编代码，尽管它基本上是透明的，但也不是完全透明的; 要让Python使用它，需要使用补丁。) 对于这种特定的情况，您还可以使用 ``value = dict.setdefault(key, getvalue(key))``，但前提是调用 ``getvalue()`` 足够便宜，因为在所有情况下都会对其进行评估。 函数已经是 Python 中的第一等对象，最可在局部作用域中声明。 因此使用 lambda 而非局部定义函数的唯一优点是你不需要为函数指定名称 -- 但那只是一个被赋值为函数对象（它的类型与 lambda 表达式所产生的对象完全相同）的局部变量！ 此外，必须始终如此，如果 ``o1 == o2`` （即 ``o1.__eq__(o2) is True`` ）则 ``hash(o1) == hash(o2)`` （即 ``o1.__hash__() == o2.__hash__()`` ），无论对象是否在字典中。 如果你不能满足这些限制，字典和其他基于 hash 的结构将会出错。 Guido van Rossum 认为使用缩进进行分组非常优雅，并且大大提高了普通 Python 程序的清晰度。 大多数人在一段时间后就会喜欢上这个特性。 哈希按其地址（对象ID）列出。这不起作用，因为如果你构造一个具有相同值的新列表，它将无法找到；例如:: 字典是如何在CPython中实现的？ 列表是如何在CPython中实现的？ 如何在Python中指定和实施接口规范？ Python如何管理内存？ 异常有多快？ 如果你想要一个用列表索引的字典，只需先将列表转换为元组；用函数 ``tuple(L)`` 创建一个元组，其条目与列表 ``L`` 相同。 元组是不可变的，因此可以用作字典键。 如果要强制 Python 在释放时删除某些内容，请使用 :mod:`atexit` 模块运行一个函数，强制删除这些内容。 如果要返回新列表，请使用内置 :func:`sorted` 函数。此函数从提供的可迭代列表中创建新列表，对其进行排序并返回。例如，下面是如何迭代遍历字典并按keys排序:: 如果要编写可用于任何python实现的代码，则应显式关闭该文件或使用  :keyword:`with` 语句；无论内存管理方案如何，这都有效： 如果您正在尝试构建Windows路径名，请注意所有Windows系统调用都使用正斜杠:: 如果您正在尝试为DOS命令构建路径名，请尝试以下示例 :: 在Python中，这样的结构是不明确的。 在性能很重要的情况下，仅仅为了排序而复制一份列表将是一种浪费。因此， :meth:`list.sort` 对列表进行了适当的排序。为了提醒您这一事实，它不会返回已排序的列表。这样，当您需要排序的副本，但也需要保留未排序的版本时，就不会意外地覆盖列表。 在一些Python实现中，以下代码（在CPython中工作的很好）可能会耗尽文件描述符:: 实际上，使用 CPython 的引用计数或器方案，每次对 ``f`` 的新赋值都会关闭之前的文件。 然而，对于传统的 GC，这些文件对象将只能以不同的并且可能很长的间隔被收集（和关闭）。 建议对方法名使用前缀，例如本例中的 ``visit_`` 。如果没有这样的前缀，如果值来自不受信任的源，攻击者将能够调用对象上的任何方法。 使用列表作为键时进行复制。这没有用的，因为作为可变对象的列表可以包含对自身的引用，然后复制代码将进入无限循环。 许多编码风格将开始/结束括号单独放在一行上。这使得程序相当长，浪费了宝贵的屏幕空间，使得更难以对程序进行全面的了解。 理想情况下，函数应该适合一个屏幕（例如，20--30行）。 20 行 Python 可以完成比 20 行 C 更多的工作。 这不仅仅是由于没有开始/结束括号 -- 无需声明以及高层级的数据类型也是其中的原因  -- 但基于缩进的语法肯定有帮助。 许多可以轻松地用十进制表示的数字不能用二进制浮点表示。例如，在输入以下语句后:: 将列表用作字典键后，应标记为其只读。问题是，它不仅仅是可以改变其值的顶级对象；你可以使用包含列表作为键的元组。将任何内容作为键关联到字典中都需要将从那里可到达的所有对象标记为只读 —— 并且自引用对象可能会导致无限循环。 更准确地说，它们不能以奇数个反斜杠结束：结尾处的不成对反斜杠会转义结束引号字符，留下未结束的字符串。 注意，哈希计算由于列表的某些成员可能不可用以及算术溢出的可能性而变得复杂。 注意第二种方法稍微容易一些。请进一步注意，在这个FAQ解答的示例中，冒号是如何设置的；这是英语中的标准用法。 当Python退出时，从全局命名空间或Python模块引用的对象并不总是被释放。 如果存在循环引用，则可能发生这种情况 C库分配的某些内存也是不可能释放的（例如像Purify这样的工具会抱怨这些内容）。 但是，Python在退出时清理内存并尝试销毁每个对象。 一个是性能：知道字符串是不可变的，意味着我们可以在创建时为它分配空间，并且存储需求是固定不变的。这也是元组和列表之间区别的原因之一。 如果条件为真，则只执行 ``x++`` 语句，但缩进会使你认为情况并非如此。 即使是经验丰富的 C 程序员有时也会长久地盯着它发呆，不明白为什么在 ``x > y`` 时 ``y`` 也会减少。 不同，其他实现 (如 `Jython <https://www.jython.org>`_ 或 `PyPy <https://www.pypy.org>`_) 可能会依赖不同的机制，如完全的垃圾回收器。 如果你的 Python 代码依赖于引用计数实现的行为则这种差异可能会导致某些微妙的移植问题。 其他语言，如ObjectPascal、Delphi和C++ 使用静态类型，因此可以毫不含糊地知道分配给什么成员。这是静态类型的要点 -- 编译器 *总是* 在编译时知道每个变量的作用域。 Python 2.6添加了一个 :mod:`abc` 模块，允许定义抽象基类 (ABCs)。然后可以使用 :func:`isinstance` 和 :func:`issubclass` 来检查实例或类是否实现了特定的ABC。 :mod:`collections.abc` 模块定义了一组有用的ABCs 例如 :class:`~collections.abc.Iterable` ， :class:`~collections.abc.Container` , 和 :class:`~collections.abc.MutableMapping` Python的 lambda表达式不能包含语句，因为Python的语法框架不能处理嵌套在表达式内部的语句。然而，在Python中，这并不是一个严重的问题。与其他语言中添加功能的lambda表单不同，Python的 lambdas只是一种速记符号，如果您懒得定义函数的话。 Python 允许您在列表，元组和字典的末尾添加一个尾随逗号:: Python使用动态类型。事先不可能知道在运行时引用哪个属性。可以动态地在对象中添加或删除成员属性。这使得无法通过简单的阅读就知道引用的是什么属性：局部属性、全局属性还是成员属性？ 原始字符串的设计是为了方便想要执行自己的反斜杠转义处理的处理器(主要是正则表达式引擎)创建输入。此类处理器将不匹配的尾随反斜杠视为错误，因此原始字符串不允许这样做。反过来，允许通过使用引号字符转义反斜杠转义字符串。当r-string用于它们的预期目的时，这些规则工作的很好。 其次，这意味着当要显式引用或从特定类调用该方法时无须特殊语法。 在 C++ 中，如果你想要使用在派生类中被重载的基类方法，你必须使用 ``::`` 运算符 -- 在 Python 中你可以写成 ``baseclass.methodname(self, <argument list>)``。 这特别适用于 :meth:`~object.__init__` 方法，并且也适用于派生类方法想要扩展同名的基类方式因而必须以某种方式调用基类方法的情况。 请参阅 :pep:`572` 了解详情。 请看下一个问题。 由于没有开始/结束括号，因此解析器感知的分组与人类读者之间不会存在分歧。 偶尔 C 程序员会遇到像这样的代码片段:: 已经提出的一些不可接受的解决方案： 自 Python 3.8 开始，你能做到的！ 从 Python 1.6 开始，字符串变得更像其他标准类型，当添加方法时，这些方法提供的功能与始终使用 String 模块的函数时提供的功能相同。这些新方法中的大多数已被广泛接受，但似乎让一些程序员感到不舒服的一种方法是： CPython 中的 :class:`float` 类型使用C语言的 ``double`` 类型进行存储。 :class:`float` 对象的值是以固定的精度（通常为 53 位）存储的二进制浮点数，由于 Python 使用 C 操作，而后者依赖于处理器中的硬件实现来执行浮点运算。 这意味着就浮点运算而言，Python 的行为类似于许多流行的语言，包括 C 和 Java。 冒号主要用于增强可读性(ABC语言实验的结果之一)。考虑一下这个:: Python 内存管理的细节取决于实现。 Python 的标准实现 :term:`CPython` 使用引用计数来检测不可访问的对象，并使用另一种机制来收集引用循环，定期执行循环检测算法来查找不可访问的循环并删除所涉及的对象。 :mod:`gc` 模块提供了执行垃圾回收、获取调试统计信息和优化收集器参数的函数。 第一条是这样的：“使用字符串文本(String Constant)的方法看起来真的很难看”，答案是也许吧，但是字符串文本只是一个固定值。如果在绑定到字符串的名称上允许使用这些方法，则没有逻辑上的理由使其在文字上不可用。 字典的哈希表实现使用从键值计算的哈希值来查找键。如果键是可变对象，则其值可能会发生变化，因此其哈希值也会发生变化。但是，由于无论谁更改键对象都无法判断它是否被用作字典键值，因此无法在字典中修改条目。然后，当你尝试在字典中查找相同的对象时，将无法找到它，因为其哈希值不同。如果你尝试查找旧值，也不会找到它，因为在该哈希表中找到的对象的值会有所不同。 这个想法借鉴了 Modula-3 语言。 出于多种原因它被证明是非常有用的。 第二个异议通常是这样的：“我实际上是在告诉序列使用字符串常量将其成员连接在一起”。遗憾的是并非如此。出于某种原因，把 :meth:`~str.split` 作为一个字符串方法似乎要容易得多，因为在这种情况下，很容易看到:: 典型的 53 位精度为 Python 浮点数提供了 15-16 位小数的精度。 有几个优点。 有几个理由允许这样做。 反对这种用法有两个常见的论点。 这也具有提高执行速度的副作用，因为Python在运行时解析名称绑定，而第二个版本只需要执行一次解析。 这个列表看起来有四个元素，但实际上包含三个 : "fee", "fiefoo" 和 "fum" 。总是加上逗号可以避免这个错误的来源。 这使得索引列表 ``a[i]`` 的操作成本与列表的大小或索引的值无关。 只有当你期望dict在任何时候都有key时，这才有意义。如果不是这样的话，你就是应该这样编码： 当 Python 嵌入到其他应用程序中时传统的 GC 也会成为一个问题。 在独立的 Python 中可以用 GC 库提供的版本来替换标准的 ``malloc()`` 和 ``free()``，而嵌入 Python 的应用程序可能想要 *自行* 替代 ``malloc()`` 和 ``free()``，并不想要 Python 的版本。 现在，CPython 可以适用于任何正确实现了 ``malloc()`` 和 ``free()`` 的版本。 元组是不可变的，这意味着一旦创建了元组，就不能用新值替换它的任何元素。列表是可变的，这意味着您始终可以更改列表的元素。只有不变元素可以用作字典的key，因此只能将元组和非列表用作key。 用户经常对这样的结果感到惊讶:: 当添加或插入项时，将调整引用数组的大小。并采用了一些巧妙的方法来提高重复添加项的性能; 当数组必须增长时，会分配一些额外的空间，以便在接下来的几次中不需要实际调整大小。 如果列表，元组或字典的字面值分布在多行中，则更容易添加更多元素，因为不必记住在上一行中添加逗号。这些行也可以重新排序，而不会产生语法错误。 为什么简单的算术运算得到奇怪的结果？ 为什么Python字符串是不可变的？ 为什么 if/while/def/class语句需要冒号？ 为什么浮点计算不准确？ 为什么有单独的元组和列表数据类型？ 为什么不能在表达式中赋值？ 为什么lambda表达式不能包含语句？ 为什么原始字符串（r-strings）不能以反斜杠结尾？ 为什么Python在列表和元组的末尾允许使用逗号？ 为什么 Python 使用缩进来分组语句？ 为什么Python对某些功能（例如list.index()）使用方法来实现，而其他功能（例如len(List)）使用函数实现？ 为什么CPython不使用更传统的垃圾回收方案？ 为什么Python没有属性赋值的“with”语句？ 为什么 list.sort() 没有返回排序列表？ 生成器为什么不支持 with 语句？ 为什么 join() 是一个字符串方法而不是列表或元组方法？ 为什么没有goto？ CPython退出时为什么不释放所有内存？ 为什么Python中没有switch或case语句？ 为什么必须在方法定义和调用中显式使用“self”？ 为什么字典key必须是不可变的？ 编写测试套件非常有用，并且你可能希望将你的代码设计为易于测试。 一种日益流行的技术是面向测试的开发，它要求在编写任何实际代码之前首先编写测试套件的各个部分。 当然 Python 也允许你采用更粗率的方式，不必编写任何测试用例。 你可以足够方便地使用一串 ``if... elif... elif... else`` 来做到这一点。 对于字面值或某一命名空间内的常量，你还可以 使用 ``match ... case`` 语句。 `Cython <https://cython.org/>`_ 会将带有可选标注的修改版 Python 编译为 C 扩展。 `Nuitka <https://www.nuitka.net/>`_ 是一个 Python 至 C++ 代码的新兴编译器，它的目标是支持完整的 Python 语言。 并且认为这是 Python中的一个 bug。其实不是这样。这与 Python 关系不大，而与底层平台如何处理浮点数字关系更大。 https://mail.python.org/pipermail/python-3000/2006-November/004643.html 是对字符串文本的指令，用于返回由给定分隔符分隔的子字符串（或在默认情况下，返回任意空格）。 为 ``x`` 存储的值是与十进制的值 ``1.2`` (非常接近) 的近似值，但不完全等于它。 在典型的机器上，实际存储的值是： 与 :: 结果如下:: 它对应于十进制数值:: 会引发一个 :exc:`KeyError` 异常，因为第二行中使用的 ``[1, 2]`` 的 id 与第一行中的 id 不同。换句话说，应该使用 ``==`` 来比较字典键，而不是使用 :keyword:`is` 。 写成这样:: 