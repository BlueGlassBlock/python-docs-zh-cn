Þ    I      d              ¬     ­  m   B     °  e   7  ©     P  G  Ï    Ï  h
  3  8  ß   l    L     X     å  k   x  °  ä      Q     ;   ê  ×   &  ÿ   þ  ­   þ     ¬     ?  ¨   Á  å   j  Ý   P  ê   .  ½        ×  /   ç       7      3   Ø              ±     Ë  º   _   ¹   !     Ô!     g"     ù"  &  #     °$     <%  ä   Ä%     ©&  ¡   .'  °   Ð'  ¥   (  ü   ')  â   $*  u   +     }+  b   ,  w   |,  2  ô,  §   '.  r   Ï.    B/  ÷   Ó0  I  Ë1  ¥   3  â  »3     5     ¤5     ¶5     ¼5     Á5     Å5     Ê5     Ñ5  ¿  Ö5     7  [   58  [   8  K   í8     99  7  Æ9  ´  þ:    ³<    K>  ²   j?  Ø   @  n   ö@  }   eA  b   ãA  x  FB  ¬  ¿C  R   lE  C   ¿E  Ý   F    áF     êG     }H  }   I     I  Á   .J  Á   ðJ  Ô   ²K  °   L     8M  6   EM     |M  6   
