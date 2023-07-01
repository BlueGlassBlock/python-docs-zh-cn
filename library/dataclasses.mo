��    z      �              �  -   �    �  �   �  N   �	  O   
  �  Q
  #     A   2  �  t  (  M  s   v  D  �    /  �  I  a       y  &   �    �    �  -  �  �        �       7     }   Q  =  �  v        �  �   �  �   �  �  a   �  #"  �   #$  �   �$  ;  t%  �  �&  O   E(  Q   �(  Q   �(  �   9)  �  �)  �   �+  d   >,  n   �,  }   -     �-  S   .     d.     p.  �   �.  �   A/     0  �   0  ]  �0     2     2  �   .2  �   �2  \   �3  �   �3  �   r4  �  W5  ?  7  X   V8     �8  p   �8  �   59  B   �9  b   A:    �:  �   �;  �   r<  (  =  )  B>    l?  �   @  }   A  H   �A  H   �A     %B  �   �B  r   QC  (   �C  $   �C  y   D  �   �D  �   2E  {   �E    dF  t  kG  �   �I  @   �J  �  K  -   �L  p   �L  ~  PM  5  �N  �   Q  8  �Q  �   �R  �   �S  �   QT  P   4U    �U  p  �V  U   X  x   kX  �  �X  �   �Z  `  W[  �  �\      9^    Z^  y  �_  �   Ta  �   �a      �b  �   �b  �   �c  #   ed  J   �d  �  �d  *   �f    �f  �   �g  V   �h  W   �h  �  0i      �j  I   �j  �  <k    �l  b   	n  s  ln  �   �p  �  �q  Q  �s  	   �t     �t  #  u    *v  C  /w  �   sy     hz     {z  :   �z  ]   �z    0{  e   B|     �|  �   �|  �   �}  �  I~    $�  �   -�  �   т  4  ��  �  ��  J   [�  L   ��  L   �  �   @�  �  ��  �   ��  ]   &�  x   ��  �   ��  �   ~�  R   �     U�     \�  �   o�  �   ;�     �  d   �  `  ��     �     �  �   �  �   ��  \   2�  y   ��  �   	�  �  Ғ    v�  `   ��     �  ]   ��  �   X�  @   �  X   W�    ��  �   Ř  �   �    *�  �   F�  �   8�  q   2�  �   ��  J   +�  J   v�  u   ��  �   7�  `   ޟ  !   ?�     a�  q   �  �   �  �   ��  p   4�  �   ��  s  ��  �   ��  ?   �  D  #�  -   h�  k   ��  z  �  �  }�  �   E�  (  ��  �   �  �   ͮ  �   o�  F   F�    ��  �  ��  W    �  �   x�  �   �  �   �  Q  ��  a  ۷     =�  �  [�  T  �  �   8�  �   ��     ��  �   ��  �   O�     O�  N   m�   **Source code:** :source:`Lib/dataclasses.py` :class:`Field` objects describe each defined field. These objects are created internally, and are returned by the :func:`fields` module-level method (see below).  Users should never instantiate a :class:`Field` object directly.  Its documented attributes are: :exc:`TypeError` will be raised if a field without a default value follows a field with a default value.  This is true whether this occurs in a single class, or as a result of class inheritance. :func:`asdict` raises :exc:`TypeError` if ``obj`` is not a dataclass instance. :func:`astuple` raises :exc:`TypeError` if ``obj`` is not a dataclass instance. :meth:`~object.__hash__` is used by built-in :meth:`hash()`, and when objects are added to hashed collections such as dictionaries and sets.  Having a :meth:`~object.__hash__` implies that instances of the class are immutable. Mutability is a complicated property that depends on the programmer's intent, the existence and behavior of :meth:`~object.__eq__`, and the values of the ``eq`` and ``frozen`` flags in the :func:`dataclass` decorator. :mod:`dataclasses` --- Data Classes A sentinel value signifying a missing default or default_factory. A sentinel value used as a type annotation.  Any fields after a pseudo-field with the type of :const:`KW_ONLY` are marked as keyword-only fields.  Note that a pseudo-field of type :const:`KW_ONLY` is otherwise completely ignored.  This includes the name of such a field.  By convention, a name of ``_`` is used for a :const:`KW_ONLY` field.  Keyword-only fields signify :meth:`~object.__init__` parameters that must be specified as keywords when the class is instantiated. After the parameters needed for :meth:`~object.__init__` are computed, any keyword-only parameters are moved to come after all regular (non-keyword-only) parameters.  This is a requirement of how keyword-only parameters are implemented in Python: they must come after non-keyword-only parameters. Among other uses, this allows for initializing field values that depend on one or more other fields.  For example:: Another place where :func:`dataclass` inspects a type annotation is to determine if a field is an init-only variable.  It does this by seeing if the type of a field is of type ``dataclasses.InitVar``.  If a field is an ``InitVar``, it is considered a pseudo-field called an init-only field.  As it is not a true field, it is not returned by the module-level :func:`fields` function.  Init-only fields are added as parameters to the generated :meth:`~object.__init__` method, and are passed to the optional :meth:`__post_init__` method.  They are not otherwise used by dataclasses. As shown above, the :const:`MISSING` value is a sentinel object used to detect if some parameters are provided by the user. This sentinel is used because ``None`` is a valid value for some parameters with a distinct meaning.  No code should directly use the :const:`MISSING` value. Be forewarned about how ``init=False`` fields work during a call to :func:`replace`.  They are not copied from the source object, but rather are initialized in :meth:`__post_init__`, if they're initialized at all.  It is expected that ``init=False`` fields will be rarely and judiciously used.  If they are used, it might be wise to have alternate class constructors, or perhaps a custom ``replace()`` (or similarly named) method which handles instance copying. By default, :func:`dataclass` will not implicitly add a :meth:`~object.__hash__` method unless it is safe to do so.  Neither will it add or change an existing explicitly defined :meth:`~object.__hash__` method.  Setting the class attribute ``__hash__ = None`` has a specific meaning to Python, as described in the :meth:`~object.__hash__` documentation. Class variables Continuing from the previous example:: Converts the dataclass ``obj`` to a dict (by using the factory function ``dict_factory``).  Each dataclass is converted to a dict of its fields, as ``name: value`` pairs.  dataclasses, dicts, lists, and tuples are recursed into.  Other objects are copied with :func:`copy.deepcopy`. Converts the dataclass ``obj`` to a tuple (by using the factory function ``tuple_factory``).  Each dataclass is converted to a tuple of its field values.  dataclasses, dicts, lists, and tuples are recursed into. Other objects are copied with :func:`copy.deepcopy`. Creates a new dataclass with name ``cls_name``, fields as defined in ``fields``, base classes as given in ``bases``, and initialized with a namespace as given in ``namespace``.  ``fields`` is an iterable whose elements are each either ``name``, ``(name, type)``, or ``(name, type, Field)``.  If just ``name`` is supplied, ``typing.Any`` is used for ``type``.  The values of ``init``, ``repr``, ``eq``, ``order``, ``unsafe_hash``, ``frozen``, ``match_args``, ``kw_only``, ``slots``, and ``weakref_slot`` have the same meaning as they do in :func:`dataclass`. Creates a new object of the same type as ``obj``, replacing fields with values from ``changes``.  If ``obj`` is not a Data Class, raises :exc:`TypeError`.  If values in ``changes`` do not specify fields, raises :exc:`TypeError`. Default factory functions Descriptor-typed fields Example of using :func:`asdict` on nested dataclasses:: Fields that are assigned :ref:`descriptor objects <descriptors>` as their default value have the following special behaviors: For common and simple use cases, no other functionality is required.  There are, however, some dataclass features that require additional per-field information.  To satisfy this need for additional information, you can replace the default field value with a call to the provided :func:`field` function.  For example:: For example, suppose a field will be initialized from a database, if a value is not provided when creating the class:: Frozen instances Here are the rules governing implicit creation of a :meth:`~object.__hash__` method.  Note that you cannot both have an explicit :meth:`~object.__hash__` method in your dataclass and set ``unsafe_hash=True``; this will result in a :exc:`TypeError`. If :func:`dataclass` is used just as a simple decorator with no parameters, it acts as if it has the default values documented in this signature.  That is, these three uses of :func:`dataclass` are equivalent:: If :meth:`~object.__hash__` is not explicitly defined, or if it is set to ``None``, then :func:`dataclass` *may* add an implicit :meth:`~object.__hash__` method. Although not recommended, you can force :func:`dataclass` to create a :meth:`~object.__hash__` method with ``unsafe_hash=True``. This might be the case if your class is logically immutable but can nonetheless be mutated. This is a specialized use case and should be considered carefully. If ``eq`` and ``frozen`` are both true, by default :func:`dataclass` will generate a :meth:`~object.__hash__` method for you.  If ``eq`` is true and ``frozen`` is false, :meth:`~object.__hash__` will be set to ``None``, marking it unhashable (which it is, since it is mutable).  If ``eq`` is false, :meth:`~object.__hash__` will be left untouched meaning the :meth:`~object.__hash__` method of the superclass will be used (if the superclass is :class:`object`, this means it will fall back to id-based hashing). If ``module`` is defined, the ``__module__`` attribute of the dataclass is set to that value. By default, it is set to the module name of the caller. If a :func:`field` specifies a ``default_factory``, it is called with zero arguments when a default value for the field is needed.  For example, to create a new instance of a list, use:: If a field is excluded from :meth:`~object.__init__` (using ``init=False``) and the field also specifies ``default_factory``, then the default factory function will always be called from the generated :meth:`~object.__init__` function.  This happens because there is no other way to give the field an initial value. If a field name is already included in the ``__slots__`` of a base class, it will not be included in the generated ``__slots__`` to prevent :ref:`overriding them <datamodel-note-slots>`. Therefore, do not use ``__slots__`` to retrieve the field names of a dataclass. Use :func:`fields` instead. To be able to determine inherited slots, base class ``__slots__`` may be any iterable, but *not* an iterator. If the class already defines :meth:`~object.__eq__`, this parameter is ignored. If the class already defines :meth:`~object.__init__`, this parameter is ignored. If the class already defines :meth:`~object.__repr__`, this parameter is ignored. If the class already defines any of :meth:`~object.__lt__`, :meth:`~object.__le__`, :meth:`~object.__gt__`, or :meth:`~object.__ge__`, then :exc:`TypeError` is raised. If the default value of a field is specified by a call to :func:`field()`, then the class attribute for this field will be replaced by the specified ``default`` value.  If no ``default`` is provided, then the class attribute will be deleted.  The intent is that after the :func:`dataclass` decorator runs, the class attributes will all contain the default values for the fields, just as if the default value itself were specified.  For example, after:: If you need to know if a class is an instance of a dataclass (and not a dataclass itself), then add a further check for ``not isinstance(obj, type)``:: In a single dataclass, it is an error to specify more than one field whose type is :const:`KW_ONLY`. In this case, :func:`fields` will return :class:`Field` objects for ``i`` and ``j``, but not for ``database``. In this example, ``Base.y``, ``Base.w``, and ``D.t`` are keyword-only fields, and ``Base.x`` and ``D.z`` are regular fields:: In this example, both ``a`` and ``b`` will be included in the added :meth:`~object.__init__` method, which will be defined as:: In this example, the fields ``y`` and ``z`` will be marked as keyword-only fields:: Inheritance Init-only variables Init-only variables without default values, if any exist, must be specified on the call to :func:`replace` so that they can be passed to :meth:`~object.__init__` and :meth:`__post_init__`. Instead of looking for and disallowing objects of type ``list``, ``dict``, or ``set``, unhashable objects are now not allowed as default values.  Unhashability is used to approximate mutability. Is equivalent to:: It is an error for ``changes`` to contain any fields that are defined as having ``init=False``.  A :exc:`ValueError` will be raised in this case. It is not possible to create truly immutable Python objects.  However, by passing ``frozen=True`` to the :meth:`dataclass` decorator you can emulate immutability.  In that case, dataclasses will add :meth:`~object.__setattr__` and :meth:`~object.__delattr__` methods to the class.  These methods will raise a :exc:`FrozenInstanceError` when invoked. Module contents Mutable default values Note that if a field is annotated with a descriptor type, but is not assigned a descriptor object as its default value, the field will act like a normal field. Note that the parameters have been re-ordered from how they appear in the list of fields: parameters derived from regular fields are followed by parameters derived from keyword-only fields. Note that the two instances of class ``C`` share the same class variable ``x``, as expected. Note that this method is automatically added to the class: it is not directly specified in the ``InventoryItem`` definition shown above. Note, however, that in general the dataclass-generated :meth:`~object.__init__` methods don't need to be called, since the derived dataclass will take care of initializing all fields of any base class that is a dataclass itself. One of the few places where :func:`dataclass` actually inspects the type of a field is to determine if a field is a class variable as defined in :pep:`526`.  It does this by checking if the type of the field is ``typing.ClassVar``.  If a field is a ``ClassVar``, it is excluded from consideration as a field and is ignored by the dataclass mechanisms.  Such ``ClassVar`` pseudo-fields are not returned by the module-level :func:`fields` function. One possible reason to set ``hash=False`` but ``compare=True`` would be if a field is expensive to compute a hash value for, that field is needed for equality testing, and there are other fields that contribute to the type's hash value.  Even if a field is excluded from the hash, it will still be used for comparisons. Other attributes may exist, but they are private and must not be inspected or relied on. Post-init processing Python stores default member variable values in class attributes. Consider this example, not using dataclasses:: Raised when an implicitly defined :meth:`~object.__setattr__` or :meth:`~object.__delattr__` is called on a dataclass which was defined with ``frozen=True``. It is a subclass of :exc:`AttributeError`. Re-ordering of keyword-only parameters in :meth:`~object.__init__` Return ``True`` if its parameter is a dataclass or an instance of one, otherwise return ``False``. Returns a tuple of :class:`Field` objects that define the fields for this dataclass.  Accepts either a dataclass, or an instance of a dataclass. Raises :exc:`TypeError` if not passed a dataclass or instance of one. Does not return pseudo-fields which are ``ClassVar`` or ``InitVar``. See the section below on init-only variables for ways to pass parameters to :meth:`__post_init__`.  Also see the warning about how :func:`replace` handles ``init=False`` fields. Similarly, when getting or setting the field, the descriptor's ``__get__`` or ``__set__`` method is called rather than returning or overwriting the descriptor object. The :func:`dataclass` decorator examines the class to find ``field``\s.  A ``field`` is defined as a class variable that has a :term:`type annotation <variable annotation>`.  With two exceptions described below, nothing in :func:`dataclass` examines the type specified in the variable annotation. The :func:`dataclass` decorator will add various "dunder" methods to the class, described below.  If any of the added methods already exist in the class, the behavior depends on the parameter, as documented below. The decorator returns the same class that it is called on; no new class is created. The :meth:`~object.__init__` method generated by :func:`dataclass` does not call base class :meth:`~object.__init__` methods. If the base class has an :meth:`~object.__init__` method that has to be called, it is common to call this method in a :meth:`__post_init__` method:: The class attribute ``C.z`` will be ``10``, the class attribute ``C.t`` will be ``20``, and the class attributes ``C.x`` and ``C.y`` will not be set. The final list of fields is, in order, ``x``, ``y``, ``z``.  The final type of ``x`` is ``int``, as specified in class ``C``. The generated :meth:`~object.__init__` method for ``C`` will look like:: The generated :meth:`~object.__init__` method for ``D`` will look like:: The member variables to use in these generated methods are defined using :pep:`526` type annotations.  For example, this code:: The newly returned object is created by calling the :meth:`~object.__init__` method of the dataclass.  This ensures that :meth:`__post_init__`, if present, is also called. The order of the fields in all of the generated methods is the order in which they appear in the class definition. The parameters to :func:`dataclass` are: The parameters to :func:`field` are: The relative ordering of keyword-only parameters is maintained in the re-ordered :meth:`~object.__init__` parameter list. The value for the field passed to the dataclass's ``__init__`` method is passed to the descriptor's ``__set__`` method rather than overwriting the descriptor object. There is a tiny performance penalty when using ``frozen=True``: :meth:`~object.__init__` cannot use simple assignment to initialize fields, and must use :meth:`~object.__setattr__`. This function is a :term:`decorator` that is used to add generated :term:`special method`\s to classes, as described below. This function is not strictly required, because any Python mechanism for creating a new class with ``__annotations__`` can then apply the :func:`dataclass` function to convert that class to a dataclass.  This function is provided as a convenience.  For example:: This has the same issue as the original example using class ``C``. That is, two instances of class ``D`` that do not specify a value for ``x`` when creating a class instance will share the same copy of ``x``.  Because dataclasses just use normal Python class creation they also share this behavior.  There is no general way for Data Classes to detect this condition.  Instead, the :func:`dataclass` decorator will raise a :exc:`ValueError` if it detects an unhashable default parameter.  The assumption is that if a value is unhashable, it is mutable.  This is a partial solution, but it does protect against many common errors. This module provides a decorator and functions for automatically adding generated :term:`special method`\s such as :meth:`~object.__init__` and :meth:`~object.__repr__` to user-defined classes.  It was originally described in :pep:`557`. To create a shallow copy, the following workaround may be used:: To determine whether a field contains a default value, ``dataclasses`` will call the descriptor's ``__get__`` method using its class access form (i.e. ``descriptor.__get__(obj=None, type=cls)``.  If the descriptor returns a value in this case, it will be used as the field's default. On the other hand, if the descriptor raises :exc:`AttributeError` in this situation, no default value will be provided for the field. Using dataclasses, *if* this code was valid:: Using default factory functions is a way to create new instances of mutable types as default values for fields:: When defined on the class, it will be called by the generated :meth:`~object.__init__`, normally as ``self.__post_init__()``. However, if any ``InitVar`` fields are defined, they will also be passed to :meth:`__post_init__` in the order they were defined in the class.  If no :meth:`~object.__init__` method is generated, then :meth:`__post_init__` will not automatically be called. When the dataclass is being created by the :meth:`dataclass` decorator, it looks through all of the class's base classes in reverse MRO (that is, starting at :class:`object`) and, for each dataclass that it finds, adds the fields from that base class to an ordered mapping of fields. After all of the base class fields are added, it adds its own fields to the ordered mapping.  All of the generated methods will use this combined, calculated ordered mapping of fields.  Because the fields are in insertion order, derived classes override base classes.  An example:: ``compare``: If true (the default), this field is included in the generated equality and comparison methods (:meth:`~object.__eq__`, :meth:`~object.__gt__`, et al.). ``default_factory``: If provided, it must be a zero-argument callable that will be called when a default value is needed for this field.  Among other purposes, this can be used to specify fields with mutable default values, as discussed below.  It is an error to specify both ``default`` and ``default_factory``. ``default``, ``default_factory``, ``init``, ``repr``, ``hash``, ``compare``, ``metadata``, and ``kw_only`` have the identical meaning and values as they do in the :func:`field` function. ``default``: If provided, this will be the default value for this field.  This is needed because the :meth:`field` call itself replaces the normal position of the default value. ``eq``: If true (the default), an :meth:`~object.__eq__` method will be generated.  This method compares the class as if it were a tuple of its fields, in order.  Both instances in the comparison must be of the identical type. ``field``\s may optionally specify a default value, using normal Python syntax:: ``frozen``: If true (the default is ``False``), assigning to fields will generate an exception.  This emulates read-only frozen instances.  If :meth:`~object.__setattr__` or :meth:`~object.__delattr__` is defined in the class, then :exc:`TypeError` is raised.  See the discussion below. ``hash``: This can be a bool or ``None``.  If true, this field is included in the generated :meth:`~object.__hash__` method.  If ``None`` (the default), use the value of ``compare``: this would normally be the expected behavior.  A field should be considered in the hash if it's used for comparisons.  Setting this value to anything other than ``None`` is discouraged. ``init``: If true (the default), a :meth:`~object.__init__` method will be generated. ``init``: If true (the default), this field is included as a parameter to the generated :meth:`~object.__init__` method. ``kw_only``: If true (the default value is ``False``), then all fields will be marked as keyword-only.  If a field is marked as keyword-only, then the only effect is that the :meth:`~object.__init__` parameter generated from a keyword-only field must be specified with a keyword when :meth:`~object.__init__` is called.  There is no effect on any other aspect of dataclasses.  See the :term:`parameter` glossary entry for details.  Also see the :const:`KW_ONLY` section. ``kw_only``: If true, this field will be marked as keyword-only. This is used when the generated :meth:`~object.__init__` method's parameters are computed. ``match_args``: If true (the default is ``True``), the ``__match_args__`` tuple will be created from the list of parameters to the generated :meth:`~object.__init__` method (even if :meth:`~object.__init__` is not generated, see above).  If false, or if ``__match_args__`` is already defined in the class, then ``__match_args__`` will not be generated. ``metadata``: This can be a mapping or None. None is treated as an empty dict.  This value is wrapped in :func:`~types.MappingProxyType` to make it read-only, and exposed on the :class:`Field` object. It is not used at all by Data Classes, and is provided as a third-party extension mechanism. Multiple third-parties can each have their own key, to use as a namespace in the metadata. ``name``: The name of the field. ``order``: If true (the default is ``False``), :meth:`~object.__lt__`, :meth:`~object.__le__`, :meth:`~object.__gt__`, and :meth:`~object.__ge__` methods will be generated.  These compare the class as if it were a tuple of its fields, in order.  Both instances in the comparison must be of the identical type.  If ``order`` is true and ``eq`` is false, a :exc:`ValueError` is raised. ``repr``: If true (the default), a :meth:`~object.__repr__` method will be generated.  The generated repr string will have the class name and the name and repr of each field, in the order they are defined in the class.  Fields that are marked as being excluded from the repr are not included.  For example: ``InventoryItem(name='widget', unit_price=3.0, quantity_on_hand=10)``. ``repr``: If true (the default), this field is included in the string returned by the generated :meth:`~object.__repr__` method. ``slots``: If true (the default is ``False``), :attr:`~object.__slots__` attribute will be generated and new class will be returned instead of the original one. If :attr:`~object.__slots__` is already defined in the class, then :exc:`TypeError` is raised. ``type``: The type of the field. ``unsafe_hash``: If ``False`` (the default), a :meth:`~object.__hash__` method is generated according to how ``eq`` and ``frozen`` are set. ``weakref_slot``: If true (the default is ``False``), add a slot named "__weakref__", which is required to make an instance weakref-able.  It is an error to specify ``weakref_slot=True`` without also specifying ``slots=True``. it would generate code similar to:: will add, among other things, a :meth:`~object.__init__` that looks like:: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-30 14:13+0000
