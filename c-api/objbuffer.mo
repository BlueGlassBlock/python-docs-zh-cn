Þ    	      d               ¬   Ó   ­             7    ?  R      %  ²  y  Ø  ¿  R  ¿   
     Ò
  s   â
    V  $  o  ý         [      Note that this function tries to get and release a buffer, and exceptions which occur while calling corresponding functions will get suppressed. To get error reporting use :c:func:`PyObject_GetBuffer()` instead. Old Buffer Protocol Returns ``1`` if *o* supports the single-segment readable buffer interface. Otherwise returns ``0``.  This function always succeeds. Returns a pointer to a read-only memory location containing arbitrary data. The *obj* argument must support the single-segment readable buffer interface.  On success, returns ``0``, sets *buffer* to the memory location and *buffer_len* to the buffer length.  Returns ``-1`` and sets a :exc:`TypeError` on error. Returns a pointer to a read-only memory location usable as character-based input.  The *obj* argument must support the single-segment character buffer interface.  On success, returns ``0``, sets *buffer* to the memory location and *buffer_len* to the buffer length.  Returns ``-1`` and sets a :exc:`TypeError` on error. Returns a pointer to a writable memory location.  The *obj* argument must support the single-segment, character buffer interface.  On success, returns ``0``, sets *buffer* to the memory location and *buffer_len* to the buffer length.  Returns ``-1`` and sets a :exc:`TypeError` on error. Therefore, it is recommended that you call :c:func:`PyObject_GetBuffer` (or the ``y*`` or ``w*`` :ref:`format codes <arg-parsing>` with the :c:func:`PyArg_ParseTuple` family of functions) to get a buffer view over an object, and :c:func:`PyBuffer_Release` when the buffer view can be released. These functions were part of the "old buffer protocol" API in Python 2. In Python 3, this protocol doesn't exist anymore but the functions are still exposed to ease porting 2.x code.  They act as a compatibility wrapper around the :ref:`new buffer protocol <bufferobjects>`, but they don't give you control over the lifetime of the resources acquired when a buffer is exported. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-07-29 13:25+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 è¯·æ³¨ææ­¤å½æ°ä¼å°è¯è·åå¹¶éæ¾ä¸ä¸ªç¼å²åºï¼å¹¶ä¸å¨è°ç¨å¯¹åºå½æ°æé´åççå¼å¸¸ä¼è¢«å±è½ã è¦è·åéè¯¯æ¥åååºæ¹ç¨ :c:func:`PyObject_GetBuffer()`ã æ§ç¼å²åè®® å¦æ *o* æ¯æåæ®µå¯è¯»ç¼å²æ¥å£åè¿å ``1``ã å¦åè¿å ``0``ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã è¿åä¸ä¸ªæååå«ä»»ææ°æ®çåªè¯»åå­å°åçæéã *obj* åæ°å¿é¡»æ¯æåæ®µå¯è¯»ç¼å²æ¥å£ã æåæ¶è¿å ``0``ï¼å° *buffer* è®¾ä¸ºåå­å°åå¹¶å° *buffer_len* è®¾ä¸ºç¼å²åºé¿åº¦ã åºéæ¶è¿å ``-1`` å¹¶è®¾ç½®ä¸ä¸ª :exc:`TypeError`ã è¿åä¸ä¸ªæåå¯ç¨ä½åºäºå­ç¬¦çè¾å¥çåªè¯»åå­å°åçæéã *obj* åæ°å¿é¡»æ¯æåæ®µå­ç¬¦ç¼å²æ¥å£ã æåæ¶è¿å ``0``ï¼å° *buffer* è®¾ä¸ºåå­å°åå¹¶å° *buffer_len* è®¾ä¸ºç¼å²åºé¿åº¦ã åºéæ¶è¿å ``-1`` å¹¶è®¾ç½®ä¸ä¸ª :exc:`TypeError`ã è¿åä¸ä¸ªæåå¯ååå­å°åçæéã *obj* å¿é¡»æ¯æåæ®µå­ç¬¦ç¼å²æ¥å£ã æåæ¶è¿å ``0``ï¼å° *buffer* è®¾ä¸ºåå­å°åå¹¶å° *buffer_len* è®¾ä¸ºç¼å²åºé¿åº¦ã åºéæ¶è¿å ``-1`` å¹¶è®¾ç½®ä¸ä¸ª :exc:`TypeError`ã å æ­¤ï¼æ¨èä½ è°ç¨ :c:func:`PyObject_GetBuffer` (æèéå :c:func:`PyArg_ParseTuple` å½æ°æä½¿ç¨ ``y*`` æ ``w*`` :ref:`æ ¼å¼ç  <arg-parsing>`) æ¥è·åä¸ä¸ªå¯¹è±¡çç¼å²è§å¾ï¼å¹¶å¨ç¼å²è§å¾å¯è¢«éæ¾æ¶è°ç¨ :c:func:`PyBuffer_Release`ã è¿äºå½æ°æ¯ Python 2 ä¸­âæ§ç¼å²åè®®âAPI çç»æé¨åã å¨ Python 3 ä¸­ï¼æ­¤åè®®å·²ä¸å¤å­å¨ï¼ä½è¿äºå½æ°ä»ç¶è¢«å¬å¼ä»¥ä¾¿ç§»æ¤ 2.x çä»£ç ã å®ä»¬è¢«ç¨ä½ :ref:`æ°ç¼å²åè®® <bufferobjects>` çå¼å®¹æ§åè£å¨ï¼ä½å®ä»¬å¹¶ä¸ä¼å¨ç¼å²è¢«å¯¼åºæ¶åä½ æä¾å¯¹æè·èµæºççå½å¨ææ§å¶ã 