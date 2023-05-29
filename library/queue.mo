Þ    +      t              Ì  '   Í  H   õ  ë   >  +   *  R   V  C   ©  $   í  K    J  ^  1  ©     Û     c	  c   	  )   å	  ;   
     K
     Õ
  È   ^     '  Ú   ¸  ä        x  '    ß  ?         #  y   1  Z   «  Ô       Û    z      ¶     v   F     ½  E   Ñ      &  -  Ò   T  Ï  '  L  ÷  x   D   ¿  ½   %   }"  ?   £"  Î   ã"  )   ²#  E   Ü#  ?   "$  "   b$  $  $  "  ª%  	  Í&  x   ×'     P(  e   m(  '   Ó(  0   û(     ,)     ­)  ®   -*  {   Ü*  ¹   X+  Ò   ,     å,  "  p-  Õ  .  ò   i0     \1  u   h1  e   Þ1  Ø  D2     4  ò   ¶4  ë   ©5     6  [   %7     7  1   7  Ô   Æ7  '  8  ä   Ã9     ¨:  $  I<  p   n=   **Source code:** :source:`Lib/queue.py` :class:`SimpleQueue` objects provide the public methods described below. :class:`collections.deque` is an alternative implementation of unbounded queues with fast atomic :meth:`~collections.deque.append` and :meth:`~collections.deque.popleft` operations that do not require locking and also support indexing. :mod:`queue` --- A synchronized queue class A queue class for use in a multi-processing (rather than multi-threading) context. Blocks until all items in the queue have been gotten and processed. Class :class:`multiprocessing.Queue` Constructor for a :abbr:`FIFO (first-in, first-out)` queue.  *maxsize* is an integer that sets the upperbound limit on the number of items that can be placed in the queue.  Insertion will block once this size has been reached, until queue items are consumed.  If *maxsize* is less than or equal to zero, the queue size is infinite. Constructor for a :abbr:`LIFO (last-in, first-out)` queue.  *maxsize* is an integer that sets the upperbound limit on the number of items that can be placed in the queue.  Insertion will block once this size has been reached, until queue items are consumed.  If *maxsize* is less than or equal to zero, the queue size is infinite. Constructor for a priority queue.  *maxsize* is an integer that sets the upperbound limit on the number of items that can be placed in the queue.  Insertion will block once this size has been reached, until queue items are consumed.  If *maxsize* is less than or equal to zero, the queue size is infinite. Constructor for an unbounded :abbr:`FIFO (first-in, first-out)` queue. Simple queues lack advanced functionality such as task tracking. Equivalent to ``get(False)``. Equivalent to ``put(item, block=False)``, provided for compatibility with :meth:`Queue.put_nowait`. Equivalent to ``put(item, block=False)``. Example of how to wait for enqueued tasks to be completed:: Exception raised when non-blocking :meth:`~Queue.get` (or :meth:`~Queue.get_nowait`) is called on a :class:`Queue` object which is empty. Exception raised when non-blocking :meth:`~Queue.put` (or :meth:`~Queue.put_nowait`) is called on a :class:`Queue` object which is full. If a :meth:`join` is currently blocking, it will resume when all items have been processed (meaning that a :meth:`task_done` call was received for every item that had been :meth:`put` into the queue). If the *data* elements are not comparable, the data can be wrapped in a class that ignores the data item and only compares the priority number:: In addition, the module implements a "simple" :abbr:`FIFO (first-in, first-out)` queue type, :class:`SimpleQueue`, whose specific implementation provides additional guarantees in exchange for the smaller functionality. Indicate that a formerly enqueued task is complete.  Used by queue consumer threads.  For each :meth:`get` used to fetch a task, a subsequent call to :meth:`task_done` tells the queue that the processing on the task is complete. Internally, those three types of queues use locks to temporarily block competing threads; however, they are not designed to handle reentrancy within a thread. Prior to 3.0 on POSIX systems, and for all versions on Windows, if *block* is true and *timeout* is ``None``, this operation goes into an uninterruptible wait on an underlying lock.  This means that no exceptions can occur, and in particular a SIGINT will not trigger a :exc:`KeyboardInterrupt`. Put *item* into the queue.  If optional args *block* is true and *timeout* is ``None`` (the default), block if necessary until a free slot is available.  If *timeout* is a positive number, it blocks at most *timeout* seconds and raises the :exc:`Full` exception if no free slot was available within that time. Otherwise (*block* is false), put an item on the queue if a free slot is immediately available, else raise the :exc:`Full` exception (*timeout* is ignored in that case). Put *item* into the queue.  The method never blocks and always succeeds (except for potential low-level errors such as failure to allocate memory). The optional args *block* and *timeout* are ignored and only provided for compatibility with :meth:`Queue.put`. Queue Objects Queue objects (:class:`Queue`, :class:`LifoQueue`, or :class:`PriorityQueue`) provide the public methods described below. Raises a :exc:`ValueError` if called more times than there were items placed in the queue. Remove and return an item from the queue.  If optional args *block* is true and *timeout* is ``None`` (the default), block if necessary until an item is available. If *timeout* is a positive number, it blocks at most *timeout* seconds and raises the :exc:`Empty` exception if no item was available within that time. Otherwise (*block* is false), return an item if one is immediately available, else raise the :exc:`Empty` exception (*timeout* is ignored in that case). Return ``True`` if the queue is empty, ``False`` otherwise.  If empty() returns ``False`` it doesn't guarantee that a subsequent call to get() will not block. Return ``True`` if the queue is empty, ``False`` otherwise.  If empty() returns ``True`` it doesn't guarantee that a subsequent call to put() will not block.  Similarly, if empty() returns ``False`` it doesn't guarantee that a subsequent call to get() will not block. Return ``True`` if the queue is full, ``False`` otherwise.  If full() returns ``True`` it doesn't guarantee that a subsequent call to get() will not block.  Similarly, if full() returns ``False`` it doesn't guarantee that a subsequent call to put() will not block. Return the approximate size of the queue.  Note, qsize() > 0 doesn't guarantee that a subsequent get() will not block, nor will qsize() < maxsize guarantee that put() will not block. Return the approximate size of the queue.  Note, qsize() > 0 doesn't guarantee that a subsequent get() will not block. SimpleQueue Objects The :mod:`queue` module defines the following classes and exceptions: The :mod:`queue` module implements multi-producer, multi-consumer queues. It is especially useful in threaded programming when information must be exchanged safely between multiple threads.  The :class:`Queue` class in this module implements all the required locking semantics. The count of unfinished tasks goes up whenever an item is added to the queue. The count goes down whenever a consumer thread calls :meth:`task_done` to indicate that the item was retrieved and all work on it is complete.  When the count of unfinished tasks drops to zero, :meth:`join` unblocks. The lowest valued entries are retrieved first (the lowest valued entry is the one that would be returned by ``min(entries)``).  A typical pattern for entries is a tuple in the form: ``(priority_number, data)``. The module implements three types of queue, which differ only in the order in which the entries are retrieved.  In a :abbr:`FIFO (first-in, first-out)` queue, the first tasks added are the first retrieved.  In a :abbr:`LIFO (last-in, first-out)` queue, the most recently added entry is the first retrieved (operating like a stack).  With a priority queue, the entries are kept sorted (using the :mod:`heapq` module) and the lowest valued entry is retrieved first. This method has a C implementation which is reentrant.  That is, a ``put()`` or ``get()`` call can be interrupted by another ``put()`` call in the same thread without deadlocking or corrupting internal state inside the queue.  This makes it appropriate for use in destructors such as ``__del__`` methods or :mod:`weakref` callbacks. Two methods are offered to support tracking whether enqueued tasks have been fully processed by daemon consumer threads. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:12+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç :** :source:`Lib/queue.py` :class:`SimpleQueue` å¯¹è±¡æä¾ä¸åæè¿°çå¬å±æ¹æ³ã :class:`collections.deque` æ¯æ çéåçä¸ä¸ªæ¿ä»£å®ç°ï¼å·æå¿«éçä¸éè¦éå¹¶ä¸æ¯æç´¢å¼çåå­å :meth:`~collections.deque.append` å :meth:`~collections.deque.popleft` æä½ã :mod:`queue` --- ä¸ä¸ªåæ­¥çéåç±» ä¸ä¸ªç¨äºå¤è¿ç¨ä¸ä¸æçéåç±»ï¼èä¸æ¯å¤çº¿ç¨ï¼ã é»å¡è³éåä¸­ææçåç´ é½è¢«æ¥æ¶åå¤çå®æ¯ã ç±» :class:`multiprocessing.Queue`  :abbr:`FIFO (first-in, first-out)` éåæé å½æ°ã *maxsize* æ¯ä¸ªæ´æ°ï¼ç¨äºè®¾ç½®å¯ä»¥æ¾å¥éåä¸­çé¡¹ç®æ°çä¸éãå½è¾¾å°è¿ä¸ªå¤§å°çæ¶åï¼æå¥æä½å°é»å¡è³éåä¸­çé¡¹ç®è¢«æ¶è´¹æãå¦æ *maxsize* å°äºç­äºé¶ï¼éåå°ºå¯¸ä¸ºæ éå¤§ã :abbr:`LIFO (last-in, first-out)` éåæé å½æ°ã *maxsize* æ¯ä¸ªæ´æ°ï¼ç¨äºè®¾ç½®å¯ä»¥æ¾å¥éåä¸­çé¡¹ç®æ°çä¸éãå½è¾¾å°è¿ä¸ªå¤§å°çæ¶åï¼æå¥æä½å°é»å¡è³éåä¸­çé¡¹ç®è¢«æ¶è´¹æãå¦æ *maxsize* å°äºç­äºé¶ï¼éåå°ºå¯¸ä¸ºæ éå¤§ã ä¼åçº§éåæé å½æ°ã *maxsize* æ¯ä¸ªæ´æ°ï¼ç¨äºè®¾ç½®å¯ä»¥æ¾å¥éåä¸­çé¡¹ç®æ°çä¸éãå½è¾¾å°è¿ä¸ªå¤§å°çæ¶åï¼æå¥æä½å°é»å¡è³éåä¸­çé¡¹ç®è¢«æ¶è´¹æãå¦æ *maxsize* å°äºç­äºé¶ï¼éåå°ºå¯¸ä¸ºæ éå¤§ã æ çç :abbr:`FIFO (first-in, first-out)` éåæé å½æ°ãç®åçéåï¼ç¼ºå°ä»»å¡è·è¸ªç­é«çº§åè½ã ç¸å½äº ``get(False)`` ã ç¸å½äº ``put(item, block=False)``ï¼ä¸ºä¿æä¸ :meth:`Queue.put_nowait` çå¼å®¹æ§èæä¾ã ç¸å½äº ``put(item, block=False)``ã å¦ä½ç­å¾æéçä»»å¡è¢«å®æçç¤ºä¾ï¼ å¯¹ç©ºç :class:`Queue` å¯¹è±¡ï¼è°ç¨éé»å¡ç :meth:`~Queue.get` (or  :meth:`~Queue.get_nowait`) æ¶ï¼å¼åçå¼å¸¸ã å¯¹æ»¡ç :class:`Queue` å¯¹è±¡ï¼è°ç¨éé»å¡ç :meth:`~Queue.put` (or :meth:`~Queue.put_nowait`) æ¶ï¼å¼åçå¼å¸¸ã å¦æ :meth:`join` å½åæ­£å¨é»å¡ï¼å¨æææ¡ç®é½è¢«å¤çåï¼å°è§£é¤é»å¡(æå³çæ¯ä¸ª :meth:`put` è¿éåçæ¡ç®ç :meth:`task_done` é½è¢«æ¶å°)ã å¦æ *data* åç´ æ²¡æå¯æ¯æ§ï¼æ°æ®å°è¢«åè£å¨ä¸ä¸ªç±»ä¸­ï¼å¿½ç¥æ°æ®å¼ï¼ä»ä»æ¯è¾ä¼åçº§æ°å­ ï¼ æ­¤å¤ï¼æ¨¡åå®ç°äºä¸ä¸ª "ç®åç"  :abbr:`FIFO (first-in, first-out)` éåç±»åï¼ :class:`SimpleQueue` ï¼è¿ä¸ªç¹æ®å®ç°ä¸ºå°åè½å¨äº¤æ¢ä¸­æä¾é¢å¤çä¿éã è¡¨ç¤ºåé¢æéçä»»å¡å·²ç»è¢«å®æãè¢«éåçæ¶è´¹èçº¿ç¨ä½¿ç¨ãæ¯ä¸ª :meth:`get` è¢«ç¨äºè·åä¸ä¸ªä»»å¡ï¼ åç»­è°ç¨ :meth:`task_done` åè¯éåï¼è¯¥ä»»å¡çå¤çå·²ç»å®æã å¨åé¨ï¼è¿ä¸ä¸ªç±»åçéåä½¿ç¨éæ¥ä¸´æ¶é»å¡ç«äºçº¿ç¨ï¼ç¶èï¼å®ä»¬å¹¶æªè¢«è®¾è®¡ç¨äºçº¿ç¨çéå¥æ§å¤çã POSIX ç³»ç»ä¸å¨ 3.0 ä¹åï¼ä»¥åå¨ Windows ä¸çææçæ¬ä¸­ï¼å¦æ *block* ä¸ºçå¼å¹¶ä¸ *timeout* ä¸º ``None``ï¼æ­¤æä½å°è¿å¥å¨åºå±éä¸çä¸å¯ä¸­æ­çç­å¾ã è¿æå³çä¸ä¼åçä»»ä½å¼å¸¸ï¼ç¹å«æ¯ SIGINT å°ä¸ä¼è§¦å :exc:`KeyboardInterrupt`ã å° *item* å å¥éåã å¦æå¯éåæ° *block* ä¸ºçå¼å¹¶ä¸ *timeout* ä¸º ``None`` (é»è®¤å¼)ï¼åä¼å¨å¿è¦æ¶é»å¡ç´å°æç©ºé²æ§½ä½å¯ç¨ã å¦ä¸º *timeout* ä¸ºæ­£æ°ï¼åå°é»å¡æå¤ *timeout* ç§å¹¶ä¼å¨æ²¡æå¯ç¨çç©ºé²æ§½ä½æ¶å¼å :exc:`Full` å¼å¸¸ã å¨å¶ä»æåµä¸ (*block* ä¸ºåå¼)ï¼åå¦æç©ºé²æ§½ä½ç«å³å¯ç¨åå°æ¡ç®å å¥éåï¼å¦åå°å¼å :exc:`Full` å¼å¸¸ (*timeout* å¨æ­¤æåµä¸å°è¢«å¿½ç¥)ã å° *item* æ¾å¥éåãæ­¤æ¹æ³æ°¸ä¸é»å¡ï¼å§ç»æåï¼é¤äºæ½å¨çä½çº§éè¯¯ï¼ä¾å¦åå­åéå¤±è´¥ï¼ãå¯éåæ° *block* å *timeout* ä»ä»æ¯ä¸ºäºä¿æ :meth:`Queue.put` çå¼å®¹æ§èæä¾ï¼å¶å¼è¢«å¿½ç¥ã Queueå¯¹è±¡ éåå¯¹è±¡ (:class:`Queue`, :class:`LifoQueue`, æè :class:`PriorityQueue`) æä¾ä¸åæè¿°çå¬å±æ¹æ³ã å¦æè¢«è°ç¨çæ¬¡æ°å¤äºæ¾å¥éåä¸­çé¡¹ç®æ°éï¼å°å¼å :exc:`ValueError` å¼å¸¸ ã ä»éåä¸­ç§»é¤å¹¶è¿åä¸ä¸ªé¡¹ç®ãå¦æå¯éåæ° *block* æ¯ true å¹¶ä¸ *timeout* æ¯ ``None`` (é»è®¤å¼)ï¼åå¨å¿è¦æ¶é»å¡è³é¡¹ç®å¯å¾å°ãå¦æ *timeout* æ¯ä¸ªæ­£æ°ï¼å°æå¤é»å¡ *timeout* ç§ï¼å¦æå¨è¿æ®µæ¶é´åé¡¹ç®ä¸è½å¾å°ï¼å°å¼å :exc:`Empty` å¼å¸¸ãåä¹ (*block* æ¯ false) , å¦æä¸ä¸ªé¡¹ç®ç«å³å¯å¾å°ï¼åè¿åä¸ä¸ªé¡¹ç®ï¼å¦åå¼å :exc:`Empty` å¼å¸¸ (è¿ç§æåµä¸ï¼*timeout* å°è¢«å¿½ç¥)ã å¦æéåä¸ºç©ºåè¿å ``True``ï¼å¦åè¿å ``False``ã å¦æ empty() è¿å ``False`` åä¸ä¿è¯åç»­å¯¹ get() çè°ç¨å°ä¸ä¼é»å¡ã å¦æéåä¸ºç©ºï¼è¿å ``True`` ï¼å¦åè¿å ``False`` ãå¦æ empty() è¿å ``True`` ï¼ä¸ä¿è¯åç»­è°ç¨ç put() ä¸è¢«é»å¡ãç±»ä¼¼çï¼å¦æ empty() è¿å ``False`` ï¼ä¹ä¸ä¿è¯åç»­è°ç¨ç get() ä¸è¢«é»å¡ã å¦æéåæ¯æ»¡çè¿å ``True`` ï¼å¦åè¿å ``False`` ãå¦æ full() è¿å ``True``Â ä¸ä¿è¯åç»­è°ç¨ç get() ä¸è¢«é»å¡ãç±»ä¼¼çï¼å¦æ full() è¿å ``False`` ä¹ä¸ä¿è¯åç»­è°ç¨ç put() ä¸è¢«é»å¡ã è¿åéåçå¤§è´å¤§å°ãæ³¨æï¼qsize() > 0 ä¸ä¿è¯åç»­ç get() ä¸è¢«é»å¡ï¼qsize() < maxsize ä¹ä¸ä¿è¯ put() ä¸è¢«é»å¡ã è¿åéåçå¤§è´å¤§å°ãæ³¨æï¼qsize() > 0 ä¸ä¿è¯åç»­ç get() ä¸è¢«é»å¡ã SimpleQueue å¯¹è±¡ :mod:`queue` æ¨¡åå®ä¹äºä¸åç±»åå¼å¸¸ï¼ :mod:`queue` æ¨¡åå®ç°äºå¤çäº§èãå¤æ¶è´¹èéåãè¿ç¹å«éç¨äºæ¶æ¯å¿é¡»å®å¨å°å¨å¤çº¿ç¨é´äº¤æ¢ççº¿ç¨ç¼ç¨ãæ¨¡åä¸­ç :class:`Queue` ç±»å®ç°äºæææéçéå®è¯­ä¹ã å½ä¸ä¸ªæ¡ç®è¢«æ·»å å°éåçæ¶åæªå®æä»»å¡çè®¡æ°å°ä¼å¢å ã æ¯å½ä¸ä¸ªæ¶è´¹èçº¿ç¨è°ç¨ :meth:`task_done` æ¥è¡¨æè¯¥æ¡ç®å·²è¢«æåä¸å¶ä¸çææå·¥ä½å·²å®ææ¶æªå®æè®¡æ°å°ä¼åå°ã å½æªå®æè®¡æ°éä¸ºé¶æ¶ï¼:meth:`join` å°è§£é¤é»å¡ã å¼æå°çæ¡ç®ä¼åè¢«æå (å¼æå°çæ¡ç®æ¯ç±the lowest valued entry is the one that would be returned by ``min(entries)`` è¿åç)ã æ¡ç®çå¸åæ¨¡å¼æ¯å¦ä¸å½¢å¼çåç»: ``(priority_number, data)``ã æ¬æ¨¡åå®ç°äºä¸ç§ç±»åçéåï¼å®ä»¬çåºå«ä»ä»æ¯æ¡ç®çæåé¡ºåºã å¨ :abbr:`FIFO (first-in, first-out)` éåä¸­ï¼åæ·»å çä»»å¡ä¼åè¢«æåã å¨ :abbr:`LIFO (last-in, first-out)` éåä¸­ï¼æè¿æ·»å çæ¡ç®ä¼åè¢«æå (ç±»ä¼¼äºä¸ä¸ªæ )ã å¨ä¼åçº§éåä¸­ï¼æ¡ç®å°ä¿æå·²æåºç¶æ (ä½¿ç¨ :mod:`heapq` æ¨¡å) å¹¶ä¸å¼æå°çæ¡ç®ä¼åè¢«æåã æ­¤æ¹æ³å·æä¸ä¸ªå¯éå¥ç C å®ç°ã ä¹å°±æ¯è¯´ï¼ä¸ä¸ª ``put()`` æ ``get()`` è°ç¨å¯ä»¥è¢«åä¸çº¿ç¨ä¸­çå¦ä¸ä¸ª ``put()`` è°ç¨ææ­èä¸ä¼åçæ­»éæç ´åéååé¨çç¶æã è¿ä½¿å¾å®éç¨äºææå¨å¦ ``__del__`` æ¹æ³æ :mod:`weakref` åè°ã æä¾äºä¸¤ä¸ªæ¹æ³ï¼ç¨äºæ¯æè·è¸ª æéçä»»å¡ æ¯å¦ è¢«å®æ¤çæ¶è´¹èçº¿ç¨ å®æ´çå¤çã 