PO-Revision-Date: 2021-06-28 01:03+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源码：** :source:`Lib/dataclasses.py` :class:`Field` 对象描述每个已定义的字段。这些对象在内部被创建，并由 :func:`fields` 模块级方法返回（见下）。用户永远不应该直接实例化 :class:`Field` 对象。它的下列属性的含义是由文档规定的： 如果在具有默认值的字段之后存在没有默认值的字段，将会引发 :exc:`TypeError`。无论此情况是发生在单个类中还是作为类继承的结果，都是如此。 如果 ``obj`` 不是一个数据类实例，:func:`asdict` 引发 :exc:`TypeError`。 如果 ``obj`` 不是一个数据类实例，:func:`astuple` 引发 :exc:`TypeError`。 :meth:`~object.__hash__` 将由内置的 :meth:`hash()` 使用，并会在对象被添加到可哈希的多项集如字典和集合时被调用。 具有 :meth:`~object.__hash__` 意味着类的实例是不可变对象。 可变性是一个复杂的特性，它依赖于程序员的意图，:meth:`~object.__eq__` 的存在和行为方式，以及 :func:`dataclass` 装饰器中 ``eq`` 和 ``frozen`` 旗标的值。 :mod:`dataclasses` --- 数据类 一个指明“没有提供 default 或 default_factory”的监视值。 一个用作类型标注的监视值。 任何在伪字段之后的类型为 :const:`KW_ONLY` 的字段会被标记为仅限关键字字段。 请注意在其他情况下 :const:`KW_ONLY` 类型的伪字段会被完全忽略。 这包括此类字段的名称。 根据惯例，名称 ``_`` 会被用作 :const:`KW_ONLY` 字段。 仅限关键字字段指明当类被实例化时 :meth:`~object.__init__` 形参必须以关键字形式来指定。 在计算出 :meth:`~object.__init__` 所需要的形参之后，任何仅限关键字形参会被移至所有常规（非仅限关键字）形参的后面。 这是 Python 中实现仅限关键字形参所要求的：它们必须位于非仅限关键字形参之后。 在其他用途中，这允许初始化依赖于一个或多个其他字段的字段值。例如:: 另一个 :func:`dataclass` 会检查类型标注的地方是为了确定一个字段是否为仅限初始化的变量。 它通过查看字段的类型是否为 ``dataclasses.InitVar`` 类型来实现这一点。 如果一个字段是 ``InitVar``，它会被当作是名为仅限初始化字段的伪字段。 因为它不是一个真正的字段，所以它不会被模块层级的 :func:`fields` 函数返回。 仅限初始化字段会作为形参被添加到所生成的 :meth:`~object.__init__` 方法中，并被传递给可选的 :meth:`__post_init__` 方法。 在其他情况下它们将不会被数据类所使用。 如上所示，:const:`MISSING` 值是一个哨兵对象，用于检测一些形参是否由用户提供。使用它是因为 ``None`` 对于一些形参来说是有效的用户值。任何代码都不应该直接使用 :const:`MISSING` 值。 提前提醒 ``init=False`` 字段在 :func:`replace` 被调用时的行为。如果它们被初始化的话，它们不是从源对象复制的，而是在 :meth:`__post_init__` 中初始化。除非保持审慎，否则 ``init=False`` 字段大概很少能被正确地使用。如果使用它们，那么使用另外的类构造器，或自定义 ``replace()`` 方法（或类似名称的方法）来复制实例，可能是明智的选择。 在默认情况下，:func:`dataclass` 不会隐式地添加 :meth:`~object.__hash__` 方法，除非这样做是安全的。 它也不会添加或更改现有的显式定义的 :meth:`~object.__hash__` 方法。 设置类属性 ``__hash__ = None`` 对 Python 来说有特别的含义，如 :meth:`~object.__hash__` 文档所描述的。 类变量 继续前一个例子： 将数据类 ``obj`` 转换为一个字典（使用工厂函数 ``dict_factory``）。每个数据类被转换为以 ``name: value`` 键值对来储存其字段的字典。数据类、字典、列表和元组的内容会被递归地访问。其它对象用 :func:`copy.deepcopy` 来复制。 将数据类 ``obj`` 转换为一个元组（使用工厂函数 ``tuple_factory``）。每个数据类被转换为其字段的值的元组。数据类、字典、列表和元组的内容会被递归地访问。其它对象用 :func:`copy.deepcopy` 来复制。 创建一个新数据类，名为 ``cls_name``，包含的字段为 ``fields``，基类为 ``bases``，并且用 ``namespace`` 指定的命名空间初始化。``fields`` 是一个可迭代对象，其每一个元素的形式都可以取 ``name``，``(name, type)`` 或 ``(name, type, Field)`` 中的一种。若只提供 ``name``，``type`` 则为 ``typing.Any``。后面这些参数：``init``、``repr``、``eq``、``order``、``unsafe_hash``、``frozen``、``match_args``、``kw_only``、``slots``、``weakref_slot`` 全都与 :func:`dataclass` 的同名参数作用相同。 创建一个与 ``obj`` 类型相同的新对象，将字段替换为 ``changes`` 里的值。如果 ``obj`` 不是数据类，引发 :exc:`TypeError` 。如果 ``changes`` 里的值没有指定要替换的字段名，引发 :exc:`TypeError`。 默认工厂函数 字段标注描述器类型 在嵌套的数据类上使用 :func:`asdict` 的例子： 当字段被 :ref:`描述器对象 <descriptors>` 赋值为默认值时会遵循以下行为: 大多数时候，对于简单常见的用途，前述的功能已经足够了。而有些功能需要字段提供额外的信息来启用。为了满足这种对附加信息的需求，你可以通过调用提供的 :func:`field` 函数来替换字段默认值。例如： 例如，假设在创建类时没有为某个字段提供值，初始化时将从数据库中取值:: 冻结的实例 以下是隐式创建 :meth:`~object.__hash__` 方法的规则。 请注意你不能在你的数据类中即定义显式的 :meth:`~object.__hash__` 方法又设置 ``unsafe_hash=True``；这会导致 :exc:`TypeError`。 如果 :func:`dataclass` 仅用作没有参数的简单装饰器，它将使用它的函数签名中的默认值。也就是说，这三种 :func:`dataclass` 用法是等价的： 如果 :meth:`~object.__hash__` 没有被显式地定义，或者如果它被设为 ``None``，则 :func:`dataclass` *可能* 会添加一个隐式的 :meth:`~object.__hash__` 方法。 虽然并不推荐，但你可以设置 ``unsafe_hash=True`` 来强制 :func:`dataclass` 创建一个 :meth:`~object.__hash__` 方法。 如果你的类在逻辑上不可变但仍然可被修改那么可能就是这种情况。 这是一个特殊应用场景并且应当被谨慎考虑。 如果 ``eq`` 和 ``frozen`` 都为真值，则 :func:`dataclass` 将默认为你生成一个 :meth:`~object.__hash__` 方法。 如果 ``eq`` 为真值且 ``frozen`` 为假值，则 :meth:`~object.__hash__` 将被设为 ``None``，以标记其为不可哈希的（因为它是可变对象）。 如果 ``eq`` 为假值，则 :meth:`~object.__hash__` 将保持不变，这意味着将使用超类的 :meth:`~object.__hash__` 方法（如果超类是 :class:`object`，这意味着它将回退为基于 id 的哈希）。 如果定义了 ``module``，则该数据类的 ``__module__`` 属性将被设为它所指定的值。 在默认情况下，它将被设为调用方的模块名。 如果一个 :func:`field` 指定了一个 ``default_factory`` ，当需要该字段的默认值时，将使用零参数调用它。例如，要创建列表的新实例，请使用:: 如果一个字段被排除在 :meth:`~object.__init__` 之外 (使用 ``init=False``) 但该字段同样也指定了 ``default_factory``，则默认的工厂函数将始终从生成的 :meth:`~object.__init__` 函数中被调用。 发生这种情况是因为没有其它方法能为字段提供初始值。 如果某个字段名称已经包括在基类的 ``__slots__`` 中，它将不会被包括在所生成的 ``__slots__`` 中以防止 :ref:`覆盖它们 <datamodel-note-slots>`。 因此，请不要使用 ``__slots__`` 来获取数据类的字段名称。 而应改用 :func:`fields`。 为了能够确定所继承的槽位，基类 ``__slots__`` 可以为任意可迭代对象，但是 *不可以为* 迭代器。 如果该类已经定义了 :meth:`~object.__eq__`，则忽略此形参。 如果该类已经定义了 :meth:`~object.__init__`，则忽略此形参。 如果该类已经定义了 :meth:`~object.__repr__`，则忽略此形参。 如果该类已经定义了 :meth:`~object.__lt__`, :meth:`~object.__le__`, :meth:`~object.__gt__` 或者 :meth:`~object.__ge__` 中的任意一个，则会引发 :exc:`TypeError`。 如果通过调用 :func:`field()` 指定字段的默认值，则该字段对应的类属性的值将最终被替换为指定的 ``default`` 值。如果没有提供 ``default``，那么将删除该字段对应的类属性。目的是在 :func:`dataclass` 装饰器运行之后，类属性将包含字段的默认值，和直接指定了默认值一样。例如，在运行如下代码之后： 如果你需要知道一个类是否是一个数据类的实例（而不是一个数据类本身），那么再添加一个 ``not isinstance(obj, type)`` 检查： 在单个数据类中，指定一个以上 :const:`KW_ONLY` 类型的字段将导致错误。 在这种情况下， :func:`fields` 将返回 ``i`` 和 ``j`` 的 :class:`Field` 对象，但不包括 ``database`` 。 在这个例子中，``Base.y``, ``Base.w``, and ``D.t`` 是仅限关键字字段，而 ``Base.x`` 和 ``D.z`` 是常规字段:: 在这个例子中，``a`` 和 ``b`` 都将被包括在所添加的 :meth:`~object.__init__` 方法中，该方法将被定义为:: 在这个例子中，字段 ``y`` 和 ``z`` 将被标记为仅限关键字字段:: 继承 仅初始化变量 如果存在任何没有默认值的仅初始化变量，那么必须在调用 :func:`replace` 时给出它们的值，以便它们可以被传递给 :meth:`~object.__init__` 和 :meth:`__post_init__`。 现在不再是寻找并阻止使用类型为 ``list``, ``dict`` 或 ``set`` 的对象，而是不允许使用不可哈希的对象作为默认值。 就是将不可哈希性当作是不可变性的等价物。 等价于： ``changes`` 试图为任何定义为 ``init=False`` 的字段赋值，会引发 :exc:`ValueError`。 不可能创建真正不可变的 Python 对象。 但是，通过将 ``frozen=True`` 传递给 :meth:`dataclass` 装饰器，你可以模拟出不可变性。 在这种情况下，dataclass 将向类添加 :meth:`~object.__setattr__` 和 :meth:`~object.__delattr__` 方法。 当被发起调用时这些方法将会引发 :exc:`FrozenInstanceError`。 模块内容 可变的默认值 如果一个字段被描述器标注类型，但默认值并不是描述器对象，那么该字段就只能像平常的字段一样工作。 请注意形参原来在字段列表中出现的位置已被重新排序：前面是来自常规字段的形参而后面是来自仅限关键字字段的形参。 请注意，类 ``C`` 的两个实例共享相同的类变量 ``x`` ，如预期的那样。 请注意，此方法会自动添加到类中：而不是在如上所示的 ``InventoryItem`` 定义中被直接指定。 但是，请注意一般来说 dataclass 生成的 :meth:`~object.__init__` 方法不需要被调用，因为派生的 dataclass 将负责初始化任何本身为 dataclass 的基类的所有字段。 在 :func:`dataclass` 会实际检查字段类型的少数几个地方之一是确定字符是否为如 :pep:`526` 所定义的类变量。 它通过检查字段的类型是否为 ``typing.ClassVar`` 来实现这一点。 如果一个字段是 ``ClassVar``，它将被排除在考虑范围之外并被数据类机制所忽略。 这样的 ``ClassVar`` 伪字段将不会被模块层级的 :func:`fields` 函数返回。 设置 ``hash=False`` 但 ``compare=True`` 的一个合理情况是，一个计算哈希值的代价很高的字段是检验等价性需要的，且还有其他字段可以用于计算类型的哈希值。可以从哈希值中排除该字段，但仍令它用于比较。 可能存在其他属性，但它们是私有的。用户不应检查或依赖于这些属性。 初始化后处理 Python 在类属性中存储默认成员变量值。思考这个例子，不使用数据类:: 在定义时设置了 ``frozen=True`` 的类上调用隐式定义的 :meth:`~object.__setattr__` 或 :meth:`~object.__delattr__` 时引发。 这是 :exc:`AttributeError` 的一个子类。 :meth:`~object.__init__` 中仅限关键字形参的重新排序 如果其形参为数据类，或其实例，返回 ``True``，否则返回 ``False``。 返回一个能描述此数据类所包含的字段的元组，元组的每一项都是 :class:`Field` 对象。接受数据类或数据类的实例。如果没有传递一个数据类或实例将引发 :exc:`TypeError`。不返回 ``ClassVar`` 或 ``InitVar`` 等伪字段。 有关将参数传递给 :meth:`__post_init__` 的方法，请参阅下面有关仅初始化变量的段落。另请参阅关于 :func:`replace` 处理 ``init=False`` 字段的警告。 相似的是，当我们获取或设置字段的值时，不会覆盖或返回描述器对象，而是会调用描述器的 ``__get__`` 或 ``__set__`` 方法后返回。 :func:`dataclass` 装饰器会检查类以查找 ``field`` —— ``field`` 被定义为具有 :term:`类型标注 <variable annotation>` 的类变量。除了下面描述的两个例外，在 :func:`dataclass` 中没有什么东西会去检查这些变量标注成了何种类型。 :func:`dataclass` 装饰器将向类中添加如下的各种“dunder”方法。如果所添加的方法已存在于类中，则行为将取决于下面所列出的形参。 装饰器会返回调用它的类本身；不会创建新的类。 由 :func:`dataclass` 生成的 :meth:`~object.__init__` 方法不会调用基类的 :meth:`~object.__init__` 方法。 如果基类有必须被调用的 :meth:`~object.__init__` 方法，通常是在 :meth:`__post_init__` 方法中调用此方法:: 类属性 ``C.z`` 将是 ``10``，类属性 ``C.t`` 将是 ``20``，类属性 ``C.x`` 和 ``C.y`` 将不设置。 最后的字段列表依次是 ``x`` 、 ``y`` 、 ``z`` 。 ``x`` 的最终类型是 ``int`` ，如类 ``C`` 中所指定的那样。 为 ``C`` 生成的 :meth:`~object.__init__` 方法看起来像是这样:: 为 ``D`` 生成的 :meth:`~object.__init__` 方法看起来像是这样:: 在这些生成的方法中使用的成员变量是使用 :pep:`526` 类型标注来定义的。例如以下代码： 新返回的对象是通过调用数据类的 :meth:`~object.__init__` 方法来创建的。 这确保了如果存在 :meth:`__post_init__`，则它也会被调用。 这些字段在所有生成的方法中的顺序，都是它们在类定义中出现的顺序。 :func:`dataclass` 的参数有： :func:`field` 的形参有： 仅限关键字形参的相对顺序会在重新排序的 :meth:`~object.__init__` 形参列表中继续保持。 字段的值被传递到数据类的 ``__init__`` 方法时，会传递给描述器的 ``__set__`` 方法，而不会覆盖掉描述器对象。 使用 ``frozen=True`` 时会有少量的性能损失: :meth:`~object.__init__` 不能使用简单的赋值来初始化字段，并且必须使用 :meth:`~object.__setattr__`。 这个函数是 :term:`decorator` ，用于将生成的 :term:`special method` 添加到类中，如下所述。 此函数不是必需的，因为任何用于创建带有 ``__annotations__`` 的新类的 Python 机制都可以进一步用 :func:`dataclass` 函数将创建的类转换为数据类。提供此函数是为了方便。例如： 这具有与使用 ``C`` 类的原始示例相同的问题。 也就是说，当创建类实例的时候如果 ``D`` 类的两个实例没有为 ``x`` 指定值则将共享同一个 ``x`` 的副本。 因为数据类只是使用普通的 Python 类创建方式所心它们也会共享此行为。 数据类没有任何通用方式来检测这种情况。 相反地，:func:`dataclass` 装饰器在检测到不可哈希的默认形参时将会引发 :exc:`ValueError`。 这一行为假定如果一个值是不可哈希的，则它就是可变对象。 这是一个部分解决方案，但它确实能防止许多常见错误。 这个模块提供了一个装饰器和一些函数，用于自动为用户自定义的类添加生成的 :term:`special method` 例如 :meth:`~object.__init__` 和 :meth:`~object.__repr__`。 它的初始描述见 :pep:`557`。 要创建一个浅拷贝，可以使用以下的变通方法： 检测字段是否存在默认值时，``dataclasses``会通过类方法的形式去调用描述器的``__get__``方法(即为``descriptor.__get__(obj=None, type=cls)``)。如果描述器有返回值，则返回值为字段的默认值，若调用描述器时抛出 :exc:`AttributeError` 错误，则该字段无默认值。 使用数据类，*如果* 此代码有效： 使用默认工厂函数是一种创建可变类型新实例的方法，并将其作为字段的默认值:: 当在类上定义时，它将被所生成的 :meth:`~object.__init__` 调用，通常是以 ``self.__post_init__()`` 的形式。 但是，如果定义了任何 ``InitVar`` 字段，它们也将按照它们在类中定义的顺序被传递给 :meth:`__post_init__`。 如果没有生成 :meth:`~object.__init__` 方法，那么 :meth:`__post_init__` 将不会被自动调用。 当数据类由 :meth:`dataclass` 装饰器创建时，它会按反向 MRO 顺序（即，从 :class:`object` 开始）查看它的所有基类，并且将找到的每个数据类的字段添加到一个有序映射中。添加完所有基类字段后，它会将自己的字段添加到这个有序映射中。所有生成的方法都将使用这个有序映射。字段会遵守它们被插入的顺序，因此派生类会重写基类。一个例子： ``compare``: 如果为真值（默认），则该字段将被包括在所生成的相等性和大小比较方法中 (:meth:`~object.__eq__`, :meth:`~object.__gt__` 等等)。 ``default_factory``：如果提供，它必须是一个需要零个参数的可调用对象，当该字段需要一个默认值时，它将被调用。这能解决当默认值是可变对象时会带来的问题，如下所述。同时指定 ``default`` 和 ``default_factory`` 将产生错误。 ``default``, ``default_factory``, ``init``, ``repr``, ``hash``, ``compare``, ``metadata`` 和 ``kw_only`` 具有与 :func:`field` 函数中对应参数相同的含义和值。 ``default``：如果提供，这将是该字段的默认值。设计这个形参是因为 :meth:`field` 调用将会占据原来用来提供默认值的位置。 ``eq``: 如果为真值（默认），将生成 :meth:`~object.__eq__` 方法。 此方法将把类当作由其字段组成的元组那样按顺序进行比较。 要比较的两个实例必须是相同的类型。 可以用普通的 Python 语法为各个 ``field`` 指定默认值： ``frozen``: 如果为真值 (默认为 ``False``)，则对字段赋值将引发异常。 这模拟了只读的冻结实例。 如果在类中定义了 :meth:`~object.__setattr__` 或 :meth:`~object.__delattr__`，则将引发 :exc:`TypeError`。 参见下文的讨论。 ``hash``: 这可以是一个布尔值或为 ``None``。 如果为真值，则此字段将被包括在所生成的 :meth:`~object.__hash__` 方法中。 如果为 ``None`` (默认)，则将使用 ``compare`` 的值：这通常是预期的行为。 一个字段如果被用于比较那么就应当在哈希时考虑到它。 不建议将该值设为 ``None`` 以外的任何其他对象。 ``init``: 如为真值（默认），将生成一个 :meth:`~object.__init__` 方法。 ``init``: 如果为真值（默认），则该字段将作为一个形参被包括在所生成的 :meth:`~object.__init__` 方法中。 ``kw_only``: 如果为真值 (默认为 ``False``)，则所有字段都将被标记为仅限关键字字段。 如果一个字段被标记为仅限关键字字段，则唯一的影响是由仅限关键字字段生成的 :meth:`~object.__init__` 的对应形参在 :meth:`~object.__init__` 被调用时必须以关键字形式指定。 而 dataclass 的任何其它行为都不会受影响。 详情参见 :term:`parameter` 术语表条目。 另请参见 :const:`KW_ONLY` 一节。 ``kw_only``: 如果为真值，则该字段将被标记为仅限关键字字段。 这将在计算所生成的 :meth:`~object.__init__` 方法的形参时被使用。 ``match_args``: 如果为真值 (默认为 ``True``)，则将根据传给已生成的 :meth:`~object.__init__` 方法的形参列表来创建 ``__match_args__`` 元组 (即使没有生成 :meth:`~object.__init__`，见上文)。 如果为假值，或者如果 ``__match_args__`` 已在类中定义，则不会生成 ``__match_args__``。 ``metadata``：可以是映射或 None。None 被视为一个空的字典。这个值将被包装在 :func:`~types.MappingProxyType` 中，使其只读，并暴露在 :class:`Field` 对象上。数据类不使用它——它是作为第三方扩展机制提供的。多个第三方可以各自拥有自己的键，以用作元数据中的命名空间。 ``name``：字段的名称。 ``order``: 如果为真值 (默认为 ``False``)，将生成 :meth:`~object.__lt__`, :meth:`~object.__le__`, :meth:`~object.__gt__` 和 :meth:`~object.__ge__` 方法。 这些方法将把类当作由其字段组成的元组那样按顺序进行比较。 要比较的两个实例必须是相同的类型。 如果 ``order`` 为真值并且 ``eq`` 为假值，则会引发 :exc:`ValueError`。 ``repr``: 如果为真值（默认），将生成一个 :meth:`~object.__repr__` 方法。 生成的 repr 字符串将带有类名及每个字符的名称和 repr，并按它们在类中定义的顺序排列。 不包括被标记为从 repr 排除的字段。 例如: ``InventoryItem(name='widget', unit_price=3.0, quantity_on_hand=10)``。 ``repr``: 如果为真值（默认），则该字段将被包括在所生成的 :meth:`~object.__repr__` 方法返回的字符串中。 ``slots``: 如果为真值 (默认为 ``False``)，则将生成 :attr:`~object.__slots__` 属性并返回一个新类而非原来的类。 如果 :attr:`~object.__slots__` 已在类中定义，则会引发 :exc:`TypeError`。 ``type``：字段的类型。 ``unsafe_hash``: 如果为 ``False`` (默认值)，则会根据 ``eq`` 和 ``frozen`` 的设置情况生成 :meth:`~object.__hash__` 方法。 ``weakref_slot``：如果为真值（默认为 ``False``），则添加一个名为 “__weakref__” 的槽位，这是使得一个实例可以被弱引用所必需的。指定 ``weakref_slot=True`` 而不同时指定 ``slots=True`` 将会导致错误。 它生成的代码类似于:: 除其他内容以外，还将添加如下所示的 :meth:`~object.__init__`:: 