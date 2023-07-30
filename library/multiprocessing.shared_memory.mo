Þ    )      d              ¬  ?   ­     í     s  Ï   t  µ   D  o  ú  Y   j  Ñ  Ä  9  
  4   Ð             /  m   B  Z   °  1    Þ   =         %     9  1  M  =     ?   ½  d   ý  ó   b  v  V  a   Í  /   /     _  ?   m  Æ   ­  R   t  U   Ç  Z     ê   x  ¤   c  e     ¬   n!  À  "  Ò   Ü#  ¿  ¯$  =   o&  v   ­&  î   $'  ¶   (  ª   Ê(  8  u)  P   ®*  z  ÿ*  I  z-  '   Ä.  h   ì.    U/  æ   Þ0  h   Å1  i   .2  8  2  Ù   Ñ3  l  «4     7     .7    A7  0   ^9  0   9  W   À9  Ì   :    å:  j   ú<  #   e=     =  /   =  ²   Æ=  F   y>  =   À>  F   þ>  ¹   E?     ÿ?  Y  @  ©   êA  b  B  ¾   ÷C   **Source code:** :source:`Lib/multiprocessing/shared_memory.py` *create* controls whether a new shared memory block is created (``True``) or an existing shared memory block is attached (``False``). *name* is the unique name for the requested shared memory, as described in the definition for :class:`SharedMemory`.  When attaching to an existing ``ShareableList``, specify its shared memory block's unique name while leaving ``sequence`` set to ``None``. *name* is the unique name for the requested shared memory, specified as a string.  When creating a new shared memory block, if ``None`` (the default) is supplied for the name, a novel name will be generated. *sequence* is used in populating a new ``ShareableList`` full of values. Set to ``None`` to instead attach to an already existing ``ShareableList`` by its unique shared memory name. *size* specifies the requested number of bytes when creating a new shared memory block.  Because some platforms choose to allocate chunks of memory based upon that platform's memory page size, the exact size of the shared memory block may be larger or equal to the size requested.  When attaching to an existing shared memory block, the ``size`` parameter is ignored. :mod:`multiprocessing.shared_memory` --- Shared memory for direct access across processes A call to :meth:`~multiprocessing.managers.BaseManager.start` on a :class:`SharedMemoryManager` instance causes a new process to be started. This new process's sole purpose is to manage the life cycle of all shared memory blocks created through it.  To trigger the release of all shared memory blocks managed by that process, call :meth:`~multiprocessing.managers.BaseManager.shutdown()` on the instance. This triggers a :meth:`SharedMemory.unlink()` call on all of the :class:`SharedMemory` objects managed by that process and then stops the process itself.  By creating ``SharedMemory`` instances through a ``SharedMemoryManager``, we avoid the need to manually track and trigger the freeing of shared memory resources. A known issue exists for :class:`bytes` and :class:`str` values. If they end with ``\x00`` nul bytes or characters, those may be *silently stripped* when fetching them by index from the :class:`ShareableList`. This ``.rstrip(b'\x00')`` behavior is considered a bug and may go away in the future. See :gh:`106939`. A memoryview of contents of the shared memory block. A subclass of :class:`~multiprocessing.managers.BaseManager` which can be used for the management of shared memory blocks across processes. As a resource for sharing data across processes, shared memory blocks may outlive the original process that created them.  When one process no longer needs access to a shared memory block that might still be needed by other processes, the :meth:`close()` method should be called. When a shared memory block is no longer needed by any process, the :meth:`unlink()` method should be called to ensure proper cleanup. Closes access to the shared memory from this instance.  In order to ensure proper cleanup of resources, all instances should call ``close()`` once the instance is no longer needed.  Note that calling ``close()`` does not cause the shared memory block itself to be destroyed. Create and return a new :class:`ShareableList` object, initialized by the values from the input ``sequence``. Create and return a new :class:`SharedMemory` object with the specified ``size`` in bytes. Creates a new shared memory block or attaches to an existing shared memory block.  Each shared memory block is assigned a unique name. In this way, one process can create a shared memory block with a particular name and a different process can attach to that same shared memory block using that same name. For applications where rstripping of trailing nulls is a problem, work around it by always unconditionally appending an extra non-0 byte to the end of such values when storing and unconditionally removing it when fetching: In this module, shared memory refers to "System V style" shared memory blocks (though is not necessarily implemented explicitly as such) and does not refer to "distributed shared memory".  This style of shared memory permits distinct processes to potentially read and write to a common (or shared) region of volatile memory.  Processes are conventionally limited to only have access to their own process memory space but shared memory permits the sharing of data between processes, avoiding the need to instead send messages between processes containing that data.  Sharing data directly via memory can provide significant performance benefits compared to sharing data via disk or socket or other communications requiring the serialization/deserialization and copying of data. Named Shared Memory POSIX Shared Memory Provides a mutable list-like object where all values stored within are stored in a shared memory block.  This constrains storable values to only the ``int`` (signed 64-bit), ``float``, ``bool``, ``str`` (less than 10M bytes each when encoded as utf-8), ``bytes`` (less than 10M bytes each), and ``None`` built-in data types.  It also notably differs from the built-in ``list`` type in that these lists can not change their overall length (i.e. no append, insert, etc.) and do not support the dynamic creation of new :class:`ShareableList` instances via slicing. Read-only access to size in bytes of the shared memory block. Read-only access to the unique name of the shared memory block. Read-only attribute containing the :mod:`struct` packing format used by all currently stored values. Refer to :class:`multiprocessing.managers.BaseManager` for a description of the inherited *address* and *authkey* optional input arguments and how they may be used to connect to an existing ``SharedMemoryManager`` service from other processes. Requests that the underlying shared memory block be destroyed.  In order to ensure proper cleanup of resources, ``unlink()`` should be called once (and only once) across all processes which have need for the shared memory block.  After requesting its destruction, a shared memory block may or may not be immediately destroyed and this behavior may differ across platforms.  Attempts to access data inside the shared memory block after ``unlink()`` has been called may result in memory access errors.  Note: the last process relinquishing its hold on a shared memory block may call ``unlink()`` and :meth:`close()` in either order. Returns first index position of ``value``.  Raises :exc:`ValueError` if ``value`` is not present. Returns the number of occurrences of ``value``. Shared Memory The :class:`SharedMemory` instance where the values are stored. The following example demonstrates a practical use of the :class:`SharedMemory` class with `NumPy arrays <https://numpy.org/>`_, accessing the same ``numpy.ndarray`` from two distinct Python shells: The following example demonstrates basic use of a :class:`ShareableList` instance: The following example demonstrates low-level use of :class:`SharedMemory` instances:: The following example demonstrates the basic mechanisms of a :class:`SharedMemoryManager`: The following example depicts a potentially more convenient pattern for using :class:`SharedMemoryManager` objects via the :keyword:`with` statement to ensure that all shared memory blocks are released after they are no longer needed: The following example depicts how one, two, or many processes may access the same :class:`ShareableList` by supplying the name of the shared memory block behind it: The following examples demonstrates that ``ShareableList`` (and underlying ``SharedMemory``) objects can be pickled and unpickled if needed. Note, that it will still be the same shared object. This happens, because the deserialized object has the same unique name and is just attached to an existing object with the same name (if the object is still alive): This class provides methods for creating and returning :class:`SharedMemory` instances and for creating a list-like object (:class:`ShareableList`) backed by shared memory. This module provides a class, :class:`SharedMemory`, for the allocation and management of shared memory to be accessed by one or more processes on a multicore or symmetric multiprocessor (SMP) machine.  To assist with the life-cycle management of shared memory especially across distinct processes, a :class:`~multiprocessing.managers.BaseManager` subclass, :class:`SharedMemoryManager`, is also provided in the ``multiprocessing.managers`` module. When using a :class:`SharedMemoryManager` in a :keyword:`with` statement, the shared memory blocks created using that manager are all released when the :keyword:`with` statement's code block finishes execution. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-29 02:08+0000
