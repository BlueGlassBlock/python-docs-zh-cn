Þ    )      d              ¬  G  ­  o   õ  l   e  l   Ò  ;   ?  '   {  {   £      y   £  Ó     ¯   ñ     ¡	     >
     ¾
    >     É  g   Q    ¹     G     ä     r  ^        _  R   {  $   Î  s   ó  }   g  \   å  O   B  S     l   æ  Q   S  H   ¥  A   î  ?   0  N  p  ô   ¿    ´    <  Ú  Ö  ¿  ±  D  q  n   ¶   k   %!  X   !  6   ê!     !"  m   ="  S  «"  l   ÿ#  î   l$  ¼   [%     &  q    &     '  6  '  x   Î(  {   G)  _  Ã)  ¯   #+  u   Ó+  x   I,  P   Â,  ÿ   -  B   .  '   V.  b   ~.  {   á.  P   ]/  D   ®/  F   ó/  f   :0  B   ¡0  ?   ä0  5   $1  3   Z1  %  1  ä   ´2  C  3  N  Ý4  µ  ,6   Adds the object *op* to the set of container objects tracked by the collector.  The collector can run at unexpected times so objects must be valid while being tracked.  This should be called once all the fields followed by the :c:member:`~PyTypeObject.tp_traverse` handler become valid, usually near the end of the constructor. Analogous to :c:func:`PyObject_NewVar` but for container objects with the :const:`Py_TPFLAGS_HAVE_GC` flag set. Analogous to :c:func:`PyObject_New` but for container objects with the :const:`Py_TPFLAGS_HAVE_GC` flag set. Before fields which refer to other containers are invalidated, :c:func:`PyObject_GC_UnTrack` must be called. Constructors for container types must conform to two rules: Controlling the Garbage Collector State Disable the garbage collector: similar to :func:`gc.disable`. Returns the previous state, 0 for disabled and 1 for enabled. Drop references that may have created reference cycles.  Immutable objects do not have to define this method since they can never directly create reference cycles.  Note that the object must still be valid after calling this method (don't just call :c:func:`Py_DECREF` on a reference).  The collector will call this method if it detects that this object is involved in a reference cycle. Enable the garbage collector: similar to :func:`gc.enable`. Returns the previous state, 0 for disabled and 1 for enabled. If *o* is not ``NULL``, call the *visit* callback, with arguments *o* and *arg*.  If *visit* returns a non-zero value, then return it. Using this macro, :c:member:`~PyTypeObject.tp_traverse` handlers look like:: If a type adds the Py_TPFLAGS_HAVE_GC, then it *must* implement at least a :c:member:`~PyTypeObject.tp_traverse` handler or explicitly use one from its subclass or subclasses. Objects with a type with this flag set must conform with the rules documented here.  For convenience these objects will be referred to as container objects. Once all the fields which may contain references to other containers are initialized, it must call :c:func:`PyObject_GC_Track`. Perform a full garbage collection, if the garbage collector is enabled. (Note that :func:`gc.collect` runs it unconditionally.) Python's support for detecting and collecting garbage which involves circular references requires support from object types which are "containers" for other objects which may also be containers.  Types which do not store references to other objects, or which only store references to atomic types (such as numbers or strings), do not need to provide any explicit support for garbage collection. Query the state of the garbage collector: similar to :func:`gc.isenabled`. Returns the current state, 0 for disabled and 1 for enabled. Releases memory allocated to an object using :c:func:`PyObject_GC_New` or :c:func:`PyObject_GC_NewVar`. Remove the object *op* from the set of container objects tracked by the collector.  Note that :c:func:`PyObject_GC_Track` can be called again on this object to add it back to the set of tracked objects.  The deallocator (:c:member:`~PyTypeObject.tp_dealloc` handler) should call this for the object before any of the fields used by the :c:member:`~PyTypeObject.tp_traverse` handler become invalid. Resize an object allocated by :c:func:`PyObject_NewVar`.  Returns the resized object or ``NULL`` on failure.  *op* must not be tracked by the collector yet. Returns 1 if the object type of *op* implements the GC protocol and *op* has been already finalized by the garbage collector and 0 otherwise. Returns 1 if the object type of *op* implements the GC protocol and *op* is being currently tracked by the garbage collector and 0 otherwise. Returns non-zero if the object implements the garbage collector protocol, otherwise returns 0. Returns the number of collected + unreachable objects which cannot be collected. If the garbage collector is disabled or already collecting, returns ``0`` immediately. Errors during garbage collection are passed to :data:`sys.unraisablehook`. This function does not raise exceptions. Similarly, the deallocator for the object must conform to a similar pair of rules: Supporting Cyclic Garbage Collection The :c:func:`_PyObject_GC_TRACK` and :c:func:`_PyObject_GC_UNTRACK` macros have been removed from the public C API. The :c:member:`~PyTypeObject.tp_clear` handler must be of the :c:type:`inquiry` type, or ``NULL`` if the object is immutable. The :c:member:`~PyTypeObject.tp_traverse` handler accepts a function parameter of this type: The :c:member:`~PyTypeObject.tp_traverse` handler must have the following type: The C-API provides the following functions for controlling garbage collection runs. The memory for the object must be allocated using :c:func:`PyObject_GC_New` or :c:func:`PyObject_GC_NewVar`. The object cannot be tracked by the garbage collector if this function returns 0. The object's memory must be deallocated using :c:func:`PyObject_GC_Del`. This is analogous to the Python function :func:`gc.is_finalized`. This is analogous to the Python function :func:`gc.is_tracked`. To create a container type, the :c:member:`~PyTypeObject.tp_flags` field of the type object must include the :const:`Py_TPFLAGS_HAVE_GC` and provide an implementation of the :c:member:`~PyTypeObject.tp_traverse` handler.  If instances of the type are mutable, a :c:member:`~PyTypeObject.tp_clear` implementation must also be provided. To simplify writing :c:member:`~PyTypeObject.tp_traverse` handlers, a :c:func:`Py_VISIT` macro is provided.  In order to use this macro, the :c:member:`~PyTypeObject.tp_traverse` implementation must name its arguments exactly *visit* and *arg*: Traversal function for a container object.  Implementations must call the *visit* function for each object directly contained by *self*, with the parameters to *visit* being the contained object and the *arg* value passed to the handler.  The *visit* function must not be called with a ``NULL`` object argument.  If *visit* returns a non-zero value that value should be returned immediately. Type of the visitor function passed to the :c:member:`~PyTypeObject.tp_traverse` handler. The function should be called with an object to traverse as *object* and the third parameter to the :c:member:`~PyTypeObject.tp_traverse` handler as *arg*.  The Python core uses several visitor functions to implement cyclic garbage detection; it's not expected that users will need to write their own visitor functions. When calling :c:func:`PyType_Ready` or some of the APIs that indirectly call it like :c:func:`PyType_FromSpecWithBases` or :c:func:`PyType_FromSpec` the interpreter will automatically populate the :c:member:`~PyTypeObject.tp_flags`, :c:member:`~PyTypeObject.tp_traverse` and :c:member:`~PyTypeObject.tp_clear` fields if the type inherits from a class that implements the garbage collector protocol and the child class does *not* include the :const:`Py_TPFLAGS_HAVE_GC` flag. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 æå¯¹è±¡ *op* å å¥å°åå¾åæ¶å¨è·è¸ªçå®¹å¨å¯¹è±¡ä¸­ãå¯¹è±¡å¨è¢«åæ¶å¨è·è¸ªæ¶å¿é¡»ä¿æææçï¼å ä¸ºåæ¶å¨å¯è½å¨ä»»ä½æ¶åå¼å§è¿è¡ãå¨ :c:member:`~PyTypeObject.tp_traverse` å¤çåçææå­æ®µåä¸ºææåï¼å¿é¡»è°ç¨æ­¤å½æ°ï¼éå¸¸å¨é è¿æé å½æ°æ«å°¾çä½ç½®ã ç±»ä¼¼äº :c:func:`PyObject_NewVar` ï¼éç¨äºè®¾ç½®äº :const:`Py_TPFLAGS_HAVE_GC` æ ç­¾çå®¹å¨å¯¹è±¡ã ç±»ä¼¼äº :c:func:`PyObject_New` ï¼éç¨äºè®¾ç½®äº :const:`Py_TPFLAGS_HAVE_GC` æ ç­¾çå®¹å¨å¯¹è±¡ã å¨å¼ç¨å¶å®å®¹å¨çå­æ®µå¤±æåï¼å¿é¡»è°ç¨ :c:func:`PyObject_GC_UnTrack` ã å®¹å¨ç±»åçæé å½æ°å¿é¡»ç¬¦åä¸¤ä¸ªè§åï¼ æ§å¶åå¾åæ¶å¨ç¶æ ç¦ç¨åå¾åæ¶å¨ï¼ç±»ä¼¼äº :func:`gc.disable`ã è¿åä¹åçç¶æï¼0 ä¸ºç¦ç¨è 1 ä¸ºå¯ç¨ã ä¸¢å¼äº§çå¾ªç¯å¼ç¨çå¼ç¨ãä¸å¯åå¯¹è±¡ä¸éè¦å£°ææ­¤æ¹æ³ï¼å ä¸ºä»ä»¬ä¸å¯è½ç´æ¥äº§çå¾ªç¯å¼ç¨ãéè¦æ³¨æçæ¯ï¼å¯¹è±¡å¨è°ç¨æ­¤æ¹æ³åå¿é¡»ä»æ¯ææçï¼ä¸è½å¯¹å¼ç¨åªè°ç¨ :c:func:`Py_DECREF` æ¹æ³ï¼ãå½åå¾åæ¶å¨æ£æµå°è¯¥å¯¹è±¡å¨å¾ªç¯å¼ç¨ä¸­æ¶ï¼æ­¤æ¹æ³ä¼è¢«è°ç¨ã å¯ç¨åå¾åæ¶å¨ï¼ç±»ä¼¼äº :func:`gc.enable`ã è¿åä¹åçç¶æï¼0 ä¸ºç¦ç¨è 1 ä¸ºå¯ç¨ã å¦æ *o* ä¸ä¸º ``NULL``ï¼åè°ç¨ *visit* åè°å½æ°ï¼éå¸¦åæ° *o* å *arg*ã å¦æ *visit* è¿åä¸ä¸ªéé¶å¼ï¼åè¿åè¯¥å¼ã ä½¿ç¨æ­¤å®ä¹åï¼:c:member:`~PyTypeObject.tp_traverse` å¤çç¨åºçå½¢å¼å¦ä¸:: å¦æä¸ä¸ªç±»åæ·»å äº Py_TPFLAGS_HAVE_GCï¼åå® *å¿é¡»* å®ç°è³å°ä¸ä¸ª :c:member:`~PyTypeObject.tp_traverse` å¥æææ¾å¼å°ä½¿ç¨æ¥èªå¶ä¸ä¸ªæå¤ä¸ªå­ç±»çå¥æã è®¾ç½®äºæ­¤æ å¿ä½çç±»åçå¯¹è±¡å¿é¡»ç¬¦åæ­¤å¤è®°å½çè§åãä¸ºæ¹ä¾¿èµ·è§ï¼ä¸ææè¿äºå¯¹è±¡ç§°ä¸ºå®¹å¨å¯¹è±¡ã åå§åäºææå¯è½åå«å¶ä»å®¹å¨çå¼ç¨çå­æ®µåï¼å®å¿é¡»è°ç¨ :c:func:`PyObject_GC_Track` ã æ§è¡å®å¨çåå¾åæ¶ï¼å¦æåå¾åæ¶å¨å·²å¯ç¨çè¯ã ï¼è¯·æ³¨æ :func:`gc.collect` ä¼æ æ¡ä»¶å°æ§è¡å®ãï¼ Python å¯¹å¾ªç¯å¼ç¨çåå¾æ£æµä¸åæ¶éè¦âå®¹å¨âå¯¹è±¡ç±»åçæ¯æï¼æ­¤ç±»åçå®¹å¨å¯¹è±¡ä¸­å¯è½åå«å¶å®å®¹å¨å¯¹è±¡ãä¸ä¿å­å¶å®å¯¹è±¡çå¼ç¨çç±»åï¼æèåªä¿å­åå­ç±»åï¼å¦æ°å­æå­ç¬¦ä¸²ï¼çå¼ç¨çç±»åï¼ä¸éè¦æ¾å¼æä¾åå¾åæ¶çæ¯æã æ¥è¯¢åå¾åæ¶å¨çç¶æï¼ç±»ä¼¼äº :func:`gc.isenabled`ã è¿åå½åçç¶æï¼0 ä¸ºç¦ç¨è 1 ä¸ºå¯ç¨ã éæ¾å¯¹è±¡çåå­ï¼è¯¥å¯¹è±¡åå§åæ¶ç± :c:func:`PyObject_GC_New` æ :c:func:`PyObject_GC_NewVar` åéåå­ã ä»åæ¶å¨è·è¸ªçå®¹å¨å¯¹è±¡éåä¸­ç§»é¤ *op* å¯¹è±¡ã è¯·æ³¨æå¯ä»¥å¨æ­¤å¯¹è±¡ä¸åæ¬¡è°ç¨ :c:func:`PyObject_GC_Track` ä»¥å°å¶å åå°è¢«è·è¸ªå¯¹è±¡éåã éæ¾å¨ (:c:member:`~PyTypeObject.tp_dealloc` å¥æ) åºå½å¨ :c:member:`~PyTypeObject.tp_traverse` å¥ææä½¿ç¨çä»»ä½å­æ®µå¤±æä¹åä¸ºå¯¹è±¡è°ç¨æ­¤å½æ°ã ä¸º :c:func:`PyObject_NewVar` æåéå¯¹è±¡éæ°è°æ´å¤§å°ã è¿åè°æ´å¤§å°åçå¯¹è±¡æå¨å¤±è´¥æ¶è¿å ``NULL``ã *op* å¿é¡»å°æªè¢«åå¾åæ¶å¨è¿½è¸ªã å¦æ *op* å¯¹è±¡çç±»åå®ç°äº GC åè®®ä¸ *op* å·²ç»è¢«åå¾åæ¶å¨ç»ç»åè¿å 1ï¼ å¦åè¿å 0ã å¦æ *op* å¯¹è±¡çç±»åå®ç°äº GC åè®®ä¸ *op* ç®åæ­£è¢«åå¾åæ¶å¨è¿½è¸ªåè¿å 1ï¼ å¦åè¿å 0ã å¦æå¯¹è±¡å®ç°äºåå¾åæ¶å¨åè®®åè¿åéé¶å¼ï¼å¦åè¿å 0ã è¿åå·²åæ¶ç + æ æ³åæ¶çä¸å¯è·åå¯¹è±¡çæ°éã å¦æåå¾åæ¶å¨è¢«ç¦ç¨æå·²å¨æ§è¡åæ¶ï¼åç«å³è¿å ``0``ã å¨åå¾åæ¶æé´åççéè¯¯ä¼è¢«ä¼ ç» :data:`sys.unraisablehook`ã æ­¤å½æ°ä¸ä¼å¼åå¼å¸¸ã åæ ·çï¼å¯¹è±¡çéæ¾å¨å¿é¡»ç¬¦åä¸¤ä¸ªç±»ä¼¼çè§åï¼ ä½¿å¯¹è±¡ç±»åæ¯æå¾ªç¯åå¾åæ¶ :c:func:`_PyObject_GC_TRACK` å :c:func:`_PyObject_GC_UNTRACK` å®å·²ä»å¬æ C API ä¸­ç§»é¤ã :c:member:`~PyTypeObject.tp_clear` å¤çç¨åºå¿é¡»ä¸º :c:type:`inquiry` ç±»åï¼å¦æå¯¹è±¡ä¸å¯ååä¸º ``NULL``ã :c:member:`~PyTypeObject.tp_traverse` å¤çæ¥æ¶ä»¥ä¸ç±»åçå½æ°å½¢åã :c:member:`~PyTypeObject.tp_traverse` å¤çå¿é¡»æ¯ä»¥ä¸ç±»åï¼ è¿ä¸ª C-API æä¾äºä»¥ä¸å½æ°ç¨äºæ§å¶åå¾åæ¶çè¿è¡ã å¿é¡»ä½¿ç¨ :c:func:`PyObject_GC_New` æ :c:func:`PyObject_GC_NewVar` ä¸ºè¿äºå¯¹è±¡åéåå­ã å¦ææ­¤å½æ°è¿å 0 åå¯¹è±¡æ æ³è¢«åå¾åæ¶å¨è¿½è¸ªã å¿é¡»ä½¿ç¨ :c:func:`PyObject_GC_Del` éæ¾å¯¹è±¡çåå­ã è¿ç±»ä¼¼äº Python å½æ° :func:`gc.is_finalized`ã è¿ç±»ä¼¼äº Python å½æ° :func:`gc.is_tracked`ã è¥è¦åå»ºä¸ä¸ªå®¹å¨ç±»ï¼ç±»åå¯¹è±¡ç :c:member:`~PyTypeObject.tp_flags` å­æ®µå¿é¡»åå« :const:`Py_TPFLAGS_HAVE_GC` å¹¶æä¾ä¸ä¸ª :c:member:`~PyTypeObject.tp_traverse` å¤ççå®ç°ãå¦æè¯¥ç±»åçå®ä¾æ¯å¯åçï¼è¿éè¦å®ç° :c:member:`~PyTypeObject.tp_clear` ã ä¸ºäºç®å :c:member:`~PyTypeObject.tp_traverse` å¤ççå®ç°ï¼Pythonæä¾äºä¸ä¸ª :c:func:`Py_VISIT` å®ãè¥è¦ä½¿ç¨è¿ä¸ªå®ï¼å¿é¡»æ :c:member:`~PyTypeObject.tp_traverse` çåæ°å½åä¸º *visit* å *arg* ã ç¨äºå®¹å¨å¯¹è±¡çéåå½æ°ã å®çå®ç°å¿é¡»å¯¹ *self* æç´æ¥åå«çæ¯ä¸ªå¯¹è±¡è°ç¨ *visit* å½æ°ï¼*visit* çå½¢åä¸ºæåå«å¯¹è±¡åä¼ ç»å¤çç¨åºç *arg* å¼ã *visit* å½æ°è°ç¨ä¸å¯éå¸¦ ``NULL`` å¯¹è±¡ä½ä¸ºåæ°ã å¦æ *visit* è¿åéé¶å¼ï¼åè¯¥å¼åºå½è¢«ç«å³è¿åã ä¼ ç» :c:member:`~PyTypeObject.tp_traverse` å¤ççè®¿é®å½æ°çç±»åã*object* æ¯å®¹å¨ä¸­éè¦è¢«éåçä¸ä¸ªå¯¹è±¡ï¼ç¬¬ä¸ä¸ªå½¢åå¯¹åºäº :c:member:`~PyTypeObject.tp_traverse` å¤çç *arg* ãPythonæ ¸å¿ä½¿ç¨å¤ä¸ªè®¿é®èå½æ°å®ç°å¾ªç¯å¼ç¨çåå¾æ£æµï¼ä¸éè¦ç¨æ·èªè¡å®ç°è®¿é®èå½æ°ã å½è°ç¨ :c:func:`PyType_Ready` æè API ä¸­æäºé´æ¥è°ç¨å®çå½æ°ä¾å¦ :c:func:`PyType_FromSpecWithBases` æ :c:func:`PyType_FromSpec` æ¶è§£éå¨å°±èªå¨å¡«å :c:member:`~PyTypeObject.tp_flags`, :c:member:`~PyTypeObject.tp_traverse` å :c:member:`~PyTypeObject.tp_clear` å­æ®µï¼å¦æè¯¥ç±»åæ¯ç»§æ¿èªå®ç°äºåå¾åæ¶å¨åè®®çç±»å¹¶ä¸è¯¥å­ç±» *æ²¡æ* åæ¬ :const:`Py_TPFLAGS_HAVE_GC` ææ çè¯ã 