N  :   AN  ÿ   |N     |O     P  v   P     P  ¢   .Q     ÑQ     kR     ïR  ù   S  v   T     ÷T  ª   wU  r   "V     V      *W     ËW  î   `X  ±   OY  ^   Z     `Z  l   óZ  s   `[    Ô[     ñ\  ]   }]  Y  Û]  ë   5_  G  !`  ´   ia  »  b     Úc     àc  	   íc     ÷c     üc      d     d     d   *format_spec* may be ``NULL``. In this case the call is equivalent to ``format(obj)``. Returns the formatted string on success, ``NULL`` on failure. A generic implementation for the getter of a ``__dict__`` descriptor. It creates the dictionary if necessary. A generic implementation for the setter of a ``__dict__`` descriptor. This implementation does not allow the dictionary to be deleted. An instance *inst* can override what is considered its class by having a :attr:`__class__` attribute. An object *cls* can override if it is considered a class, and what its base classes are, by having a :attr:`__bases__` attribute (which must be a tuple of base classes). As :c:func:`PyObject_Repr`, compute a string representation of object *o*, but escape the non-ASCII characters in the string returned by :c:func:`PyObject_Repr` with ``\x``, ``\u`` or ``\U`` escapes.  This generates a string similar to that returned by :c:func:`PyObject_Repr` in Python 2. Called by the :func:`ascii` built-in function. Compare the values of *o1* and *o2* using the operation specified by *opid*, which must be one of :const:`Py_LT`, :const:`Py_LE`, :const:`Py_EQ`, :const:`Py_NE`, :const:`Py_GT`, or :const:`Py_GE`, corresponding to ``<``, ``<=``, ``==``, ``!=``, ``>``, or ``>=`` respectively. Returns ``-1`` on error, ``0`` if the result is false, ``1`` otherwise. This is the equivalent of the Python expression ``o1 op o2``, where ``op`` is the operator corresponding to *opid*. Compare the values of *o1* and *o2* using the operation specified by *opid*, which must be one of :const:`Py_LT`, :const:`Py_LE`, :const:`Py_EQ`, :const:`Py_NE`, :const:`Py_GT`, or :const:`Py_GE`, corresponding to ``<``, ``<=``, ``==``, ``!=``, ``>``, or ``>=`` respectively. This is the equivalent of the Python expression ``o1 op o2``, where ``op`` is the operator corresponding to *opid*. Returns the value of the comparison on success, or ``NULL`` on failure. Compute a bytes representation of object *o*.  ``NULL`` is returned on failure and a bytes object on success.  This is equivalent to the Python expression ``bytes(o)``, when *o* is not an integer.  Unlike ``bytes(o)``, a TypeError is raised when *o* is an integer instead of a zero-initialized bytes object. Compute a string representation of object *o*.  Returns the string representation on success, ``NULL`` on failure.  This is the equivalent of the Python expression ``repr(o)``.  Called by the :func:`repr` built-in function. Compute a string representation of object *o*.  Returns the string representation on success, ``NULL`` on failure.  This is the equivalent of the Python expression ``str(o)``.  Called by the :func:`str` built-in function and, therefore, by the :func:`print` function. Compute and return the hash value of an object *o*.  On failure, return ``-1``. This is the equivalent of the Python expression ``hash(o)``. Delete attribute named *attr_name*, for object *o*. Returns ``-1`` on failure. This is the equivalent of the Python statement ``del o.attr_name``. Format *obj* using *format_spec*. This is equivalent to the Python expression ``format(obj, format_spec)``. Generic attribute getter function that is meant to be put into a type object's ``tp_getattro`` slot.  It looks for a descriptor in the dictionary of classes in the object's MRO as well as an attribute in the object's :attr:`~object.__dict__` (if present).  As outlined in :ref:`descriptors`, data descriptors take preference over instance attributes, while non-data descriptors don't.  Otherwise, an :exc:`AttributeError` is raised. Generic attribute setter and deleter function that is meant to be put into a type object's :c:member:`~PyTypeObject.tp_setattro` slot.  It looks for a data descriptor in the dictionary of classes in the object's MRO, and if found it takes preference over setting or deleting the attribute in the instance dictionary. Otherwise, the attribute is set or deleted in the object's :attr:`~object.__dict__` (if present). On success, ``0`` is returned, otherwise an :exc:`AttributeError` is raised and ``-1`` is returned. Get a pointer to per-item data for a class with :const:`Py_TPFLAGS_ITEMS_AT_END`. Get a pointer to subclass-specific data reserved for *cls*. If *cls* has a :meth:`~class.__instancecheck__` method, it will be called to determine the subclass status as described in :pep:`3119`.  Otherwise, *inst* is an instance of *cls* if its class is a subclass of *cls*. If *cls* has a :meth:`~class.__subclasscheck__` method, it will be called to determine the subclass status as described in :pep:`3119`.  Otherwise, *derived* is a subclass of *cls* if it is a direct or indirect subclass, i.e. contained in ``cls.__mro__``. If *cls* is a tuple, the check will be done against every entry in *cls*. The result will be ``1`` when at least one of the checks returns ``1``, otherwise it will be ``0``. If *o1* and *o2* are the same object, :c:func:`PyObject_RichCompareBool` will always return ``1`` for :const:`Py_EQ` and ``0`` for :const:`Py_NE`. If *v* is ``NULL``, the attribute is deleted, but this feature is deprecated in favour of using :c:func:`PyObject_DelAttrString`. If *v* is ``NULL``, the attribute is deleted. This behaviour is deprecated in favour of using :c:func:`PyObject_DelAttr`, but there are currently no plans to remove it. Map the object *key* to the value *v*.  Raise an exception and return ``-1`` on failure; return ``0`` on success.  This is the equivalent of the Python statement ``o[key] = v``.  This function *does not* steal a reference to *v*. Normally only class objects, i.e. instances of :class:`type` or a derived class, are considered classes.  However, objects can override this by having a :attr:`__bases__` attribute (which must be a tuple of base classes). Note that exceptions which occur while calling :meth:`__getattr__` and :meth:`__getattribute__` methods and creating a temporary string object will get suppressed. To get error reporting use :c:func:`PyObject_GetAttrString()` instead. Note that exceptions which occur while calling :meth:`__getattr__` and :meth:`__getattribute__` methods will get suppressed. To get error reporting use :c:func:`PyObject_GetAttr()` instead. Object Protocol On error, set an exception and return ``NULL``. On error, set an exception and return ``NULL``. :py:exc:`TypeError` is raised if *o* does not have :const:`Py_TPFLAGS_ITEMS_AT_END` set. On error, set an exception and return a negative value. On failure, returns ``NULL`` with an exception set. Print an object *o*, on file *fp*.  Returns ``-1`` on error.  The flags argument is used to enable certain printing options.  The only option currently supported is :const:`Py_PRINT_RAW`; if given, the :func:`str` of the object is written instead of the :func:`repr`. Properly handle returning :c:data:`Py_NotImplemented` from within a C function (that is, increment the reference count of NotImplemented and return it). PyObject_Str (C function) Remove the mapping for the object *key* from the object *o*.  Return ``-1`` on failure.  This is equivalent to the Python statement ``del o[key]``. Retrieve an attribute named *attr_name* from object *o*. Returns the attribute value on success, or ``NULL`` on failure.  This is the equivalent of the Python expression ``o.attr_name``. Retrieve an attribute named *attr_name* from object *o*. Returns the attribute value on success, or ``NULL`` on failure. This is the equivalent of the Python expression ``o.attr_name``. Return ``1`` if *inst* is an instance of the class *cls* or a subclass of *cls*, or ``0`` if not.  On error, returns ``-1`` and sets an exception. Return ``1`` if the class *derived* is identical to or derived from the class *cls*, otherwise return ``0``.  In case of an error, return ``-1``. Return a pointer to :py:attr:`~object.__dict__` of the object *obj*. If there is no ``__dict__``, return ``NULL`` without setting an exception. Return an estimated length for the object *o*. First try to return its actual length, then an estimate using :meth:`~object.__length_hint__`, and finally return the default value. On error return ``-1``. This is the equivalent to the Python expression ``operator.length_hint(o, defaultvalue)``. Return element of *o* corresponding to the object *key* or ``NULL`` on failure. This is the equivalent of the Python expression ``o[key]``. Return non-zero if the object *o* is of type *type* or a subtype of *type*, and ``0`` otherwise.  Both parameters must be non-``NULL``. Return the length of object *o*.  If the object *o* provides either the sequence and mapping protocols, the sequence length is returned.  On error, ``-1`` is returned.  This is the equivalent to the Python expression ``len(o)``. Return the size of the instance memory space reserved for *cls*, i.e. the size of the memory :c:func:`PyObject_GetTypeData` returns. Returns ``0`` if the object *o* is considered to be true, and ``1`` otherwise. This is equivalent to the Python expression ``not o``.  On failure, return ``-1``. Returns ``1`` if *o* has the attribute *attr_name*, and ``0`` otherwise.  This is equivalent to the Python expression ``hasattr(o, attr_name)``.  This function always succeeds. Returns ``1`` if the object *o* is considered to be true, and ``0`` otherwise. This is equivalent to the Python expression ``not not o``.  On failure, return ``-1``. Set a :exc:`TypeError` indicating that ``type(o)`` is not :term:`hashable` and return ``-1``. This function receives special treatment when stored in a ``tp_hash`` slot, allowing a type to explicitly indicate to the interpreter that it is not hashable. Set the value of the attribute named *attr_name*, for object *o*, to the value *v*. Raise an exception and return ``-1`` on failure; return ``0`` on success.  This is the equivalent of the Python statement ``o.attr_name = v``. The ``NotImplemented`` singleton, used to signal that an operation is not implemented for the given type combination. The object *o* must be an instance of *cls*, and *cls* must have been created using negative :c:member:`PyType_Spec.basicsize`. Python does not check this. The return type is now Py_hash_t.  This is a signed integer the same size as :c:type:`Py_ssize_t`. The type *cls* **must** have been created using negative :c:member:`PyType_Spec.basicsize`. Python does not check this. This function may also be called to get the :py:attr:`~object.__dict__` of the object *o*. Pass ``NULL`` for *context* when calling it. Since this function may need to allocate memory for the dictionary, it may be more efficient to call :c:func:`PyObject_GetAttr` when accessing an attribute on the object. This function may need to allocate memory for the dictionary, so it may be more efficient to call :c:func:`PyObject_GetAttr` when accessing an attribute on the object. This function now includes a debug assertion to help ensure that it does not silently discard an active exception. This is equivalent to the Python expression ``dir(o)``, returning a (possibly empty) list of strings appropriate for the object argument, or ``NULL`` if there was an error.  If the argument is ``NULL``, this is like the Python ``dir()``, returning the names of the current locals; in this case, if no execution frame is active then ``NULL`` is returned but :c:func:`PyErr_Occurred` will return false. This is equivalent to the Python expression ``iter(o)``. It returns a new iterator for the object argument, or the object  itself if the object is already an iterator.  Raises :exc:`TypeError` and returns ``NULL`` if the object cannot be iterated. This is the equivalent to the Python expression ``aiter(o)``. Takes an :class:`AsyncIterable` object and returns an :class:`AsyncIterator` for it. This is typically a new iterator but if the argument is an :class:`AsyncIterator`, this returns itself. Raises :exc:`TypeError` and returns ``NULL`` if the object cannot be iterated. This may be larger than requested using :c:member:`-PyType_Spec.basicsize <PyType_Spec.basicsize>`; it is safe to use this larger size (e.g. with :c:func:`!memset`). When *o* is non-``NULL``, returns a type object corresponding to the object type of object *o*. On failure, raises :exc:`SystemError` and returns ``NULL``.  This is equivalent to the Python expression ``type(o)``. This function increments the reference count of the return value. There's really no reason to use this function instead of the :c:func:`Py_TYPE()` function, which returns a pointer of type :c:expr:`PyTypeObject*`, except when the incremented reference count is needed. ascii built-in function bytes hash len repr string type Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-09 14:13+0000
PO-Revision-Date: 2021-06-28 00:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 *format_spec* å¯ä»¥ä¸º ``NULL``ã å¨æ­¤æåµä¸è°ç¨å°ç­ä»·äº ``format(obj)``ã æåæ¶è¿åå·²æ ¼å¼åçå­ç¬¦ä¸²ï¼å¤±è´¥æ¶è¿å ``NULL``ã ``__dict__`` æè¿°ç¬¦çè·åå½æ°çä¸ç§éç¨å®ç°ãå¿è¦æ¶ä¼åå»ºè¯¥å­å¸ã ``__dict__`` æè¿°ç¬¦è®¾ç½®å½æ°çä¸ç§éç¨å®ç°ãè¿éä¸åè®¸å é¤è¯¥å­å¸ã å®ä¾ *inst* å¯ä»¥éè¿ :attr:`__class__` å±æ§æ¥è¦çå¶æå±ç±»ã å¯¹è±¡ *cls* æ¯å¦è¢«è®¤ä½ç±»ï¼ä»¥ååºç±»æ¯ä»ä¹ï¼åå¯éè¿ :attr:`__bases__` å±æ§ï¼å¿é¡»æ¯åºç±»çåç»ï¼è¿è¡è¦çã ä¸ :c:func:`PyObject_Repr` ä¸æ ·ï¼è®¡ç®å¯¹è±¡ *o* çå­ç¬¦ä¸²å½¢å¼ï¼ä½å¨ :c:func:`PyObject_Repr` è¿åçå­ç¬¦ä¸²ä¸­ç¨ ``\x``ã``\u`` æ ``\U`` è½¬ä¹é ASCII å­ç¬¦ãè¿å°çæä¸ä¸ªç±»ä¼¼äº Python 2 ä¸­ç± :c:func:`PyObject_Repr` è¿åçå­ç¬¦ä¸²ãç±åç½®å½æ° :func:`ascii` è°ç¨ã ç¨ *opid* æå®çæä½æ¯è¾ *o1* å *o2* çå¼ï¼å¿é¡»æ¯ :const:`Py_LT` ã :const:`Py_LE` ã :const:`Py_EQ` ã :const:`Py_NE` ã :const:`Py_GT` æ :const:`Py_GE` ä¹ä¸ï¼åå«å¯¹åºäº ``<`` ã``<=``ã ``==`` ã``!=`` ã``>`` æ ``>=``ãéè¯¯æ¶è¿å ``-1``ï¼è¥ç»æä¸º false åè¿å ``0``ï¼å¦åè¿å ``1``ãè¿ç¸å½äº Python è¡¨è¾¾å¼ ``o1 op o2``ï¼å¶ä¸­ ``op`` æ¯å¯¹åºäº *opid* çæä½ç¬¦ã ç¨ *opid* æå®çæä½æ¯è¾ *o1* å *o2* çå¼ï¼å¿é¡»æ¯ :const:`Py_LT` ã :const:`Py_LE` ã :const:`Py_EQ` ã :const:`Py_NE` ã :const:`Py_GT` æ :const:`Py_GE` ä¹ä¸ï¼åå«å¯¹åºäº ``<``ã``<=`` ã``==`` ã ``!=`` ã``>`` æ ``>=``ãè¿ç¸å½äº Python è¡¨è¾¾å¼ ``o1 op o2``ï¼å¶ä¸­ ``op`` æ¯å¯¹åºäº *opid* çæä½ç¬¦ãæåæ¶è¿åæ¯è¾å¼ï¼å¤±è´¥æ¶è¿å ``NULL``ã è®¡ç®å¯¹è±¡ *o* çå­èå½¢å¼ãå¤±è´¥æ¶è¿å ``NULL``ï¼æåæ¶è¿åä¸ä¸ªå­èä¸²å¯¹è±¡ãè¿ç¸å½äº *o* ä¸æ¯æ´æ°æ¶ç Python è¡¨è¾¾å¼ ``bytes(o)`` ãä¸ ``bytes(o)`` ä¸åçæ¯ï¼å½ *o* æ¯æ´æ°èä¸æ¯åå§ä¸º 0 çå­èä¸²å¯¹è±¡æ¶ï¼ä¼è§¦å TypeErrorã è®¡ç®å¯¹è±¡ *o* çå­ç¬¦ä¸²å½¢å¼ã æåæ¶è¿åå­ç¬¦ä¸²ï¼å¤±è´¥æ¶è¿å ``NULL``ã è¿ç¸å½äº Python è¡¨è¾¾å¼ ``repr(o)``ã ç±åç½®å½æ° :func:`repr`  è°ç¨ã è®¡ç®å¯¹è±¡ *o* çå­ç¬¦ä¸²å½¢å¼ã æåæ¶è¿åå­ç¬¦ä¸²ï¼å¤±è´¥æ¶è¿å ``NULL``ã è¿ç¸å½äº Python è¡¨è¾¾å¼ ``str(o)``ãç±åç½®å½æ° :func:`str` è°ç¨ï¼å æ­¤ä¹ç± :func:`print` å½æ°è°ç¨ã è®¡ç®å¹¶è¿åå¯¹è±¡çåå¸å¼ *o*ã å¤±è´¥æ¶è¿å ``-1``ãè¿ç¸å½äº Python è¡¨è¾¾å¼ ``hash(o)``ã å é¤å¯¹è±¡ *o* ä¸­åä¸º *attr_name* çå±æ§ãå¤±è´¥æ¶è¿å ``-1``ãè¿ç¸å½äº Python è¯­å¥ ``del o.attr_name``ã æ ¼å¼ *obj* ä½¿ç¨ *format_spec*ã è¿ç­ä»·äº Python è¡¨è¾¾å¼ ``format(obj, format_spec)``ã éç¨çå±æ§è·åå½æ°ï¼ç¨äºæ¾å¥ç±»åå¯¹è±¡ç ``tp_getattro`` æ§½ä¸­ãå®å¨ç±»çå­å¸ä¸­ï¼ä½äºå¯¹è±¡ç MRO ä¸­ï¼æ¥æ¾æä¸ªæè¿°ç¬¦ï¼å¹¶å¨å¯¹è±¡ç :attr:`~object.__dict__` ä¸­æ¥æ¾æä¸ªå±æ§ãæ­£å¦ :ref:`descriptors` æè¿°ï¼æ°æ®æè¿°ç¬¦ä¼åäºå®ä¾å±æ§ï¼èéæ°æ®æè¿°ç¬¦åä¸ä¼åãå¤±è´¥åä¼è§¦å :exc:`AttributeError` ã éç¨çå±æ§è®¾ç½®åå é¤å½æ°ï¼ç¨äºæ¾å¥ç±»åå¯¹è±¡ç :c:member:`~PyTypeObject.tp_setattro` æ§½ãå®å¨ç±»çå­å¸ä¸­ï¼ä½äºå¯¹è±¡çMROä¸­ï¼æ¥æ¾æ°æ®æè¿°å¨ï¼å¦ææ¾å°ï¼åå°æ¯å¨å®ä¾å­å¸ä¸­è®¾ç½®æå é¤å±æ§ä¼åæ§è¡ãå¦åï¼è¯¥å±æ§å°å¨å¯¹è±¡ç :attr:`~object.__dict__` ä¸­è®¾ç½®æå é¤ãå¦ææåå°è¿å ``0``ï¼å¦åå°å¼å :exc:`AttributeError` å¹¶è¿å ``-1``ã ä½¿ç¨ :const:`Py_TPFLAGS_ITEMS_AT_END` è·åæåç±»çåç¬æ¡ç®çæéã è·åä¸ä¸ªæåä¸º *cls* ä¿ççå­ç±»ä¸å±æ°æ®çæéã æ­£å¦ :pep:`3119` æè¿°ï¼å¦æ *cls* å¸¦æ :meth:`~class.__subclasscheck__` æ¹æ³ï¼å°ä¼è¢«è°ç¨ä»¥ç¡®å®å­ç±»çç¶æã å¦åï¼å¦æ *derived* æ¯ *cls* çå­ç±»ï¼é£ä¹å®å°±æ¯ *cls* çä¸ä¸ªå®ä¾ã æ­£å¦ :pep:`3119` æè¿°ï¼å¦æ *cls* å¸¦æ :meth:`~class.__subclasscheck__` æ¹æ³ï¼å°ä¼è¢«è°ç¨ä»¥ç¡®å®å­ç±»çç¶æã å¦åï¼å¦æ *derived* æ¯ä¸ªç´æ¥æé´æ¥å­ç±»ï¼å³åå«å¨ ``cls.__mro__`` ä¸­ï¼é£ä¹å®å°±æ¯ *cls* çä¸ä¸ªå­ç±»ã å¦æ *cls* æ¯åç»ï¼åä¼å¯¹ *cls* è¿è¡éé¡¹æ£æµãå¦æè³å°æä¸æ¬¡æ£æµè¿å ``1``ï¼ç»æå°ä¸º ``1``ï¼å¦åå°æ¯ ``0``ã å¦æ *o1* å *o2* æ¯åä¸ä¸ªå¯¹è±¡ï¼:c:func:`PyObject_RichCompareBool` ä¸º :const:`Py_EQ` åè¿å ``1`` ï¼ä¸º :const:`Py_NE` åè¿å ``0``ã å¦æ *v* ä¸º ``NULL``ï¼è¯¥å±æ§å°è¢«å é¤ï¼ä½æ¯æ­¤åè½å·²è¢«å¼ç¨èåºæ¹ç¨ :c:func:`PyObject_DelAttrString`ã å¦æ *v* ä¸º ``NULL``ï¼è¯¥å±æ§å°è¢«å é¤ã æ­¤è¡ä¸ºå·²è¢«å¼ç¨èåºæ¹ç¨ :c:func:`PyObject_DelAttr`ï¼ä½ç®åè¿æ²¡æç§»é¤å®çè®¡åã å°å¯¹è±¡ *key* æ å°å°å¼ *v*ã å¤±è´¥æ¶å¼åå¼å¸¸å¹¶è¿å ``-1``ï¼æåæ¶è¿å ``0``ã è¿ç¸å½äº Python è¯­å¥ ``o[key] = v``ãè¯¥å½æ° *ä¸ä¼* å·å *v* çå¼ç¨è®¡æ°ã éå¸¸åªæç±»å¯¹è±¡æä¼è¢«è§ä¸ºç±»ï¼å³ :class:`type` ææ´¾çç±»çå®ä¾ãç¶èï¼å¯¹è±¡å¯ä»¥éè¿æ¥æ :attr:`__bases__` å±æ§ï¼å¿é¡»æ¯åºç±»çåç»ï¼æ¥è¦çè¿ä¸ç¹ã æ³¨æï¼å¨è°ç¨ :meth:`__getattr__` å :meth:`__getattribute__` æ¹æ³å¹¶åå»ºä¸ä¸ªä¸´æ¶å­ç¬¦ä¸²å¯¹è±¡æ¶ï¼å¼å¸¸å°è¢«æå¶ãè¥è¦è·å¾éè¯¯æ¥åï¼è¯·æ¢ç¨ :c:func:`PyObject_GetAttrString()` ã æ³¨æï¼å¨è°ç¨ :meth:`__getattr__` å :meth:`__getattribute__` æ¹æ³æ¶åççå¼å¸¸å°è¢«æå¶ãè¥è¦è·å¾éè¯¯æ¥åï¼è¯·æ¢ç¨ :c:func:`PyObject_GetAttr()` ã å¯¹è±¡åè®® åçéè¯¯æ¶ï¼å°è®¾ç½®å¼å¸¸å¹¶è¿å ``NULL``ã åºéæ¶ï¼å°è®¾ç½®å¼å¸¸å¹¶è¿å ``NULL``ã å¦æ *o* æ²¡æè®¾ç½® :const:`Py_TPFLAGS_ITEMS_AT_END` åä¼å¼å :py:exc:`TypeError`ã å½å¤±è´¥æ¶ï¼å°è®¾ç½®å¼å¸¸å¹¶è¿åä¸ä¸ªè´å¼ã å½å¤±è´¥æ¶ï¼å°è¿å ``NULL`` å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ã å°å¯¹è±¡ *o* åå¥å°æä»¶ *fp*ã åºéæ¶è¿å ``-1`` ã ææ åæ°è¢«ç¨äºå¯ç¨ç¹å®çè¾åºéé¡¹ã ç®åå¯ä¸æ¯æçéé¡¹æ¯ :const:`Py_PRINT_RAW`ï¼å¦æç»åºè¯¥éé¡¹ï¼åå°åå¥å¯¹è±¡ç :func:`str` èä¸æ¯ :func:`repr`ã C å½æ°åé¨åºæ­£ç¡®å¤ç :c:data:`Py_NotImplemented` çè¿åè¿ç¨ï¼å³å¢å  NotImplemented çå¼ç¨è®¡æ°å¹¶è¿åä¹ï¼ã PyObject_Str (C å½æ°) ä»å¯¹è±¡ *o* ä¸­ç§»é¤å¯¹è±¡ *key* çæ å°ãå¤±è´¥æ¶è¿å ``-1``ã è¿ç¸å½äº Python è¯­å¥ ``del o[key]``ã ä»å¯¹è±¡ *o* ä¸­è¯»ååä¸º *attr_name* çå±æ§ãæåè¿åå±æ§å¼ï¼å¤±è´¥åè¿å  ``NULL``ã è¿ç¸å½äº Python è¡¨è¾¾å¼ ``o.attr_name``ã ä»å¯¹è±¡ *o* ä¸­è¯»åä¸ä¸ªåä¸º *attr_name* çå±æ§ãæåæ¶è¿åå±æ§å¼ï¼å¤±è´¥åè¿å ``NULL``ãè¿ç¸å½äº Python è¡¨è¾¾å¼ ``o.attr_name``ã å¦æ *inst* æ¯ *cls* ç±»æå¶å­ç±»çå®ä¾ï¼åè¿å ``1``ï¼å¦æä¸æ¯åè¿å ``0``ã å¦æåºéåè¿å ``-1`` å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ã å¦æ *derived* ç±»ä¸ *cls* ç±»ç¸åæä¸ºå¶æ´¾çç±»ï¼åè¿å ``1``ï¼å¦åè¿å ``0``ã å¦æåºéåè¿å ``-1``ã è¿åä¸ä¸ªæåå¯¹è±¡ *obj* ç :py:attr:`~object.__dict__` çæéã å¦æä¸å­å¨ ``__dict__``ï¼åè¿å ``NULL`` å¹¶ä¸ä¸è®¾ç½®å¼å¸¸ã è¿åå¯¹è±¡ *o* çä¼°è®¡é¿åº¦ãé¦åå°è¯è¿åå®éé¿åº¦ï¼ç¶åç¨  :meth:`~object.__length_hint__` è¿è¡ä¼°è®¡ï¼æåè¿åé»è®¤å¼ãåºéæ¶è¿å ``-1``ãè¿ç­åäº Python è¡¨è¾¾å¼ ``operator.length_hint(o, defaultvalue)``ã è¿åå¯¹è±¡ *key* å¯¹åºç *o* åç´ ï¼æå¨å¤±è´¥æ¶è¿å ``NULL``ãè¿ç­åäº Python è¡¨è¾¾å¼ ``o[key]``ã å¦æå¯¹è±¡ *o* æ¯ *type* ç±»åæå¶å­ç±»åï¼åè¿åéé¶ï¼å¦åè¿å ``0``ãä¸¤ä¸ªåæ°é½å¿é¡»é ``NULL``ã è¿åå¯¹è±¡ *o* çé¿åº¦ã å¦æå¯¹è±¡ *o* æ¯æåºååæ å°åè®®ï¼åè¿ååºåé¿åº¦ã åºéæ¶è¿å ``-1``ãè¿ç­åäº Python è¡¨è¾¾å¼ ``len(o)``ã è¿åä¸º *cls* ä¿ççå®ä¾åå­ç©ºé´å¤§å°ï¼å³ :c:func:`PyObject_GetTypeData` æè¿åçåå­å¤§å°ã å¦æå¯¹è±¡ *o* è¢«è®¤ä¸ºæ¯ trueï¼åè¿å ``1``ï¼å¦åè¿å ``0``ãè¿ç¸å½äº Python è¡¨è¾¾å¼ ``not not o``ã å¤±è´¥åè¿å ``-1``ã å¦æ *o* å¸¦æå±æ§ *attr_name*ï¼åè¿å ``1``ï¼å¦åè¿å ``0``ãè¿ç¸å½äº Python è¡¨è¾¾å¼ ``hasattr(o, attr_name)``ã æ­¤å½æ°æ»æ¯æåã å¦æå¯¹è±¡ *o* è¢«è®¤ä¸ºæ¯ trueï¼åè¿å ``1``ï¼å¦åè¿å ``0``ãè¿ç¸å½äº Python è¡¨è¾¾å¼ ``not not o``ã å¤±è´¥åè¿å ``-1``ã è®¾ç½®ä¸ä¸ª :exc:`TypeError` æ¥ææ ``type(o)`` ä¸æ¯ :term:`hashable` å¹¶è¿å ``-1``ã æ­¤å½æ°å¨å­å¨äº ``tp_hash`` æ§½ä½åæ¶ä¼è·å¾ç¹å«å¯¹å¾ï¼åè®¸æä¸ªç±»åæ¾å¼å°åè§£éå¨ææå®æ¯ä¸å¯åå¸å¯¹è±¡ã å°å¯¹è±¡ *o* ä¸­åä¸º *attr_name* çå±æ§å¼è®¾ä¸º *v* ãå¤±è´¥æ¶å¼åå¼å¸¸å¹¶è¿å ``-1``ï¼æåæ¶è¿ å ``0`` ãè¿ç¸å½äº Python è¯­å¥ ``o.attr_name = v``ã ``NotImplemented`` åä¾ï¼ç¨äºæ è®°æä¸ªæä½æ²¡æéå¯¹ç»å®ç±»åç»åçå®ç°ã å¯¹è±¡ *o* å¿é¡»ä¸º *cls* çå®ä¾ï¼è *cls* å¿é¡»ä½¿ç¨è´ç :c:member:`PyType_Spec.basicsize` æ¥åå»ºã Python ä¸ä¼æ£æ¥è¿ä¸ç¹ã ç°å¨çè¿åç±»åæ¯ Py_hash_tã è¿æ¯ä¸ä¸ªå¤§å°ä¸ :c:type:`Py_ssize_t` ç¸åçæç¬¦å·æ´æ°ã ç±»å *cls* **å¿é¡»** ä½¿ç¨è´ç :c:member:`PyType_Spec.basicsize` æ¥åå»ºã Python ä¸ä¼æ£æ¥è¿ä¸ç¹ã æ­¤å½æ°è¿å¯è½ä¼è¢«è°ç¨ä»¥è·åå¯¹è±¡ *o* ç :py:attr:`~object.__dict__`ã å½è°ç¨å®æ¶å¯ä¼ å¥ ``NULL`` ä½ä¸º *context*ã ç±äºæ­¤å½æ°å¯è½éè¦ä¸ºå­å¸åéåå­ï¼æä»¥å¨è®¿é®å¯¹è±¡ä¸çå±æ§æ¶è°ç¨ :c:func:`PyObject_GetAttr` å¯è½ä¼æ´ä¸ºé«æã æ­¤å½æ°å¯è½éè¦ä¸ºå­å¸åéåå­ï¼æä»¥å¨è®¿é®å¯¹è±¡ä¸çå±æ§æ¶è°ç¨ :c:func:`PyObject_GetAttr` å¯è½ä¼æ´ä¸ºé«æã è¯¥å½æ°ç°å¨åå«ä¸ä¸ªè°è¯æ­è¨ï¼ç¨ä»¥ç¡®ä¿ä¸ä¼éé»å°ä¸¢å¼æ´»å¨çå¼å¸¸ã ç¸å½äº Python è¡¨è¾¾å¼ ``dir(o)``ï¼è¿åä¸ä¸ªï¼å¯è½ä¸ºç©ºï¼éåå¯¹è±¡åæ°çå­ç¬¦ä¸²åè¡¨ï¼å¦æåºéåè¿å ``NULL``ã å¦æåæ°ä¸º ``NULL``ï¼ç±»ä¼¼ Python ç ``dir()``ï¼åè¿åå½å locals çåå­ï¼è¿æ¶å¦ææ²¡ææ´»å¨çæ§è¡æ¡æ¶ï¼åè¿å ``NULL``ï¼ä½ :c:func:`PyErr_Occurred` å°è¿å falseã ç­åäº Python è¡¨è¾¾å¼ ``iter(o)``ãä¸ºå¯¹è±¡åæ°è¿åä¸ä¸ªæ°çè¿­ä»£å¨ï¼å¦æè¯¥å¯¹è±¡å·²ç»æ¯ä¸ä¸ªè¿­ä»£å¨ï¼åè¿åå¯¹è±¡æ¬èº«ãå¦æå¯¹è±¡ä¸è½è¢«è¿­ä»£ï¼ä¼å¼å  :exc:`TypeError` ï¼å¹¶è¿å  ``NULL``ã ç­åäº Python è¡¨è¾¾å¼ ``aiter(o)``ãæ¥åä¸ä¸ª :class:`AsyncIterable` å¯¹è±¡ï¼å¹¶ä¸ºå¶è¿åä¸ä¸ª :class:`AsyncIterator`ãéå¸¸è¿åçæ¯ä¸ä¸ªæ°è¿­ä»£å¨ï¼ä½å¦æåæ°æ¯ä¸ä¸ª :class:`AsyncIterator`ï¼å°è¿åå¶èªèº«ãå¦æè¯¥å¯¹è±¡ä¸è½è¢«è¿­ä»£ï¼ä¼å¼å :exc:`TypeError`ï¼å¹¶è¿å ``NULL``ã è¿å¯è½ä¼å¤§äºä½¿ç¨ :c:member:`-PyType_Spec.basicsize <PyType_Spec.basicsize>` è¯·æ±å°çå¤§å°ï¼å¯ä»¥å®å¨å°ä½¿ç¨è¿ä¸ªæ´å¤§çå¼ (ä¾å¦éè¿ :c:func:`!memset`)ã å½ *o* ä¸ä¸º ``NULL`` æ¶ï¼è¿åä¸ä¸ªä¸å¯¹è±¡ *o* çç±»åç¸å¯¹åºçç±»åå¯¹è±¡ã å½å¤±è´¥æ¶ï¼å°å¼å :exc:`SystemError` å¹¶è¿å ``NULL``ã è¿ç­åäº Python è¡¨è¾¾å¼ ``type(o)``ã è¯¥å½æ°ä¼å¢å è¿åå¼çå¼ç¨è®¡æ°ã å®éä¸æ²¡æçç±ä¸å»ç¨æ®éç :c:func:`Py_TYPE()` å½æ°èä½¿ç¨è¯¥å½æ°ï¼å®å°è¿åä¸ä¸ª :c:expr:`PyTypeObject*` ç±»åçæéï¼é¤éæ¯éè¦å¢å å¼ç¨è®¡æ°çæ¶åã ascii åç½®å½æ° å­èä¸² hash len repr string type 