PO-Revision-Date: 2021-06-28 01:10+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç :** :source:`Lib/multiprocessing/shared_memory.py` *create* æå®åå»ºä¸ä¸ªæ°çå±äº«åå­å (``True``) è¿æ¯è¿æ¥å°å·²å­å¨çå±äº«åå­å (``False``) ã *name* æ¯æè¯·æ±çå±äº«åå­çå¯ä¸åç§°ï¼ä¸ :class:`SharedMemory` çå®ä¹ä¸­ææè¿°çä¸è´ã å½å³èå°ç°æç ``ShareableList`` æ¶ï¼åææå¶å±äº«åå­åçå¯ä¸åç§°å¹¶å° ``sequence`` è®¾ä¸º ``None``ã *name* æ¯å±äº«åå­çå¯ä¸åç§°ï¼å­ç¬¦ä¸²ç±»åãå¦æåå»ºä¸ä¸ªæ°å±äº«åå­åçæ¶åï¼åç§°æå®ä¸º ``None``  (é»è®¤å¼)ï¼å°ä¼éæºäº§çä¸ä¸ªæ°åç§°ã *sequence* ä¼è¢«ç¨æ¥ä¸ºä¸ä¸ªæ°ç ``ShareableList`` å¡«åå¼ã è®¾ä¸º ``None`` åä¼åºäºå¯ä¸çå±äº«åå­åç§°å³èå°å·²ç»å­å¨ç ``ShareableList``ã å¦ææ¯æ°åå»ºå±äº«åå­åå *size* ç¨äºæå®åçå¤§å°ä¸ºå¤å°å­èãç±äºæäºå¹³å°æ¯ä»¥åå­é¡µå¤§å°ä¸ºæå°åä½æ¥åéåå­çï¼æç»å¾å°çåå­åå¤§å°å¯è½å¤§äºæç­äºè¦æ±çå¤§å°ãå¦ææ¯è¿æ¥å°å·²ç»å­å¨çå±äº«åå­åï¼ ``size`` åæ°ä¼è¢«å¿½ç¥ã :mod:`multiprocessing.shared_memory` --- å¯è·¨è¿ç¨ç´æ¥è®¿é®çå±äº«åå­ è°ç¨ :class:`SharedMemoryManager`  å®ä¾ä¸ç :meth:`~multiprocessing.managers.BaseManager.start` æ¹æ³ä¼å¯å¨ä¸ä¸ªæ°è¿ç¨ãè¿ä¸ªæ°è¿ç¨çå¯ä¸ç®çå°±æ¯ç®¡çææç±å®åå»ºçå±äº«åå­åççå½å¨æãæ³è¦éæ¾æ­¤è¿ç¨ç®¡ççææå±äº«åå­åï¼å¯ä»¥è°ç¨å®ä¾ç :meth:`~multiprocessing.managers.BaseManager.shutdown()` æ¹æ³ãè¿ä¼è§¦åæ§è¡å®ç®¡ççææ  :class:`SharedMemory` å¯¹è±¡ç :meth:`SharedMemory.unlink()` æ¹æ³ï¼ç¶ååæ­¢è¿ä¸ªè¿ç¨ãéè¿  ``SharedMemoryManager`` åå»º ``SharedMemory`` å®ä¾ï¼æä»¬å¯ä»¥é¿åæå¨è·è¸ªåéæ¾å±äº«åå­èµæºã :class:`bytes` å :class:`str` å¼å­å¨ä¸ä¸ªå·²ç¥é®é¢ã å¦æè¿äºå¼ä»¥ ``\x00`` ç©ºå­èæå­ç¬¦ç»å°¾ï¼é£ä¹å¨æç´¢å¼ä» :class:`ShareableList` æåè¿äºå¼æ¶å®ä»¬å¯è½ä¼è¢« *éé»å°æªå»*ã è¿ç§ ``.rstrip(b'\x00')`` è¡ä¸ºè¢«è®¤ä¸ºæ¯ä¸ä¸ªéè¯¯å¹¶å¯è½å¨æªæ¥æ¶å¤±ã åè§ :gh:`106939`ã å±äº«åå­ååå®¹ç memoryview ã :class:`~multiprocessing.managers.BaseManager` çå­ç±»ï¼å¯ç¨äºç®¡çè·¨è¿ç¨çå±äº«åå­åã ä½ä¸ºä¸ç§è·¨è¿ç¨å±äº«æ°æ®çæ¹å¼ï¼å±äº«åå­åçå¯¿å½å¯è½è¶è¿åå»ºå®çåå§è¿ç¨ãä¸ä¸ªå±äº«åå­åå¯è½åæ¶è¢«å¤ä¸ªè¿ç¨ä½¿ç¨ï¼å½ä¸ä¸ªè¿ç¨ä¸åéè¦è®¿é®è¿ä¸ªå±äº«åå­åçæ¶åï¼åºè¯¥è°ç¨ :meth:`close()` æ¹æ³ãå½ä¸ä¸ªå±äº«åå­åä¸è¢«ä»»ä½è¿ç¨ä½¿ç¨çæ¶åï¼åºè¯¥è°ç¨ :meth:`unlink()` æ¹æ³ä»¥æ§è¡å¿è¦çæ¸çã å³é­å®ä¾å¯¹äºå±äº«åå­çè®¿é®è¿æ¥ãææå®ä¾ç¡®è®¤èªå·±ä¸åéè¦ä½¿ç¨å±äº«åå­çæ¶åé½åºè¯¥è°ç¨ ``close()`` ï¼ä»¥ä¿è¯å¿è¦çèµæºæ¸çãè°ç¨ ``close()`` å¹¶ä¸ä¼éæ¯å±äº«åå­åºåã åå»ºå¹¶è¿åä¸ä¸ªæ°ç :class:`ShareableList` å¯¹è±¡ï¼éè¿è¾å¥åæ° ``sequence`` åå§åã ä½¿ç¨ ``size`` åæ°ï¼åå»ºä¸ä¸ªæ°çæå®å­èå¤§å°ç :class:`SharedMemory` å¯¹è±¡å¹¶è¿åã åå»ºä¸ä¸ªæ°çå±äº«åå­åæèè¿æ¥å°ä¸çå·²ç»å­å¨çå±äº«åå­åãæ¯ä¸ªå±äº«åå­åé½è¢«æå®äºä¸ä¸ªå¨å±å¯ä¸çåç§°ãéè¿è¿ç§æ¹å¼ï¼è¿ç¨å¯ä»¥ä½¿ç¨ä¸ä¸ªç¹å®çåå­åå»ºå±äº«åå­åºåï¼ç¶åå¶ä»è¿ç¨ä½¿ç¨åæ ·çåå­è¿æ¥å°è¿ä¸ªå±äº«åå­åã å¯¹äºæäºåºç¨æ¥è¯´å¨å³ä¾§æªå»å°¾é¨ç©ºå¼ä¼é æé®é¢ï¼è¦ç»è¿æ­¤é®é¢å¯ä»¥å¨å­å¨è¿æ ·çå¼æ¶æ»æ¯æ æ¡ä»¶å°å¨å¶æ«å°¾éå ä¸ä¸ªé¢å¤çé 0 å­èå¹¶å¨è·åæ¶æ æ¡ä»¶å°ç§»é¤å®: æ¬æ¨¡åä¸­ï¼å±äº«åå­æ¯æ "System V ç±»å" çå±äº«åå­åï¼è½ç¶å¯è½åå®å®ç°æ¹å¼ä¸å®å¨ä¸è´ï¼èä¸æ¯ âåå¸å¼å±äº«åå­âãè¿ç§ç±»åççå±äº«åå­åè®¸ä¸åè¿ç¨è¯»åä¸çå¬å±ï¼æèå±äº«ï¼çæå¤±æ§å­å¨åºåãä¸è¬æ¥è¯´ï¼è¿ç¨è¢«éå¶åªè½è®¿é®å±äºèªå·±è¿ç¨ç©ºé´çåå­ï¼ä½æ¯å±äº«åå­åè®¸è·¨è¿ç¨å±äº«æ°æ®ï¼ä»èé¿åéè¿è¿ç¨é´åéæ¶æ¯çå½¢å¼ä¼ éæ°æ®ãç¸æ¯éè¿ç£çãå¥æ¥å­æèå¶ä»è¦æ±åºååãååºåååå¤å¶æ°æ®çå±äº«å½¢å¼ï¼ç´æ¥éè¿åå­å±äº«æ°æ®æ¥ææ´åºè²æ§è½ã å·²å½åå±äº«åå­ POSIX å±äº«åå­ æä¾äºä¸ä¸ªç±»ä¼¼äºå¯ååè¡¨çå¯¹è±¡ï¼å¶ä¸­å­å¨çææå¼é½å­å¨å¨ä¸ä¸ªå±äº«åå­åä¸­ã è¿éå¶äºå¯å­å¨çå¼åªè½æ¯ ``int`` (å¸¦ç¬¦å·ç 64 ä½), ``float``, ``bool``, ``str`` (å½ä»¥ utf-8 ç¼ç æ¶æ¯ä¸ªå¼å°äº 10M å­è), ``bytes`` (æ¯ä¸ªå¼å°äº 10M å­è) å ``None`` åç½®æ°æ®ç±»åã å®ä¸ ``list`` åç½®ç±»åçå¦ä¸ä¸ªæ¾èåºå«å¨äºè¿äºåè¡¨ä¸è½æ¹åå¶æ»é¿åº¦ (ä¾å¦ä¸è½è¿½å ãæå¥ç­)ï¼ä¹ä¸æ¯æéè¿åçå¨æåå»ºæ°ç :class:`ShareableList` å®ä¾ã å±äº«åå­åçå­èå¤§å°ï¼åªè¯»å±æ§ã å±äº«åå­åçå¯ä¸æ è¯ï¼åªè¯»å±æ§ã åå«ç±ææå½åå­å¨å¼æä½¿ç¨ç :mod:`struct` æåæ ¼å¼çåªè¯»å±æ§ã æå³ç»§æ¿çå¯éè¾å¥åæ° *address* å *authkey*  ä»¥åä»ä»¬å¦ä½ç¨äºä»è¿ç¨è¿æ¥å·²ç»å­å¨ç ``SharedMemoryManager`` æå¡ï¼åè§ :class:`multiprocessing.managers.BaseManager`Â ã è¯·æ±éæ¯åºå±çå±äº«åå­åã ä¸ºäºæ§è¡å¿è¦çèµæºæ¸çï¼å¨ææä½¿ç¨è¿ä¸ªå±äº«åå­åçè¿ç¨ä¸­ï¼``unlink()`` åºè¯¥è°ç¨ä¸æ¬¡ï¼ä¸åªè½è°ç¨ä¸æ¬¡ï¼ã ååºæ­¤éæ¯è¯·æ±åï¼å±äº«åå­åå¯è½ä¼ãä¹å¯è½ä¸ä¼ç«å³éæ¯ï¼ä¸æ­¤è¡ä¸ºå¨ä¸åæä½ç³»ç»ä¹é´å¯è½ä¸åã è°ç¨ ``unlink()`` ååå°è¯è®¿é®å¶ä¸­çæ°æ®å¯è½å¯¼è´åå­éè¯¯ã æ³¨æï¼æåä¸ä¸ªå³é­å±äº«åå­è®¿é®æéçè¿ç¨å¯ä»¥ä»¥ä»»æé¡ºåºè°ç¨ ``unlink()`` å :meth:`close()`ã è¿å ``value`` é¦æ¬¡åºç°çä½ç½®ï¼å¦æ ``value`` ä¸å­å¨, åæåº :exc:`ValueError` å¼å¸¸ã è¿å ``value`` åºç°çæ¬¡æ°ã å±äº«åå­ å­å¨äºå¼ç :class:`SharedMemory` å®ä¾ã ä¸é¢çä¾å­å±ç¤ºäº :class:`SharedMemory` ç±»ç»å `NumPy æ°ç» <https://numpy.org/>`_ çå®éåºç¨ï¼ä»ä¸¤ä¸ªç¬ç«ç Python shell è®¿é®åä¸ä¸ª ``numpy.ndarray``: ä¸é¢çä¾å­æ¼ç¤ºäº :class:`ShareableList` å®ä¾çåºæ¬ç¨æ³: ä»¥ä¸ç¤ºä¾å±ç¤ºäº :class:`SharedMemory` åºå±çç¨æ³:: ä¸é¢çæ¡ä¾å±ç¤ºäº :class:`SharedMemoryManager` çåºæ¬æºå¶: ä»¥ä¸æ¡ä¾å±ç¤ºäº :class:`SharedMemoryManager` å¯¹è±¡çä¸ç§å¯è½æ´æ¹ä¾¿çä½¿ç¨æ¹å¼ï¼éè¿ :keyword:`with` è¯­å¥æ¥ä¿è¯ææå±äº«åå­åå¨ä½¿ç¨å®åè¢«éæ¾ã ä¸é¢çä¾å­æ¼ç¤ºäºä¸ä¸ªãä¸¤ä¸ªæå¤ä¸ªè¿ç¨å¦ä½éè¿æä¾ä¸å±çå±äº«åå­ååç§°æ¥è®¿é®åä¸ä¸ª :class:`ShareableList`: ä¸é¢çä¾å­æ¾ç¤º ``ShareableList`` (ä»¥åä¸å±ç ``SharedMemory``) å¯¹è±¡å¯ä»¥å¨å¿è¦æ¶è¢«å°å­åè§£å°ã è¯·æ³¨æï¼å®å°ä»ç¶ä¸ºåä¸ä¸ªå±äº«å¯¹è±¡ã åºç°è¿ç§æåµæ¯å ä¸ºè¢«ååºååçå¯¹è±¡å·æç¸åçå¯ä¸åç§°å¹¶ä½¿ç¨è¿ä¸ªç¸åçåç§°éå å°ç°æçå¯¹è±¡ä¸ï¼å¦æå¯¹è±¡ä»ç¶ä¿æå­æ´»ï¼: è¿ä¸ªç±»æä¾äºåå»ºåè¿å :class:`SharedMemory` å®ä¾çæ¹æ³ï¼ä»¥åä»¥å±äº«åå­ä¸ºåºç¡åå»ºä¸ä¸ªåè¡¨ç±»å¯¹è±¡ (:class:`ShareableList`) çæ¹æ³ã è¯¥æ¨¡åæä¾äºä¸ä¸ª :class:`SharedMemory` ç±»ï¼ç¨äºåéåç®¡çå¤æ ¸æå¯¹ç§°å¤å¤çå¨ï¼SMPï¼æºå¨ä¸è¿ç¨é´çå±äº«åå­ãä¸ºäºåå©ç®¡çä¸åè¿ç¨é´çå±äº«åå­çå½å¨æï¼``multiprocessing.managers`` æ¨¡åä¹æä¾äºä¸ä¸ª :class:`~multiprocessing.managers.BaseManager` çå­ç±»ï¼ :class:`SharedMemoryManager`ã å¨ :keyword:`with` è¯­å¥ä¸­ä½¿ç¨ :class:`SharedMemoryManager`Â  å¯¹è±¡çæ¶åï¼ä½¿ç¨è¿ä¸ªç®¡çå¨åå»ºçå±äº«åå­åä¼å¨  :keyword:`with` è¯­å¥ä»£ç åç»æåè¢«éæ¾ã 