Þ          Ì               |  #   }     ¡     ®    L  Ø   O  Ù   (  Ú     ±   Ý  ¤     ¿   4  ,   ô  N   !  7   p  É   ¨  ®   r	  y   !
  Ó   
  Y   o     É     Î     Ú  ¿  á  &   ¡     È  p   Õ  â   F  Ï   )  Ê   ù  Ê   Ä  ­        =  ¤   Ô  $   y  ^     9   ý  ¢   7  ±   Ú  R     ­   ß  W        å     ô        Added ``exceptiontable`` parameter. Code Objects Code objects are a low-level detail of the CPython implementation. Each one represents a chunk of executable code that hasn't yet been bound into a function. Equivalent to the Python code ``getattr(co, 'co_cellvars')``. Returns a new reference to a :c:type:`PyTupleObject` containing the names of the local variables that are referenced by nested functions. On error, ``NULL`` is returned and an exception is raised. Equivalent to the Python code ``getattr(co, 'co_code')``. Returns a strong reference to a :c:type:`PyBytesObject` representing the bytecode in a code object. On error, ``NULL`` is returned and an exception is raised. Equivalent to the Python code ``getattr(co, 'co_freevars')``. Returns a new reference to a :c:type:`PyTupleObject` containing the names of the free variables. On error, ``NULL`` is returned and an exception is raised. Equivalent to the Python code ``getattr(co, 'co_varnames')``. Returns a new reference to a :c:type:`PyTupleObject` containing the names of the local variables. On error, ``NULL`` is returned and an exception is raised. For efficiently iterating over the line numbers in a code object, use `the API described in PEP 626 <https://peps.python.org/pep-0626/#out-of-process-debuggers-and-profilers>`_. Return a new empty code object with the specified filename, function name, and first line number. The resulting code object will raise an ``Exception`` if executed. Return the line number of the instruction that occurs on or before ``byte_offset`` and ends after it. If you just need the line number of a frame, use :c:func:`PyFrame_GetLineNumber` instead. Return the number of free variables in *co*. Return true if *co* is a :class:`code` object.  This function always succeeds. Returns ``1`` if the function succeeds and 0 otherwise. Sets the passed ``int`` pointers to the source code line and column numbers for the instruction at ``byte_offset``. Sets the value to ``0`` when information is not available for any particular element. Similar to :c:func:`PyCode_New`, but with an extra "posonlyargcount" for positional-only arguments. The same caveats that apply to ``PyCode_New`` also apply to this function. The C structure of the objects used to describe code objects.  The fields of this type are subject to change at any time. This ``PyBytesObject`` may be created on-demand by the interpreter and does not necessarily represent the bytecode actually executed by CPython. The primary use case for this function is debuggers and profilers. This is an instance of :c:type:`PyTypeObject` representing the Python :class:`code` type. code code object object Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 æ·»å äº ``exceptiontable`` å½¢åã ä»£ç å¯¹è±¡ ä»£ç å¯¹è±¡æ¯ CPython å®ç°çä½çº§ç»èã æ¯ä¸ªä»£è¡¨ä¸åå°æªç»å®å°å½æ°ä¸­çå¯æ§è¡ä»£ç ã ç­ä»·äº Python ä»£ç  ``getattr(co, 'co_cellvars')``ã è¿åä¸ä¸ªåå«è¢«åµå¥çå½æ°æå¼ç¨çå±é¨åéåç§°ç :c:type:`PyTupleObject` çæ°å¼ç¨ã å½åºéæ¶ï¼å°è¿å ``NULL`` å¹¶å¼åä¸ä¸ªå¼å¸¸ã ç­ä»·äº Python ä»£ç  ``getattr(co, 'co_code')``ã è¿åä¸ä¸ªæåè¡¨ç¤ºä»£ç å¯¹è±¡ä¸­çå­èç ç :c:type:`PyBytesObject` çå¼ºå¼ç¨ã å½åºéæ¶ï¼å°è¿å ``NULL`` å¹¶å¼åä¸ä¸ªå¼å¸¸ã ç­ä»·äº Python ä»£ç  ``getattr(co, 'co_freevars')``ã è¿åä¸ä¸ªæååå«èªç±åéåç§°ç :c:type:`PyTupleObject` çæ°å¼ç¨ã å½åºéæ¶ï¼å°è¿å ``NULL`` å¹¶å¼åä¸ä¸ªå¼å¸¸ã ç­ä»·äº Python ä»£ç  ``getattr(co, 'co_varnames')``ã è¿åä¸ä¸ªæååå«å±é¨åéåç§°ç :c:type:`PyTupleObject` çæ°å¼ç¨ã å½åºéæ¶ï¼å°è¿å ``NULL`` å¹¶å¼åä¸ä¸ªå¼å¸¸ã è¦é«æå°å¯¹ä»£ç å¯¹è±¡ä¸­çè¡å·è¿è¡è¿­ä»£ï¼è¯·ä½¿ç¨ `å¨ PEP 626 ä¸­æè¿°ç API <https://peps.python.org/pep-0626/#out-of-process-debuggers-and-profilers>`_ã è¿åä¸ä¸ªå·ææå®ç¨æ·åãå½æ°ååé¦è¡è¡å·çç©ºä»£ç å¯¹è±¡ã ç»æä»£ç å¯¹è±¡å¦æè¢«æ§è¡åå°å¼åä¸ä¸ª ``Exception``ã è¿åå¨ ``byte_offset`` ä½ç½®æä¹åä»¥åä¹ååççæä»¤çè¡å·ã å¦æä½ åªéè¦ä¸ä¸ªå¸§çè¡å·ï¼è¯·æ¹ç¨ :c:func:`PyFrame_GetLineNumber`ã è¿å *co* ä¸­çèªç±åéæ°ã å¦æ *co* æ¯ä¸ä¸ª :class:`code` å¯¹è±¡åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å¦æå½æ°æ§è¡æååè¿å ``1`` å¦åè¿å 0ã å°ä¼ å¥ç ``int`` æéè®¾ä¸º ``byte_offset`` å¤çæä»¤çæºä»£ç è¡ç¼å·ååç¼å·ã å½æ²¡æä»»ä½ç¹å®åç´ çä¿¡æ¯æ¶åå°å¼è®¾ä¸º ``0``ã ä¸ :c:func:`PyCode_New` ç±»ä¼¼ï¼ä½è¿æä¸ä¸ªéå¯¹ä»éä½ç½®åæ°çé¢å¤ç "posonlyargcount"ã éç¨äº ``PyCode_New`` çæ³¨æäºé¡¹åæ ·éç¨äºè¿ä¸ªå½æ°ã ç¨äºæè¿°ä»£ç å¯¹è±¡çå¯¹è±¡ç C ç»æã æ­¤ç±»åå­æ®µå¯éæ¶æ´æ¹ã è¿ä¸ª ``PyBytesObject`` å¯ä»¥ç±è§£éå¨æéåå»ºå¹¶ä¸ä¸å¿ä»£è¡¨ CPython æå®éæ§è¡çå­èç ã æ­¤å½æ°çä¸»è¦ç¨éæ¯è°è¯å¨åæ§è½åæå·¥å·ã è¿æ¯ä¸ä¸ª :c:type:`PyTypeObject` å®ä¾ï¼å¶è¡¨ç¤ºPythonç :class:`code` ç±»åã code -- ä»£ç  ä»£ç å¯¹è±¡ object -- å¯¹è±¡ 