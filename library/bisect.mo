Þ          ô               Ì  (   Í  Ø   ö  +   Ï     û  v               "   0  W   S  °  «     \     n       f     y   ~  ¿   ø    ¸  2  É	  ê   ü
  %   ç  Ü    Æ   ê  Ç   ±     y  ^        c  ¿    (   Á  ²   ê  *        È  p   â     S     Z  1   ç  J     }  d     â     ï       m     {   ô     p      1    Õ   B       Ã  1  ¿   õ  À   µ     v  ]          ^    **Source code:** :source:`Lib/bisect.py` *key* specifies a :term:`key function` of one argument that is used to extract a comparison key from each element in the array.  To support searching complex records, the key function is not applied to the *x* value. :mod:`bisect` --- Array bisection algorithm Added the *key* parameter. Bisection is effective for searching ranges of values. For locating specific values, dictionaries are more performant. Examples If the key function is expensive, it is possible to avoid repeated function calls by searching a list of precomputed keys to find the index of a record:: Insert *x* in *a* in sorted order. Keep in mind that the ``O(log n)`` search is dominated by the slow O(n) insertion step. Locate the insertion point for *x* in *a* to maintain sorted order. The parameters *lo* and *hi* may be used to specify a subset of the list which should be considered; by default the entire list is used.  If *x* is already present in *a*, the insertion point will be before (to the left of) any existing entries.  The return value is suitable for use as the first parameter to ``list.insert()`` assuming that *a* is already sorted. Performance Notes Searching Sorted Lists Similar to :py:func:`~bisect.bisect_left`, but returns an insertion point which comes after (to the right of) any existing entries of *x* in *a*. Similar to :py:func:`~bisect.insort_left`, but inserting *x* in *a* after any existing entries of *x*. The *insort()* functions are ``O(n)`` because the logarithmic search step is dominated by the linear time insertion step. The :py:func:`~bisect.bisect` and :py:func:`~bisect.insort` functions also work with lists of tuples.  The *key* argument can serve to extract the field used for ordering records in a table:: The :py:func:`~bisect.bisect` function can be useful for numeric table lookups. This example uses :py:func:`~bisect.bisect` to look up a letter grade for an exam score (say) based on a set of ordered numeric breakpoints: 90 and up is an 'A', 80 to 89 is a 'B', and so on:: The `SortedCollection recipe <https://code.activestate.com/recipes/577197-sortedcollection/>`_ uses bisect to build a full-featured collection class with straight-forward search methods and support for a key-function.  The keys are precomputed to save unnecessary calls to the key function during searches. The above `bisect functions`_ are useful for finding insertion points but can be tricky or awkward to use for common searching tasks. The following five functions show how to transform them into the standard lookups for sorted lists:: The following functions are provided: The search functions are stateless and discard key function results after they are used.  Consequently, if the search functions are used in a loop, the key function may be called again and again on the same array elements. If the key function isn't fast, consider wrapping it with :py:func:`functools.cache` to avoid duplicate computations.  Alternatively, consider searching an array of precomputed keys to locate the insertion point (as shown in the examples section below). This function first runs :py:func:`~bisect.bisect_left` to locate an insertion point. Next, it runs the :meth:`insert` method on *a* to insert *x* at the appropriate position to maintain sort order. This function first runs :py:func:`~bisect.bisect_right` to locate an insertion point. Next, it runs the :meth:`insert` method on *a* to insert *x* at the appropriate position to maintain sort order. To support inserting records in a table, the *key* function (if any) is applied to *x* for the search step but not for the insertion step. When writing time sensitive code using *bisect()* and *insort()*, keep these thoughts in mind: `Sorted Collections <https://grantjenks.com/docs/sortedcollections/>`_ is a high performance module that uses *bisect* to managed sorted collections of data. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 00:56+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç ï¼** :source:`Lib/bisect.py` *key* æå®å¸¦æåä¸ªåæ°ç :term:`key function` ç¨æ¥ä»æ°ç»çæ¯ä¸ªåç´ ä¸­æåæ¯è¾é®ã ä¸ºäºæ¯ææç´¢å¤æè®°å½ï¼é®å½æ°ä¸ä¼è¢«åºç¨å° *x* å¼ã :mod:`bisect` --- æ°ç»äºåæ¥æ¾ç®æ³ å¢å äº *key* å½¢åã äºåæ³å¯¹äºæç´¢ä¸å®èå´çå¼æ¯å¾é«æçã å¯¹äºå®ä½ç¹å®çå¼ï¼åå­å¸çæ§è½æ´å¥½ã ä¾å­ å¦æé®å½æ°è¾ä¸ºæ¶èèµæºï¼å¯ä»¥éè¿æç´¢ä¸ä¸ªé¢åè®¡ç®çé®åè¡¨æ¥æ¥æ¾è®°å½çç´¢å¼ä»¥é¿åéå¤çå½æ°è°ç¨:: æç§å·²æåºé¡ºåºå° *x* æå¥å° *a* ä¸­ã è¯·è®°ä½ ``O(log n)`` æç´¢æ¯ç±ç¼æ¢ç O(n) æå¥æ­¥éª¤ä¸»å¯¼çã å¨ *a* ä¸­æ¾å° *x* åéçæå¥ç¹ä»¥ç»´ææåºãåæ° *lo* å *hi* å¯ä»¥è¢«ç¨äºç¡®å®éè¦èèçå­éï¼é»è®¤æåµä¸æ´ä¸ªåè¡¨é½ä¼è¢«ä½¿ç¨ãå¦æ *x* å·²ç»å¨ *a* éå­å¨ï¼é£ä¹æå¥ç¹ä¼å¨å·²å­å¨åç´ ä¹åï¼ä¹å°±æ¯å·¦è¾¹ï¼ãå¦æ *a* æ¯åè¡¨ï¼listï¼çè¯ï¼è¿åå¼æ¯å¯ä»¥è¢«æ¾å¨ ``list.insert()`` çç¬¬ä¸ä¸ªåæ°çã æ§è½è¯´æ æç´¢æåºåè¡¨ ç±»ä¼¼äº :py:func:`~bisect.bisect_left`ï¼ä½æ¯è¿åçæå¥ç¹æ¯å¨ *a* ä¸­ä»»ä½ç°ææ¡ç® *x* ä¹åï¼å³å¶å³ä¾§ï¼ã ç±»ä¼¼äº :py:func:`~bisect.insort_left`ï¼ä½æ¯ä¼æ *x* æå¥å° *a* ä¸­ä»»ä½ç°ææ¡ç® *x* ä¹åã *insort()* å½æ°çæ¶é´å¤æåº¦ä¸º ``O(n)`` å ä¸ºå¯¹æ°æ¶é´çæç´¢æ­¥éª¤è¢«çº¿æ§æ¶é´çæå¥æ­¥éª¤æä¸»å¯¼ã :py:func:`~bisect.bisect` å :py:func:`~bisect.insort` å¯¹äºåè¡¨ååç»ä¹æ¯éç¨çã *key* åæ°å¯ä»¥æåç¨äºè¡¨ä¸­è®°å½æåºçå­æ®µ:: :py:func:`~bisect.bisect` å½æ°å¯¹äºæ°å­è¡¨æ¥è¯¢ä¹æ¯éç¨çã è¿ä¸ªä¾å­ä½¿ç¨ :py:func:`~bisect.bisect` æ ¹æ®ä¸ç»æåºçæ°å­ååç¹æ¥æ¥æ¾èè¯æç»©å¯¹åºçå­æ¯ç­çº§: (å¦) 90 åä»¥ä¸ä¸º 'A'ï¼80 è³ 89 ä¸º 'B'ï¼ä¾æ­¤ç±»æ¨:: `SortedCollection recipe <https://code.activestate.com/recipes/577197-sortedcollection/>`_ ä½¿ç¨ bisect æå»ºäºä¸ä¸ªåè½å®æ´çå¤é¡¹éç±»ï¼æ¥æç´è§çæç´¢æ¹æ³åå¯¹é®å½æ°çæ¯æã ææé®å½æ°é½ æ¯é¢åè®¡ç®å¥½çä»¥é¿åå¨æç´¢æé´å¯¹é®å½æ°çä¸å¿è¦çè°ç¨ã ä¸é¢ç `bisect functions`_ å¯¹äºæ¾å°æå¥ç¹æ¯æç¨çï¼ä½å¨ä¸è¬çæç´¢ä»»å¡ä¸­å¯è½ä¼æç¹å°´å°¬ã ä¸é¢çäºä¸ªå½æ°å±ç¤ºäºå¦ä½å°å¶è½¬æ¢ä¸ºéå¯¹æåºåè¡¨çæ åæ¥æ¾å½æ°:: å®ä¹äºä»¥ä¸å½æ°ï¼ è¿äºæç´¢å½æ°é½æ¯æ ç¶æçå¹¶ä¸ä¼å¨å®ä»¬è¢«ä½¿ç¨åä¸¢å¼é®å½æ°çç»æã å æ­¤ï¼å¦æå¨ä¸ä¸ªå¾ªç¯ä¸­ä½¿ç¨æç´¢å½æ°ï¼åé®å½æ°å¯è½ä¼å¨åä¸ä¸ªæ°æ®åç´ ä¸è¢«åå¤è°ç¨ã å¦æé®å½æ°éåº¦ä¸å¤å¿«ï¼è¯·èèç¨ :py:func:`functools.cache` æ¥åè£å®ä»¥é¿åéå¤è®¡ç®ã å¦å¤ï¼ä¹å¯ä»¥èèæç´¢ä¸ä¸ªé¢åè®¡ç®å¥½çé®æ°ç»æ¥å®ä½æå¥ç¹ï¼å¦ä¸é¢çç¤ºä¾å°èææ¼ç¤ºçï¼ã æ­¤å½æ°é¦åä¼è¿è¡ :py:func:`~bisect.bisect_left` æ¥å®ä½ä¸ä¸ªæå¥ç¹ã ç¶åï¼å®ä¼å¨ *a* ä¸è¿è¡ :meth:`insert` æ¹æ³å¨éå½çä½ç½®æå¥ *x* ä»¥ä¿ææåºé¡ºåºã æ­¤å½æ°é¦åä¼è¿è¡ :py:func:`~bisect.bisect_right` æ¥å®ä½ä¸ä¸ªæå¥ç¹ã ç¶åï¼å®ä¼å¨ *a* ä¸è¿è¡ :meth:`insert` æ¹æ³å¨éå½çä½ç½®æå¥ *x* ä»¥ä¿ææåºé¡ºåºã ä¸ºäºæ¯æå°è®°å½æå¥å°è¡¨ä¸­ï¼*key* å½æ°ï¼å¦æå­å¨ï¼å°è¢«åºç¨å° *x* ç¨äºæç´¢æ­¥éª¤ä½ä¸ä¼ç¨äºæå¥æ­¥éª¤ã å½ä½¿ç¨ *bisect()* å *insort()* ç¼åæ¶é´ææçä»£ç æ¶ï¼è¯·è®°ä½ä»¥ä¸æ¦å¿µã `Sorted Collections <https://grantjenks.com/docs/sortedcollections/>`_ æ¯ä¸ä¸ªä½¿ç¨ *bisect* æ¥ç®¡çæ°æ®çå·²æåºå¤é¡¹éçé«æ§è½æ¨¡åã 