Þ    &      L              |  0   }  #   ®  b   Ò  P   5  D     E   Ë       o     
     Ö     Ï   l  A   <  j   ~  3   é  
        (  %   »     á  ,   ð  m               L     X   å  ]   >	     	  ;   º	  @   ö	  M   7
  (   
  '   ®
  )  Ö
  >      _   ?       ®   2  ½   á  ¿    .   _       Q   ®  Q      ?   R  >        Ñ  }   Ø     V  È   ]  µ   &  H   Ü  h   %  Z        é  x   ü  $   u       '   ª  o   Ò     B  	   H  <   R  ^     f   î     U  ?   p  I   °  h   ú  !   c  %     #  «  V   Ï  Z   &               ¥   **Source code:** :source:`Lib/asyncio/queues.py` A first in, first out (FIFO) queue. A variant of :class:`Queue` that retrieves most recently added entries first (last in, first out). A variant of :class:`Queue`; retrieves entries in priority order (lowest first). Block until all items in the queue have been received and processed. Entries are typically tuples of the form ``(priority_number, data)``. Examples Exception raised when the :meth:`~Queue.put_nowait` method is called on a queue that has reached its *maxsize*. Exceptions If *maxsize* is less than or equal to zero, the queue size is infinite.  If it is an integer greater than ``0``, then ``await put()`` blocks when the queue reaches *maxsize* until an item is removed by :meth:`get`. If a :meth:`join` is currently blocking, it will resume when all items have been processed (meaning that a :meth:`task_done` call was received for every item that had been :meth:`~Queue.put` into the queue). If no free slot is immediately available, raise :exc:`QueueFull`. If the queue was initialized with ``maxsize=0`` (the default), then :meth:`full()` never returns ``True``. Indicate that a formerly enqueued task is complete. LIFO Queue Note that methods of asyncio queues don't have a *timeout* parameter; use :func:`asyncio.wait_for` function to do queue operations with a timeout. Number of items allowed in the queue. Priority Queue Put an item into the queue without blocking. Put an item into the queue. If the queue is full, wait until a free slot is available before adding the item. Queue Queues Queues can be used to distribute workload between several concurrent tasks:: Raises :exc:`ValueError` if called more times than there were items placed in the queue. Remove and return an item from the queue. If queue is empty, wait until an item is available. Removed the *loop* parameter. Return ``True`` if the queue is empty, ``False`` otherwise. Return ``True`` if there are :attr:`maxsize` items in the queue. Return an item if one is immediately available, else raise :exc:`QueueEmpty`. Return the number of items in the queue. See also the `Examples`_ section below. The count of unfinished tasks goes up whenever an item is added to the queue. The count goes down whenever a consumer coroutine calls :meth:`task_done` to indicate that the item was retrieved and all work on it is complete.  When the count of unfinished tasks drops to zero, :meth:`join` unblocks. This class is :ref:`not thread safe <asyncio-multithreading>`. This exception is raised when the :meth:`~Queue.get_nowait` method is called on an empty queue. Unlike the standard library threading :mod:`queue`, the size of the queue is always known and can be returned by calling the :meth:`qsize` method. Used by queue consumers. For each :meth:`~Queue.get` used to fetch a task, a subsequent call to :meth:`task_done` tells the queue that the processing on the task is complete. asyncio queues are designed to be similar to classes of the :mod:`queue` module.  Although asyncio queues are not thread-safe, they are designed to be used specifically in async/await code. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:55+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç :** :source:`Lib/asyncio/queues.py` åè¿ï¼ååºï¼FIFOï¼éå :class:`Queue` çåä½ï¼åååºæè¿æ·»å çæ¡ç®ï¼åè¿ï¼ååºï¼ã :class:`Queue` çåä½ï¼æä¼åçº§é¡ºåºååºæ¡ç® (æå°çåååº)ã é»å¡è³éåä¸­ææçåç´ é½è¢«æ¥æ¶åå¤çå®æ¯ã æ¡ç®éå¸¸æ¯ ``(priority_number, data)`` å½¢å¼çåç»ã ä¾å­ å½éåä¸­æ¡ç®æ°éå·²ç»è¾¾å°å®ç *maxsize* çæ¶åï¼è°ç¨ :meth:`~Queue.put_nowait` æ¹æ³èå¼åçå¼å¸¸ã å¼å¸¸ å¦æ *maxsize* å°äºç­äºé¶ï¼åéåå°ºå¯¸æ¯æ éçãå¦ææ¯å¤§äº ``0`` çæ´æ°ï¼åå½éåè¾¾å° *maxsize* æ¶ï¼ ``await put()`` å°é»å¡è³æä¸ªåç´ è¢« :meth:`get` ååºã å¦æ :meth:`join` å½åæ­£å¨é»å¡ï¼å¨æææ¡ç®é½è¢«å¤çåï¼å°è§£é¤é»å¡(æå³çæ¯ä¸ª :meth:`~Queue.put` è¿éåçæ¡ç®ç :meth:`task_done` é½è¢«æ¶å°)ã å¦ææ²¡æç«å³å¯ç¨çç©ºé²æ§½ï¼å¼å :exc:`QueueFull` å¼å¸¸ã å¦æéåç¨ ``maxsize=0`` ï¼é»è®¤ï¼åå§åï¼å :meth:`full()` æ°¸è¿ä¸ä¼è¿å ``True`` ã è¡¨æåé¢æéçä»»å¡å·²ç»å®æï¼å³getåºæ¥çåç´ ç¸å³æä½å·²ç»å®æã åè¿ååºéå æ³¨æasyncio çéåæ²¡æ *timeout* å½¢åï¼è¯·ä½¿ç¨ :func:`asyncio.wait_for` å½æ°ä¸ºéåæ·»å è¶æ¶æä½ã éåä¸­å¯å­æ¾çåç´ æ°éã ä¼åçº§éå ä¸é»å¡çæ¾ä¸ä¸ªåç´ å¥éåã æ·»å ä¸ä¸ªåç´ è¿éåãå¦æéåæ»¡äºï¼å¨æ·»å åç´ ä¹åï¼ä¼ä¸ç´ç­å¾ç©ºé²ææ§½å¯ç¨ã Queue éåé éåè½è¢«ç¨äºå¤ä¸ªçå¹¶åä»»å¡çå·¥ä½éåéï¼ å¦æè¢«è°ç¨çæ¬¡æ°å¤äºæ¾å¥éåä¸­çé¡¹ç®æ°éï¼å°å¼å :exc:`ValueError` ã ä»éåä¸­å é¤å¹¶è¿åä¸ä¸ªåç´ ãå¦æéåä¸ºç©ºï¼åç­å¾ï¼ç´å°éåä¸­æåç´ ã ç§»é¤äº *loop* å½¢åã å¦æéåä¸ºç©ºè¿å ``True`` ï¼å¦åè¿å ``False`` ã å¦ææ :attr:`maxsize` ä¸ªæ¡ç®å¨éåä¸­ï¼åè¿å ``True``Â ã ç«å³è¿åä¸ä¸ªéåä¸­çåç´ ï¼å¦æéååæå¼ï¼å¦åå¼åå¼å¸¸  :exc:`QueueEmpty` ã è¿åéåç¨çåç´ æ°éã åè§ä¸é¢ç `Examples`_ é¨åã å½æ¡ç®æ·»å å°éåçæ¶åï¼æªå®æä»»å¡çè®¡æ°å°±ä¼å¢å ãæ¯å½æ¶è´¹åç¨è°ç¨ :meth:`task_done` è¡¨ç¤ºè¿ä¸ªæ¡ç®å·²ç»è¢«åæ¶ï¼è¯¥æ¡ç®ææå·¥ä½å·²ç»å®æï¼æªå®æè®¡æ°å°±ä¼åå°ãå½æªå®æè®¡æ°éå°é¶çæ¶åï¼ :meth:`join` é»å¡è¢«è§£é¤ã è¿ä¸ªç±»ä¸æ¯çº¿ç¨å®å¨çï¼:ref:`not thread safe <asyncio-multithreading>`ï¼ã å½éåä¸ºç©ºçæ¶åï¼è°ç¨ :meth:`~Queue.get_nowait` æ¹æ³èå¼åè¿ä¸ªå¼å¸¸ã ä¸åæ ååºä¸­çå¹¶åå :mod:`queue` ï¼éåçå°ºå¯¸ä¸ç´æ¯å·²ç¥çï¼å¯ä»¥éè¿è°ç¨ :meth:`qsize` æ¹æ³è¿åã ç±éåä½¿ç¨èæ§å¶ãæ¯ä¸ª :meth:`~Queue.get` ç¨äºè·åä¸ä¸ªä»»å¡ï¼ä»»å¡æåè°ç¨ :meth:`task_done` åè¯éåï¼è¿ä¸ªä»»å¡å·²ç»å®æã asyncio éåè¢«è®¾è®¡æä¸ :mod:`queue` æ¨¡åç±»ä¼¼ãå°½ç®¡ asyncioéåä¸æ¯çº¿ç¨å®å¨çï¼ä½æ¯ä»ä»¬æ¯è¢«è®¾è®¡ä¸ç¨äº async/await ä»£ç ã 