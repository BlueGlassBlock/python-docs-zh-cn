Þ    b      ,              <  C   =  H     ä   Ê     ¯  ó   ¸  º   ¬  ¡   g	  Ø   	
    â
    ä  
   }  @    ø   É  #   Â  z   æ     a     u  Ù        ç  ÷   þ  1   ö     (  E   6     |  ,     
   Å  Â   Ð  Ð     é  d  a   N  ÷   °    ¨  Ð   )  ß   ú  <  Ú       Ô   8               ¶   ð   Ò   X   Ã!     "  !   9"  .   ["     "      "      º"  "   Û"  (   þ"  :   '#  w  b#  [  Ú$  q   6&     ¨&  2   ´&  Ë   ç&     ³'  J  Ã'  ¥   )  ~   ´)  »  3*  E   ï+    5,  l  ¸-  ¬   %/    Ò/    m1     2  /   2     Ì2    b3     h4     ê4     5     6  ·   ²6  »   j7  h   &8     8  Í   «8  z   y9     ô9  µ   :  á   7;  £   <  Å   ½<     =  !  
>  f   ,?  §   ?  ¯   ;@     ë@  Ú    A  ¢   ÛA  g   ~B  W   æB  ¿  >C  I   þD  A   HE  Ö   E     aF  í   hF  ¬   VG     H  ¿   H    ]I  u  dJ     ÚK  J  áK  Ñ   ,M     þM     N     N     ¯N  Ò   9O     P  î   "P  /   Q  	   AQ  H   KQ     Q  .   §Q  	   ÖQ  á   àQ  Ê   ÂR  É  S  n   WU  Û   ÆU  t  ¢V  ø   X  ×   Y  >  èY    '[  ¾   6\  }  õ\     s^     ^  Û   ^  M   x_     Æ_     ß_  $   ø_     `     0`     F`     b`  $   `  B   ¦`  e  é`  F  Ob  x   c     d  0   "d  ¶   Sd     
e  =  e     Xf     óf    g  H   i  {  \i  ~  Øj  ©   Wl    m    n     o  ,   µo     âo  é   ~p     hq     êq     r  n   s  ©   s     0t  n   Ít  %   <u  Ë   bu  k   .v     v  ¤   w  æ   Àw  ¶   §x  »   ^y     z  ú   ¡z  L   {  Á   é{     «|     9}  Þ   R}     1~  i   Í~  W   7   ...and ``base`` may be a static type, then it should also include:: A module running on a circuit board wants to control *the* on-board LED. A non-negative ``PyModuleDef.m_size`` signals that a module supports multiple interpreters correctly. If this is not yet the case for your module, you can explicitly make your module loadable only once per process. For example:: Abstract Accessing the module-level state from methods of a class is somewhat more complicated, but is possible thanks to API introduced in Python 3.9. To get the state, you need to first get the *defining class*, and then get the module state from it. Accessing the state from module-level functions is straightforward. Functions get the module object as their first argument; for extracting the state, you can use ``PyModule_GetState``:: An *interpreter* is the context in which Python code runs. It contains configuration (e.g. the import path) and runtime state (e.g. the set of imported modules). An example of a module with per-module state is currently available as `xxlimited <https://github.com/python/cpython/blob/master/Modules/xxlimited.c>`__; example module initialization shown at the bottom of the file. Another option is to store state in the module's ``__dict__``, but you must avoid crashing when users modify ``__dict__`` from Python code. This usually means error- and type-checking at the C level, which is easy to get wrong and hard to test sufficiently. As a rule of thumb, the two modules should be completely independent. All objects and state specific to the module should be encapsulated within the module object, not shared with other module objects, and cleaned up when the module object is deallocated. Since this just is a rule of thumb, exceptions are possible (see `Managing Global State`_), but they will need more thought and attention to edge cases. Background Because they are immutable and process-global, static types cannot access "their" module state. If any method of such a type requires access to module state, the type must be converted to a *heap-allocated type*, or *heap type* for short. These correspond more closely to classes created by Python's ``class`` statement. Both cases (and combinations of them) would be most useful when embedding Python within a library. Libraries generally shouldn't make assumptions about the application that uses them, which include assuming a process-wide "main Python interpreter". Changing Static Types to Heap Types Define a traverse function using ``Py_tp_traverse``, which visits the type (e.g. using :c:expr:`Py_VISIT(Py_TYPE(self))`). Defining Heap Types Discussions about improving the situation are best held on the `capi-sig mailing list <https://mail.python.org/mailman3/lists/capi-sig.python.org/>`__. Do not confuse the defining class with :c:expr:`Py_TYPE(self)`. If the method is called on a *subclass* of your type, ``Py_TYPE(self)`` will refer to that subclass, which may be defined in different module than yours. Enter Per-Module State For a method to get its "defining class", it must use the :ref:`METH_METHOD | METH_FASTCALL | METH_KEYWORDS <METH_METHOD-METH_FASTCALL-METH_KEYWORDS>` :c:type:`calling convention <PyMethodDef>` and the corresponding :c:type:`PyCMethod` signature:: For example, if your traverse function includes:: For example:: For new modules, using heap types by default is a good rule of thumb. Garbage-Collection Protocol Have the :c:macro:`Py_TPFLAGS_HAVE_GC` flag. Heap Types Heap types can be created by filling a :c:struct:`PyType_Spec` structure, a description or "blueprint" of a class, and calling :c:func:`PyType_FromModuleAndSpec` to construct a new class object. Heap types inherit :c:member:`~PyTypeObject.tp_new` by default, so it may become possible to instantiate them from Python code. You can prevent this with the :c:macro:`Py_TPFLAGS_DISALLOW_INSTANTIATION` flag. Historically, Python extension modules don't handle this use case well. Many extension modules (and even some stdlib modules) use *per-process* global state, because C ``static`` variables are extremely easy to use. Thus, data that should be specific to an interpreter ends up being shared between interpreters. Unless the extension developer is careful, it is very easy to introduce edge cases that lead to crashes when a module is loaded in more than one interpreter in the same process. However, if module state is not needed in C code, storing it in ``__dict__`` only is a good idea. If it is necessary to use process-global state, the simplest way to avoid issues with multiple interpreters is to explicitly prevent a module from being loaded more than once per processâsee `Opt-Out: Limiting to One Module Object per Process`_. If the module state includes ``PyObject`` pointers, the module object must hold references to those objects and implement the module-level hooks ``m_traverse``, ``m_clear`` and ``m_free``. These work like ``tp_traverse``, ``tp_clear`` and ``tp_free`` of a class. Adding them will require some work and make the code longer; this is the price for modules which can be unloaded cleanly. If you have a type object defined with :c:func:`PyType_FromModuleAndSpec`, you can call :c:func:`PyType_GetModule` to get the associated module, and then :c:func:`PyModule_GetState` to get the module's state. If your traverse function delegates to the ``tp_traverse`` of its base class (or another type), ensure that ``Py_TYPE(self)`` is visited only once. Note that only heap type are expected to visit the type in ``tp_traverse``. In these cases, the Python module should provide *access* to the global state, rather than *own* it. If possible, write the module so that multiple copies of it can access the state independently (along with other libraries, whether for Python or other languages). If that is not possible, consider explicit locking. In very exotic cases (inheritance chains spanning multiple modules created from the same definition), ``PyType_GetModuleByDef`` might not return the module of the true defining class. However, it will always return a module with the same definition, ensuring a compatible C memory layout. Instances of heap types hold a reference to their type. This ensures that the type isn't destroyed before all its instances are, but may result in reference cycles that need to be broken by the garbage collector. Instead of focusing on per-interpreter state, Python's C API is evolving to better support the more granular *per-module* state. This means that C-level data is be attached to a *module object*. Each interpreter creates its own module object, keeping the data separate. For testing the isolation, multiple module objects corresponding to a single extension can even be loaded in a single interpreter. Isolated Module Objects Isolating Extension Modules It is currently (as of Python 3.11) not possible to attach state to individual *types* without relying on CPython implementation details (which may change in the futureâperhaps, ironically, to allow a proper solution for per-class scope). It is not necessary to handle the type's reference count in ``tp_new`` and ``tp_clear``. Lifetime of the Module State Lossless Conversion to Heap Types Making Modules Safe with Multiple Interpreters Managing Global State Managing Per-Module State Module State Access from Classes Module State Access from Functions Module State Access from Regular Methods Module State Access from Slot Methods, Getters and Setters Note that isolated modules do create some surprising edge cases. Most notably, each module object will typically not share its classes and exceptions with other similar modules. Continuing from the `example above <Isolated Module Objects_>`__, note that ``old_binascii.Error`` and ``binascii.Error`` are separate objects. In the following code, the exception is *not* caught: Note that there are use cases for different kinds of "globals": per-process, per-interpreter, per-thread or per-task state. With per-module state as the default, these are still possible, but you should treat them as exceptional cases: if you need them, you should give them additional care and testing. (Note that this guide does not cover them.) Once you have the defining class, call :c:func:`PyType_GetModuleState` to get the state of its associated module. Open Issues Opt-Out: Limiting to One Module Object per Process Other functions, like :c:func:`PyType_FromSpec`, can also create heap types, but :c:func:`PyType_FromModuleAndSpec` associates the module with the class, allowing access to the module state from methods. Per-Class Scope Per-module state provides an easy way to think about lifetime and resource ownership: the extension module will initialize when a module object is created, and clean up when it's freed. In this regard, a module is just like any other :c:expr:`PyObject *`; there are no "on interpreter shutdown" hooks to thinkâor forgetâabout. Please refer to the :ref:`the documentation <type-structs>` of :c:macro:`Py_TPFLAGS_HAVE_GC` and :c:member:`~PyTypeObject.tp_traverse` for additional considerations. Python supports running multiple interpreters in one process. There are two cases to think aboutâusers may run interpreters: Set ``PyModuleDef.m_size`` to a positive number to request that many bytes of storage local to the module. Usually, this will be set to the size of some module-specific ``struct``, which can store all of the module's C-level state. In particular, it is where you should put pointers to classes (including exceptions, but excluding static types) and settings (e.g. ``csv``'s :py:data:`~csv.field_size_limit`) which the C code needs to function. Several issues around per-module state and heap types are still open. Sharing truly immutable objects between interpreters is fine, as long as they don't provide access to mutable objects. However, in CPython, every Python object has a mutable implementation detail: the reference count. Changes to the refcount are guarded by the GIL. Thus, code that shares any Python objects across interpreters implicitly depends on CPython's current, process-wide GIL. Slot methodsâthe fast C equivalents for special methods, such as :c:member:`~PyNumberMethods.nb_add` for :py:attr:`~object.__add__` or :c:member:`~PyType.tp_new` for initializationâhave a very simple API that doesn't allow passing in the defining class, unlike with :c:type:`PyCMethod`. The same goes for getters and setters defined with :c:type:`PyGetSetDef`. Sometimes, the state associated with a Python module is not specific to that module, but to the entire process (or something else "more global" than a module). For example: Static types can be converted to heap types, but note that the heap type API was not designed for "lossless" conversion from static typesâthat is, creating a type that works exactly like a given static type. So, when rewriting the class definition in a new API, you are likely to unintentionally change a few details (e.g. pickleability or inherited slots). Always test the details that are important to you. Such types are necessarily shared across the process. Sharing them between module objects requires paying attention to any state they own or access. To limit the possible issues, static types are immutable at the Python level: for example, you can't set ``str.myattribute = 123``. Surprising Edge Cases The ``readline`` module manages *the* terminal. The class should generally be stored in *both* the module state (for safe access from C) and the module's ``__dict__`` (for access from Python code). The document also describes how to switch to per-module state where possible. This transition involves allocating space for that state, potentially switching from static types to heap types, andâperhaps most importantlyâaccessing per-module state from code. The following Python code can illustrate the concept. ``Base.get_defining_class`` returns ``Base`` even if ``type(self) == Sub``: The goal is to make extension modules safe at the C level, not to make hacks behave intuitively. Mutating ``sys.modules`` "manually" counts as a hack. The heap type API was not designed for "lossless" conversion from static types; that is, creating a type that works exactly like a given static type. The key point to keep in mind when developing an extension module is that several module objects can be created from a single shared library. For example: The largest roadblock is getting *the class a method was defined in*, or that method's "defining class" for short. The defining class can have a reference to the module it is part of. This guide is written for maintainers of :ref:`C-API <c-api-index>` extensions who would like to make that extension safer to use in applications where Python itself is used as a library. This is expected. Notice that pure-Python modules behave the same way: it is a part of how Python works. This is new in Python 3.11. To access the module state in these cases, use the :c:func:`PyType_GetModuleByDef` function, and pass in the module definition. Once you have the module, call :c:func:`PyModule_GetState` to get the state:: To avoid memory leaks, instances of heap types must implement the garbage collection protocol. That is, heap types should: To save a some tedious error-handling boilerplate code, you can combine these two steps with :c:func:`PyType_GetModuleState`, resulting in:: To use per-module state, use :ref:`multi-phase extension module initialization <multi-phase-initialization>`. This signals that your module supports multiple interpreters correctly. Traditionally, state belonging to Python extension modules was kept in C ``static`` variables, which have process-wide scope. This document describes problems of such per-process state and shows a safer way: per-module state. Traditionally, types defined in C code are *static*; that is, ``static PyTypeObject`` structures defined directly in code and initialized using ``PyType_Ready()``. Unfortunately, *per-interpreter* state is not easy to achieve. Extension authors tend to not keep multiple interpreters in mind when developing, and it is currently cumbersome to test the behavior. Unlike static types, heap type objects are mutable by default. Use the :c:macro:`Py_TPFLAGS_IMMUTABLETYPE` flag to prevent mutability. Usually this is not an issue, because types created with :c:func:`PyType_FromModuleAndSpec`, and their instances, hold a reference to the module. However, you must be careful in reference counting when you reference module state from other places, such as callbacks for external libraries. Watch out for the following two points in particular (but note that this is not a comprehensive list): When a module object is garbage-collected, its module state is freed. For each pointer to (a part of) the module state, you must hold a reference to the module object. While some modules could do with less stringent restrictions, isolated modules make it easier to set clear expectations and guidelines that work across a variety of use cases. Who should read this ``PyModule_GetState`` may return ``NULL`` without setting an exception if there is no module state, i.e. ``PyModuleDef.m_size`` was zero. In your own module, you're in control of ``m_size``, so this is easy to prevent. ``PyType_GetModuleByDef`` works by searching the :term:`method resolution order` (i.e. all superclasses) for the first superclass that has a corresponding module. in parallel, managing "sub-interpreters" using :c:func:`Py_NewInterpreter`/:c:func:`Py_EndInterpreter`. in sequence, with several :c:func:`Py_InitializeEx`/:c:func:`Py_FinalizeEx` cycles, and Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2022-11-05 19:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 ... å¹¶ä¸ ``base`` å¯è½æ¯ä¸ä¸ªéæç±»åï¼åå®ä¹åºå½åæ¬:: å¨çµè·¯æ¿ä¸è¿è¡çæ¨¡åæ³è¦æ§å¶ *ä¸ä¸ª* æ¿è½½ LEDã éè´ç ``PyModuleDef.m_size`` å¼è¡¨ç¤ºä¸ä¸ªæ¨¡åè½æ­£ç¡®å°æ¯æå¤è§£éå¨ã å¦æä½ çæ¨¡åè¿ä¸è½åå°è¿æ ·ï¼ä½ å¯ä»¥æ¾å¼å°è®¾ç½®ä½ çæ¨¡åå¨æ¯ä¸ªè¿ç¨ä¸­åªè½å è½½ä¸æ¬¡ã ä¾å¦:: æè¦ ä»ä¸ä¸ªç±»çæ¹æ³è®¿é®æ¨¡åå±çº§çç¶æå¨æäºæ¹é¢ä¼æ´ä¸ºå¤æï¼ä½éè¿ Python 3.9 æå¼å¥ç API è¿æ¯å¯è½åå°çã ä¸ºäºè·åç¶æï¼ä½ éè¦é¦åè·å *å®ä¹çç±»*ï¼ç¶åä»ä¸­è·åæ¨¡åç¶æã ä»æ¨¡åå±çº§çå½æ°è®¿é®ç¶ææ¯ç¸å½ç´è§çã å½æ°éè¿å®ä»¬çç¬¬ä¸ä¸ªåæ°è·å¾æ¨¡åå¯¹è±¡ï¼è¦æåç¶æï¼ä½ å¯ä»¥ä½¿ç¨ ``PyModule_GetState``:: *è§£éå¨* æ¯ Python ä»£ç è¿è¡æå¨çä¸ä¸æã å®åå«éç½®ï¼ä¾å¦å¯¼å¥è·¯å¾ï¼åè¿è¡æ¶ç¶æï¼ä¾å¦å·²å¯¼å¥æ¨¡åçéåï¼ã å¸¦ææ¨¡åçº§ç¶æçæ¨¡åç¤ºä¾ç®åå¯å¨ `xxlimited <https://github.com/python/cpython/blob/master/Modules/xxlimited.c>`__ è·åï¼æ¨¡ååå§åçç¤ºä¾è§æä»¶çæ«å°¾é¨åã å¦ä¸ä¸ªéé¡¹æ¯å°ç¶æä¿å­å¨æ¨¡åç ``__dict__`` ä¸­ï¼ä½ä½ å¿é¡»é¿åå½ç¨æ·ä» Python ä»£ç ä¸­ä¿®æ¹ ``__dict__`` å¯¼è´çç¨åºå´©æºã è¿éå¸¸æå³çè¦å¨ C å±çº§ä¸è¿è¡éè¯¯åç±»åæ£æ¥ï¼å¾å®¹æå¼éåå¾é¾ååæµè¯ã ä½ä¸ºç»éªæ³åï¼è¿ä¸¤ä¸ªæ¨¡ååºè¯¥æ¯å®å¨ç¬ç«çã æ¨¡åä¸å±çææå¯¹è±¡åç¶æåºè¯¥è¢«å°è£å¨æ¨¡åå¯¹è±¡åé¨ï¼ä¸ä¸å¶ä»æ¨¡åå¯¹è±¡å±äº«ï¼å¹¶å¨æ¨¡åå¯¹è±¡è¢«éæ¾æ¶è¿è¡æ¸çã ç±äºè¿åªæ¯ä¸ä¸ªç»éªæ³åï¼ä¾å¤æåµä¹æ¯å¯è½çï¼åè§ `Managing Global State`_)ï¼ä½è¿å°éè¦æ´å¤çèèå¹¶æ³¨æè¾¹çæåµã èæ¯ å ä¸ºå®ä»¬æ¯ä¸å¯åçè¿ç¨çº§å¨å±å¯¹è±¡ï¼æä»¥éæç±»åæ æ³è®¿é®âå®ä»¬çâæ¨¡åç¶æã å¦æä»»ä½æ­¤ç§ç±»åçæ¹æ³éè¦è®¿é®æ¨¡åç¶æï¼åè¯¥ç±»åå¿é¡»è¢«è½¬æ¢ä¸º *å åéç±»å*ï¼æèç®ç§°ä¸º *å ç±»å*ã æ­¤ç§ç±»åç¸å¯¹æ´æ¥è¿ç± Python ç ``class`` è¯­å¥æåå»ºçç±»ã è¿ä¸¤ç§æåµï¼ä»¥åå®ä»¬çç»åï¼æéç¨äºå° Python åµå¥å°æä¸ªåºä¸­ã åºéå¸¸ä¸åºåå®ä½¿ç¨å®ä»¬çåºç¨ç¨åºï¼è¿åæ¬åå®å­å¨ä¸ä¸ªè¿ç¨çº§çâä¸» Python è§£éå¨âã å°éæç±»åæ¹ä¸ºå ç±»å å®ä¹ä¸ä¸ªä½¿ç¨ ``Py_tp_traverse`` çéåå½æ°ï¼å®å°è®¿é®è¯¥ç±»å (ä¾å¦ä½¿ç¨ :c:expr:`Py_VISIT(Py_TYPE(self))`)ã å®ä¹å ç±»å æ¹åæ­¤ç¶åµæå¥½çè®¨è®ºæ¯å¨ `capi-sig é®ä»¶åè¡¨ <https://mail.python.org/mailman3/lists/capi-sig.python.org/>`__ è¿è¡çã ä¸è¦æ··æ·å®ä¹çç±»å :c:expr:`Py_TYPE(self)`ã å¦ææ¹æ³æ¯å¨ä½ çç±»åçä¸ä¸ª *å­ç±»* ä¸è¢«è°ç¨çï¼å ``Py_TYPE(self)`` å°æåè¯¥å­ç±»ï¼å®å¯è½æ¯å¨å¦ä¸ä¸ªæ¨¡åä¸­å®ä¹çã è¿å¥æ¨¡åçº§ç¶æ å¯¹äºè¦è·åå¶âå®ä¹æ¹ç±»âçæ¹æ³ï¼å®å¿é¡»ä½¿ç¨ :ref:`METH_METHOD | METH_FASTCALL | METH_KEYWORDS <METH_METHOD-METH_FASTCALL-METH_KEYWORDS>` :c:type:`è°ç¨æ¯ä¾ <PyMethodDef>` ä»¥åç¸åºç :c:type:`PyCMethod` ç­¾å:: ä¸¾ä¾æ¥è¯´ï¼å¦æä½ çéåå½æ°åæ¬:: ä¾å¦ï¼ å¯¹äºæ°æ¨¡åï¼é»è®¤ä½¿ç¨å ç±»åæ¯ä¸ä¸ªå¾å¥½çç»éªæ³åã åå¾åæ¶åè®® å·æ :c:macro:`Py_TPFLAGS_HAVE_GC` ææ ã å ç±»å å ç±»åå¯ä»¥éè¿å¡«å :c:struct:`PyType_Spec` ç»æä½æ¥åå»ºï¼å®æ¯å¯¹äºç¹å®ç±»çæè¿°æâèå¾âï¼å¹¶è°ç¨ :c:func:`PyType_FromModuleAndSpec` æ¥æé æ°çç±»å¯¹è±¡ãto construct a new class object. å ç±»åé»è®¤ç»§æ¿ :c:member:`~PyTypeObject.tp_new`ï¼å æ­¤æå¯è½éè¿ Python ä»£ç æ¥åå§åå®ä»¬ã ä½ å¯ä»¥ä½¿ç¨ :c:macro:`Py_TPFLAGS_DISALLOW_INSTANTIATION` ææ æ¥é²æ­¢æ­¤ç¹æ§ã å¨åå²ä¸ï¼Python æ©å±æ¨¡åå¯¹è¿ç§åºç¨åºæ¯å¤çä¸ä½³ã è®¸å¤æ©å±æ¨¡åï¼çè³æ¯æäºæ ååºæ¨¡åï¼é½æ¯ä½¿ç¨ *è¿ç¨åå±äº«* çå¨å±ç¶æï¼å ä¸º C ``static`` åéååæç¨ã ç»æï¼æ¬åºä¸å±äºæä¸ªè§£éå¨çæ°æ®æç»å´è¢«å¤ä¸ªè§£éå¨æå±äº«ã é¤éæ©å±çå¼åèå°å¿è°¨æï¼å¦åå½ä¸ä¸ªæ¨¡åè¢«ç¸åè¿ç¨åçå¤ä¸ªè§£éå¨å¯¼å¥æ¶å¾å®¹æå¼å¥ä¼å¯¼è´å´©æºçè¾¹çæåµã ä½æ¯ï¼å¦æ C ä»£ç ä¸éè¦æ¨¡åç¶æï¼åä»å°å¶ä¿å­å¨ ``__dict__`` ä¸­å°±æ¯ä¸ä¸ªå¥½ä¸»æã å¦ææå¿è¦ä½¿ç¨è¿ç¨çº§å¨å±ç¶æï¼é¿åå¤è§£éå¨ç¸å³é®é¢çæç®åçæ¹å¼æ¯æ¾å¼å°é»æ­¢æ¨¡åå¨ä¸ä¸ªè¿ç¨ä¸­è¢«å¤æ¬¡å è½½ â åè§ `åééé¡¹ï¼æ¯ä¸ªè¿ç¨éä¸ä¸ªæ¨¡åå¯¹è±¡`_ã å¦ææ¨¡åç¶æåæ¬ ``PyObject`` æéï¼åæ¨¡åå¯¹è±¡å¿é¡»ææå¯¹è¿äºå¯¹è±¡çå¼ç¨å¹¶å®ç°æ¨¡åå±çº§çé©å­ ``m_traverse``, ``m_clear`` å ``m_free``ã å®ä»¬çä½ç¨æ¹å¼å¾åç±»ç ``tp_traverse``, ``tp_clear`` å ``tp_free``ã æ·»å å®ä»¬å°ä¼å¢å å·¥ä½éå¹¶ä½¿ä»£ç æ´åé¿ï¼è¿æ¯ä¸ºäºè®©æ¨¡åè½å¹²åå°å¸è½½æéçä»£ä»·ã å¦æä½ æä¸ä¸ªä½¿ç¨ :c:func:`PyType_FromModuleAndSpec` å®ä¹çç±»åå¯¹è±¡ï¼ä½ å¯ä»¥è°ç¨ :c:func:`PyType_GetModule` æ¥è·åå³èçæ¨¡åï¼ç¶åè°ç¨ :c:func:`PyModule_GetState` æ¥è·åæ¨¡åçç¶æãto get the module's state. å¦æä½ çéåå½æ°å§æç»äºå¶åºç±»ï¼æå¦ä¸ä¸ªç±»åï¼ç ``tp_traverse``ï¼è¯·ç¡®ä¿ ``Py_TYPE(self)`` åªè¢«è®¿é®ä¸æ¬¡ã è¯·æ³¨æåªæå ç±»åä¼è¢«é¢æè®¿é® ``tp_traverse`` ä¸­çç±»åã å¨è¿äºæåµä¸ï¼Python æ¨¡ååºå½æä¾å¯¹å¨å±ç¶æç *è®¿é®*ï¼èä¸æ¯ *æ¥æ* å®ã å¦æå¯è½ï¼ç¼åæ¨¡åæ¶è¦è®©å®çå¤ä¸ªå¯æ¬å¯ä»¥ç¬ç«å°è®¿é®å¨å±ç¶æï¼è½éåå¶å®çåºï¼ä¸è®ºå®ä»¬æ¯ä½¿ç¨ Python è¿æ¯å¶ä»è¯­è¨ï¼ã å¦æè¿æ æ³åå°ï¼å¯èèæ¾å¼å éã å¨éå¸¸ç¹å«çæåµä¸ï¼ç»§æ¿é¾è·¨è¶ç±åæ ·å®ä¹åå»ºçå¤ä¸ªæ¨¡åï¼ï¼``PyType_GetModuleByDef`` å¯è½ä¸ä¼è¿åçæ­£å®ä¹æ¹ç±»çæ¨¡åã ä½æ¯ï¼å®æ»æ¯ä¼è¿åä¸ä¸ªå·æåæ ·å®ä¹çæ¨¡åï¼è¿å°ç¡®ä¿å·æå¼å®¹ç C åå­å¸å±ã å ç±»åçå®ä¾ä¼ææä¸ä¸ªæåå¶ç±»åçå¼ç¨ã è¿è½ç¡®ä¿ç±»åçéæ¯ä¸ä¼åçå¨å¶å®ä¾ä¹åï¼ä½å¯è½ä¼å¯¼è´éè¦ç±åå¾åæ¶å¨æ¥æç ´çå¼ç¨å¾ªç¯ã Python ç C API æ²¡æå³æ³¨äºè§£éå¨çº§ç¶æï¼èæ¯æ¼åä¸ºæ´å¥½å°æ¯ææ´ç»ç²åº¦ç *æ¨¡åçº§* ç¶æã è¿æå³ç C å±çº§æ°æ®è¢«å³èå°äº *æ¨¡åå¯¹è±¡*ã æ¯ä¸ªè§£éå¨ä¼åå»ºå®èªå·±çæ¨¡åçº§å¯¹è±¡ï¼ä¿ææ°æ®çç¸äºåéã è¦æµè¯è¿ç§åéï¼çè³å¯ä»¥å°å¯¹åºäºåä¸ªæ©å±çå¤ä¸ªæ¨¡åå¯¹è±¡å è½½å°åä¸ä¸ªè§£éå¨ä¸­ã éç¦»çæ¨¡åå¯¹è±¡ éç¦»æ©å±æ¨¡å ç®åï¼å³ Python 3.11ï¼è¿æ æ³å°ç¶æå³èå°åä¸ª *ç±»å* èä¸ä¾èµäº CPython å®ç°ç»èï¼è¿å¨æªæ¥å¯è½åçæ¹å â æè®¸ï¼ä¼æªå¼å°åè®¸éç¨éå½çç±»çº§ä½ç¨åè§£å³æ¹æ¡ï¼ã ä¸éè¦å¨ ``tp_new`` å ``tp_clear`` ä¸­å¤çè¯¥ç±»åçå¼ç¨è®¡æ°ã æ¨¡åç¶æççå½æ æ æè½¬æ¢ä¸ºå ç±»å è®©å¤è§£éå¨ä¸æ¨¡åä¿æå®å¨ ç®¡çå¨å±ç¶æ ç®¡çæ¨¡åçº§ç¶æ ç±»å¯¹æ¨¡åç¶æçè®¿é® å½æ°å¯¹æ¨¡åç¶æçè®¿é® å¸¸è§æ¹æ³å¯¹æ¨¡åç¶æçè®¿é® æ§½ä½æ¹æ³ãè¯»åæ¹æ³åè®¾ç½®æ¹æ³å¯¹æ¨¡åç¶æçè®¿é® è¯·æ³¨æéç¦»çæ¨¡åä¼åé ä¸äºä»¤äººæè®¶çè¾¹çæåµã æææ¾çä¸ç¹ï¼æ¯ä¸ªæ¨¡åå¯¹è±¡éå¸¸é½ä¸ä¼ä¸å¶ä»ç±»ä¼¼æ¨¡åå±äº«å®çç±»åå¼å¸¸ã ç»§ç»­ `ä¸é¢çä¾å­ <Isolated Module Objects_>`__ï¼è¯·æ³¨æ ``old_binascii.Error`` å ``binascii.Error`` æ¯åç¬çå¯¹è±¡ã å¨ä¸é¢çä»£ç ä¸­ï¼å¼å¸¸ *ä¸ä¼* è¢«æè·: è¯·æ³¨æåç§ä¸åâå¨å±âç¶æï¼è¿ç¨çº§ãè§£éå¨çº§ãçº¿ç¨çº§ç¶æçåºç¨åºæ¯ã é»è®¤ä¸ºæ¨¡åçº§ç¶æï¼å¶ä»ç¶æä¹æ¯å¯éæ©çï¼ä½ä½ åºå½å°å®ä»¬è§ä¸ºç¹æ®æåµï¼å¦æä½ éè¦å®ä»¬ï¼ä½ åºå½ç»äºå®ä»¬é¢å¤çå³æ³¨åæµè¯ã ï¼è¯·æ³¨ææ¬æåå¹¶æ²¡ææ¶åå®ä»¬ãï¼ ä¸æ¦ä½ å¾å°äºå®ä¹çç±»ï¼å³å¯è°ç¨ :c:func:`PyType_GetModuleState` æ¥è·åå®æå³èçæ¨¡åçç¶æã æªè§£å³çé®é¢ åééé¡¹ï¼æ¯ä¸ªè¿ç¨éä¸ä¸ªæ¨¡åå¯¹è±¡ å¶ä»çå½æ°ï¼å¦ :c:func:`PyType_FromSpec`ï¼ä¹å¯ä»¥åå»ºå ç±»åï¼ä½ :c:func:`PyType_FromModuleAndSpec` ä¼å°æ¨¡åå³èå°ç±»ï¼ä»¥åè®¸ä»æ¹æ³è®¿é®æ¨¡åç¶æã ç±»çº§ä½ç¨å æ¨¡åçº§ç¶ææä¾äºä¸ç§å¤ççå½å¨æåèµæºå½å±çç®åæ¹å¼ï¼æ©å±æ¨¡åå°å¨æ¨¡åå¯¹è±¡è¢«åå»ºæ¶åå§åï¼å¹¶å¨å¶éæ¾æ¶è¢«æ¸çã å¨è¿ä¸ç¹ä¸ï¼æ¨¡åå°±åæ¯ä»»ä½å¶ä»ç :c:expr:`PyObject *`ï¼æ²¡æå¿è¦æ·»å  â æèå»é¤ â å¤çâè§£éå¨å³é­âçé©å­ã è¯·åé :c:macro:`Py_TPFLAGS_HAVE_GC` å :c:member:`~PyTypeObject.tp_traverse` ç :ref:`ææ¡£ <type-structs>` æ¥äºè§£æ´å¤ç¸å³é®é¢çèéã Python æ¯æå¨ä¸ä¸ªè¿ç¨ä¸­è¿è¡å¤ä¸ªè§£éå¨ã è¿éæä¸¤ç§æåµéè¦èè â ç¨æ·å¯è½ä¼ä»¥ä¸åæ¹å¼è¿è¡è§£éå¨: å° ``PyModuleDef.m_size`` è®¾ä¸ºä¸ä¸ªæ­£æ°æ¥ä¸ºæ¨¡åè¯·æ±æå®å­èçæ¬å°å­å¨ã éå¸¸ï¼è¿å°è¢«è®¾ä¸ºæä¸ªæ¨¡åä¸å± ``struct`` çå¤§å°ï¼å®å¯ä»¥ä¿å­æ¨¡åçææ C å±çº§ç¶æã ç¹å«å°ï¼å®åºå½æ¯ä½ å­æ¾ç±»æéï¼åæ¬å¼å¸¸ï¼ä½ä¸åæ¬éæç±»åï¼å C ä»£ç æ­£å¸¸è¿ä½æéè®¾ç½®ï¼å¦ ``csv`` ç :py:data:`~csv.field_size_limit` ç­ï¼çå°æ¹ã å´ç»æ¨¡åçº§ç¶æåå ç±»åä»ç¶å­å¨ä¸äºæªè§£å³çé®é¢ã å¨è§£éå¨ä¹é´å±äº«çæ­£ä¸å¯åçå¯¹è±¡æ¯å¯è¡çï¼åªè¦å®ä»¬ä¸æä¾å¯¹å¯åå¯¹è±¡çè®¿é®ã ä½æ¯ï¼å¨ CPython ä¸­ï¼æ¯ä¸ª Python å¯¹è±¡é½æä¸ä¸ªå¯åçå®ç°ç»èï¼å¼ç¨è®¡æ°ã å¯¹å¼ç¨è®¡æ°çæ´æ¹æ¯ç± GIL æ¥ä¿æ¤çã å æ­¤ï¼è·¨è§£éå¨å±äº«ä»»ä½ Python å¯¹è±¡çä»£ç é½éå¼å°ä¾èµäº CPython ç°æçãè¿ç¨çº§ç GILã æ§½ä½æ¹æ³ â å³ç¹æ®æ¹æ³çå¯¹åºç C å¿«éçæ¬ï¼å¦ :c:member:`~PyNumberMethods.nb_add` å¯¹åº :py:attr:`~object.__add__` è :c:member:`~PyType.tp_new` å¯¹åºåå§åæ¹æ³ â å®å·æä¸åè®¸ä¼ å¥å®ä¹ç±»çéå¸¸ç®åç APIï¼è¿ä¸åäº :c:type:`PyCMethod`ã åæ ·çæºå¶ä¹éç¨äºéè¿ :c:type:`PyGetSetDef` å®ä¹çè¯»åæ¹æ³åè®¾ç½®æ¹æ³ã ææ¶ï¼ä¸ä¸ä¸ª Python æ¨¡åç¸å³èçç¶æå¹¶ä¸æ¯è¯¥æ¨¡åä¸å±çï¼èæ¯æ´ä¸ªè¿ç¨ï¼æèæ¯æ¨¡åâæ´å¨å±åâçå¶ä»ä¸è¥¿ï¼å±äº«ã ä¾å¦: éæç±»åå¯ä»¥è½¬æ¢ä¸ºå ç±»åï¼ä½è¦æ³¨æå ç±»å API å¹¶ééå¯¹éæç±»åçâæ æâè½¬æ¢ â ä¹å°±æ¯è¯´ï¼åå»ºä¸ç»å®éæç±»åå®å¨ä¸è´çç±»åæ¥è®¾è®¡çã å æ­¤ï¼å½å¨æ°ç API ä¸­éåç±»å®ä¹æ¶ï¼ä½ å¾å®¹æå¨æ æä¸­æ¹åä¸äºç»èï¼ä¾å¦å¯å°å­æ§ææç»§æ¿çæ§½ä½ç­ï¼ã è¯·å§ç»ç¡®ä¿æµè¯å¯¹ä½ æ¥è¯´éè¦çç»èã è¿æ ·çç±»åå¿é¡»å¨è¿ç¨èå´åå±äº«ã å¨æ¨¡åå¯¹è±¡ä¹é´å±äº«å®ä»¬éè¦æ³¨æå®ä»¬ææ¥ææè®¿é®çä»»ä½ç¶æã è¦éå¶å¯è½åºç°çé®é¢ï¼éæç±»åå¨ Python å±çº§ä¸æ¯ä¸å¯åçï¼ä¾å¦ï¼ä½ æ æ³è®¾ç½® ``str.myattribute = 123``ã ä»¤äººæè®¶çè¾¹çæåµ ``readline`` æ¨¡åç®¡ç *ä¸ä¸ª* ç»ç«¯ã ç±»éå¸¸åºå½ *åæ¶* ä¿å­å¨æ¨¡åçç¶æï¼ç¨äºä» C ä¸­å®å¨å°è®¿é®ï¼åæ¨¡åç ``__dict__`` ä¸­ï¼ç¨äºä» Python ä»£ç ä¸­è®¿é®ï¼ã æ¬ææ¡£è¿æè¿°äºå¦ä½å¨å¯è½çæåµä¸åæ¢å°æ¨¡åçº§ç¶æã è¿ç§è½¬æ¢æ¶åä¸ºç¶æåéç©ºé´ãä»éæç±»åå°å ç±»åçæ½å¨åæ¢ï¼ä»¥å â ä¹è®¸æ¯æéè¦ç â ä»ä»£ç è®¿é®æ¨¡åçº§ç¶æã ä¸é¢ç Python ä»£ç å¯ä»¥æ¼ç¤ºè¿ä¸æ¦å¿µã ``Base.get_defining_class`` å°è¿å ``Base``ï¼å³ä½¿ ``type(self) == Sub``: æç»ç®æ æ¯è®©æ©å±æ¨¡åå¨ C å±çº§ä¸ä¿æå®å¨ï¼ä½¿ç ´åä¸å®¹æå®ç°ã âæå¨âæ¹å ``sys.modules`` è¢«è§ä¸ºæ¯ç ´åè¡ä¸ºã å ç±»å API æ²¡æä»éæç±»åè¿è¡âæ æâè½¬æ¢çè®¾è®¡ï¼æè°æ æè½¬æ¢ï¼å°±æ¯åå»ºä¸ç»å®éæç±»åå®å¨ä¸è´çç±»åã å¨å¼åæ©å±æ¨¡åæ¶è¦è®°ä½çå³é®ç¹æ¯å¤ä¸ªæ¨¡åå¯¹è±¡å¯ä»¥ä»åä¸ªå±äº«åºæ¥åå»ºã ä¾å¦: æå¤§çéç¢æ¯è·å *æ¹æ³å®ä¹æå¨çç±»*ï¼ç®ç§°ä¸ºæ¹æ³âå®ä¹çç±»âã å®ä¹çç±»å¯ä»¥æ¥æä¸ä¸ªæåä½ä¸ºå¶ç»æé¨åçæ¹æ³çå¼ç¨ã æ¬æåæ¯éå¯¹æ³è¦è®©æ©å±æ´å®å¨å°å¨å° Python æ¬èº«ç¨ä½åºçåºç¨ç¨åºä¸­ä½¿ç¨ç :ref:`C-API <c-api-index>` æ©å±ç»´æ¤èæ°åçã è¿æ¯é¢æçç»æã è¯·æ³¨æçº¯ Python æ¨¡åçè¡ä¸ºç¸åï¼å®æ¯ Python è¯­è¨ç¹æ§çä¸é¨åã è¿æ¯ Python 3.11 çæ°å¢ç¹æ§ã è¦å¨è¿äºåºæ¯ä¸è®¿é®æ¨¡åç¶æï¼è¯·ä½¿ç¨ :c:func:`PyType_GetModuleByDef` å½æ°ï¼å¹¶ä¼ å¥æ¨¡åå®ä¹ã ä¸æ¦ä½ å¾å°è¯¥æ¨¡åï¼å³å¯è°ç¨ :c:func:`PyModule_GetState` æ¥è·åç¶æ:: è¦é¿ååå­æ³æ¼ï¼å ç±»åçå®ä¾å¿é¡»å®ç°åå¾åæ¶åè®®ã ä¹å°±æ¯è¯´ï¼å ç±»ååºå½: è¦çç¥ä¸äºç¹ççéè¯¯å¤çæ ·æ¿ä»£ç ï¼ä½ å¯ä»¥ä½¿ç¨ :c:func:`PyType_GetModuleState` æ¥åå¹¶è¿ä¸¤æ­¥ï¼å¾å°:: è¦ä½¿ç¨æ¨¡åçº§ç¶æï¼è¯·ä½¿ç¨ :ref:`å¤é¶æ®µæ©å±æ¨¡ååå§å <multi-phase-initialization>`ã è¿å°æ ç¤ºä½ çæ¨¡åè½æ­£ç¡®å°æ¯æå¤è§£éå¨ã å¨ä¼ ç»ä¸ï¼å±äº Python æ©å±æ¨¡åçç¶æé½æ¯ä¿å­ä¸º C ``static`` åéï¼å®ä»¬å·æè¿ç¨çº§çä½ç¨åã æ¬ææ¡£æè¿°äºæ­¤ç±»è¿ç¨çº§ç¶æçé®é¢å¹¶æ¼ç¤ºäºä¸ç§æ´å®å¨çæ¹å¼ï¼æ¨¡åçº§ç¶æã å¨ä¼ ç»ä¸ï¼å¨ C ä»£ç ä¸­å®ä¹çç±»åé½æ¯ *éæç*ï¼ä¹å°±æ¯è¯´ï¼``static PyTypeObject`` ç»æä½å¨ä»£ç ä¸­ç´æ¥å®ä¹å¹¶ä½¿ç¨ ``PyType_Ready()`` æ¥åå§åã ä¸å¹¸çæ¯ï¼*è§£éå¨çº§* ç¶æå¾ä¸å®¹æåå°ã æ©å±çä½èå¨å¼åä¸­æ»æ¯å¾åäºä¸èèå¤è§£éå¨çæåµï¼å¹¶ä¸ç®åè¦æµè¯æ­¤ç±»è¡ä¸ºä¹æ¯å¾å°é¾çã ä¸åäºéæç±»åï¼å ç±»åå¯¹è±¡é»è®¤æ¯å¯åçã è¯·ä½¿ç¨ :c:macro:`Py_TPFLAGS_IMMUTABLETYPE` ææ æ¥é²æ­¢å¯åæ§ã éå¸¸è¿ä¸ä¼æé®é¢ï¼å ä¸ºä½¿ç¨ :c:func:`PyType_FromModuleAndSpec` åå»ºçç±»åï¼ä»¥åå®ä»¬çå®ä¾ï¼é½ææå¯¹æ¨¡åçå¼ç¨ã ä½æ¯ï¼å½ä½ ä»å¶ä»å°æ¹ï¼ä¾å¦å¯¹å¤é¨åºçåè°å¼ç¨æ¨¡åç¶ææ¶å¿é¡»å°å¿è°¨æã ç¹å«è¦å³æ³¨ä»¥ä¸ä¸¤ç¹ï¼ä½è¯·æ³¨æè¿å¹¶éä¸ä¸ªå®æ´çåè¡¨ï¼: å½ä¸ä¸ªæ¨¡åå¯¹è±¡è¢«å½ä½åå¾åæ¶æ¶ï¼å®çæ¨¡åç¶æå°è¢«éæ¾ã å¯¹äºæ¯ä¸ªæåï¼ä¸é¨åï¼æ¨¡åç¶æçæéæ¥è¯´ï¼ä½ å¿é¡»ææä¸ä¸ªå¯¹æ¨¡åå¯¹è±¡çå¼ç¨ã è½ç¶æäºæ¨¡åä¸ç¨å¤ªå¤çä¸¥æ ¼éå¶ï¼ä½æ¯éç¦»çæ¨¡åä½¿å¾æ´å®¹æå¶å®éååç§åºç¨åºæ¯çæç¡®ææåæåã è°åºå½éè¯»æ¬ææ¡£ å¦ææ¨¡åç¶æä¸å­å¨å ``PyModule_GetState`` å¯è½è¿å ``NULL`` èä¸è®¾ç½®å¼å¸¸ï¼å³ ``PyModuleDef.m_size`` ä¸ºé¶ã å¨ä½ èªå·±çæ¨¡åä¸­ï¼ä½ å¯ä»¥ä»»ææ§å¶ ``m_size``ï¼å æ­¤è¿å¾å®¹æé¿åã ``PyType_GetModuleByDef`` çå®ç°æ¹å¼æ¯éè¿æç´¢ :term:`method resolution order` (å³ææè¶ç±») æ¥æ¾å°å·æç¸åºæ¨¡åçç¬¬ä¸ä¸ªè¶ç±»ã å¹¶è¡ï¼ä½¿ç¨ :c:func:`Py_NewInterpreter`/:c:func:`Py_EndInterpreter` ç®¡çå¤ä¸ªâå­è§£éå¨âã ä¸²è¡ï¼ä½¿ç¨å¤ä¸ª :c:func:`Py_InitializeEx`/:c:func:`Py_FinalizeEx` å¾ªç¯ï¼ä»¥å 