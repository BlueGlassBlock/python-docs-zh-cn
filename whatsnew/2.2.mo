Þ    :      ì              ¼  -   ½  5   ë  <   !  %   ^  0        µ  2   Ô               &     7     >  T   J  >     5   Þ          2  K   ?  ¥     &   1     X     q  p       ö
          %  ,   8     e  (     _   ©     	  >     H   V  D     >   ä  %   #     I  "  É  F   ì  b   3  °     >  G       D   "  K   g  I   ³     ý  )     c   @  P   ¤  U   õ     K  W   d  I   ¼  Q     E   X  :     ¿  Ù  .     2   È  L   û  "   H  %   k       .   ®     Ý     ë     ò     ÿ  	     F     :   W  /        Â     Þ  O   å     5     Ñ     í              (     A     ]  !   p       '   ®  p   Ö     G   >   T   N      K   â   G   .!     v!     !  æ  "  4   $  V   7$  ¾   $    M%  «   Z&  ;   '  A   B'  K   '     Ð'  $   î'  b   (  L   v(  U   Ã(     )  Z   4)  F   )  H   Ö)  E   *  ?   e*   :attr:`__doc__` is the attribute's docstring. :attr:`~definition.__name__` is the attribute's name. :c:func:`PyObject_GC_Fini` to :c:func:`PyObject_GC_UnTrack`. :pep:`227` - Statically Nested Scopes :pep:`237` - Unifying Long Integers and Integers :pep:`255` - Simple Generators :pep:`261` - Support for 'wide' Unicode characters A.M. Kuchling Acknowledgements Attribute Access Author Descriptors For example, when you write ``obj.x``, the steps that Python actually performs are:: Here's a sample usage of the :func:`generate_ints` generator:: Here's the simplest example of a generator function:: Interpreter Changes and Fixes Introduction Large file support is now enabled on Windows.  (Contributed by Tim Peters.) Line 4 containing the ``exec`` statement is a syntax error, since ``exec`` would define a new local variable named ``x`` whose value should be accessed by :func:`g`. Multiple Inheritance: The Diamond Rule New and Improved Modules Old and New Classes One side effect of the change is that the ``from module import *`` and ``exec`` statements have been made illegal inside a function scope under certain conditions.  The Python reference manual has said all along that ``from module import *`` is only legal at the top level of a module, but the CPython interpreter has never enforced this before.  As part of the implementation of nested scopes, the compiler which turns Python source into bytecodes has to generate different code to access variables in a containing scope.  ``from module import *`` and ``exec`` make it impossible for the compiler to figure this out, because they add names to the local namespace that are unknowable at compile time. Therefore, if a function contains function definitions or :keyword:`lambda` expressions with free variables, the compiler will flag this by raising a :exc:`SyntaxError` exception. Other Changes and Fixes PEP 227: Nested Scopes PEP 234: Iterators PEP 237: Unifying Long Integers and Integers PEP 255: Simple Generators PEPs 252 and 253: Type and Class Changes Python 2.2 fixes this, and in the process adds some exciting new capabilities. A brief summary: Related Links Remove :c:func:`PyGC_HEAD_SIZE` from object size calculations. Remove calls to :c:func:`PyObject_AS_GC` and :c:func:`PyObject_FROM_GC`. Rename :c:func:`PyObject_GC_Init` to :c:func:`PyObject_GC_Track` and Rename :c:func:`Py_TPFLAGS_GC` to :c:func:`PyTPFLAGS_HAVE_GC`. Some of the more notable changes are: The :file:`Tools/scripts/ftpmirror.py` script now parses a :file:`.netrc` file, if you have one. (Contributed by Mike Romberg.) The author would like to thank the following people for offering suggestions, corrections and assistance with various drafts of this article: Fred Bremmer, Keith Briggs, Andrew Dalke, Fred L. Drake, Jr., Carel Fellinger, David Goodger, Mark Hammond, Stephen Hansen, Michael Hudson, Jack Jansen, Marc-AndrÃ© Lemburg, Martin von LÃ¶wis, Fredrik Lundh, Michael McLay, Nick Mathewson, Paul Moore, Gustavo Niemeyer, Don O'Donnell, Joonas Paalasma, Tim Peters, Jens Quade, Tom Reinhardt, Neil Schemenauer, Guido van Rossum, Greg Ward, Edward Welbourne. The original patch for this feature was contributed by Nick Mathewson. The readability of Python code written in a strongly functional style suffers greatly as a result. This article explains the new features in Python 2.2.2, released on October 14, 2002.  Python 2.2.2 is a bugfix release of Python 2.2, originally released on December 21, 2001. This change may cause some compatibility problems for code where the same variable name is used both at the module level and as a local variable within a function that contains further function definitions. This seems rather unlikely though, since such code would have been pretty confusing to read in the first place. This shouldn't be much of a limitation, since ``exec`` is rarely used in most Python code (and when it is used, it's often a sign of a poor design anyway). To make the preceding explanation a bit clearer, here's an example:: To upgrade an extension module to the new API, perform the following steps: Use :c:func:`PyObject_GC_New` or :c:func:`PyObject_GC_NewVar` to allocate What's New in Python 2.2 Written and implemented by Jeremy Hylton. Written by Ka-Ping Yee and GvR; implemented  by the Python Labs crew, mostly by GvR and Tim Peters. Written by Moshe Zadka and  Guido van Rossum.  Implemented by Guido van Rossum.. Written by Moshe Zadka and Guido van Rossum.  Implemented mostly by Guido van Rossum. Written by Paul Prescod. You could equally write ``for i in generate_ints(5)``, or ``a,b,c = generate_ints(3)``. ``__delete__(object, value)`` deletes the *value*  attribute of *object*. ``__get__(object)`` is a method that retrieves the attribute value from *object*. ``__set__(object, value)`` sets the attribute on *object* to *value*. objects, and :c:func:`PyObject_GC_Del` to deallocate them. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:51+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :attr:`__doc__` æ¯å±æ§çææ¡£å­ç¬¦ä¸²ã :attr:`~definition.__name__` æ¯å±æ§çåç§°ã å° :c:func:`PyObject_GC_Fini` éå½åä¸º :c:func:`PyObject_GC_UnTrack`ã :pep:`227` - éæåµå¥ä½ç¨å :pep:`237` - ç»ä¸é¿æ´æ°åæ´æ° :pep:`255` - ç®åçæå¨ :pep:`261` - å¯¹ 'å®½' Unicode å­ç¬¦çæ¯æ A.M. Kuchling è´è°¢ å±æ§è®¿é® ä½è æè¿°å¨ ä¾å¦ï¼å½ä½ åä¸ ``obj.x``ï¼Python å®éè¦æ§è¡çæ­¥éª¤æ¯:: è¿éæ¯ :func:`generate_ints` çæå¨çç¨æ³ç¤ºä¾:: è¿éæ¯ä¸ä¸ªçæå¨å½æ°çæç®ç¤ºä¾:: è§£éå¨çæ¹ååä¿®æ­£ æ¦è¿° å¤§æä»¶æ¯æç®åå·²å¨ Windows ä¸å¯ç¨ã ï¼ç± Tim Peters è´¡ç®ãï¼ åå« ``exec`` è¯­å¥çç¬¬ 4 è¡æè¯­æ³éè¯¯ï¼å ä¸º ``exec`` å°å®ä¹ä¸ä¸ªåä¸º ``x`` çæ°å±é¨åéï¼å®çå¼åºå½è¢« :func:`g` è®¿é®ã å¤éç»§æ¿ï¼é»ç³è§å æ°å¢åæ¹è¿çæ¨¡å æ§å¼ç±»åæ°å¼ç±» æ­¤é¡¹æ¹åçä¸ä¸ªéå¸¦å½±åæ¯å¨ç¹å®æ¡ä»¶ä¸å½æ°ä½ç¨ååé¨ ``from module import *`` å ``exec`` è¯­å¥å°ä¸åè®¸ä½¿ç¨ã Python åèæåå·²ç»åæ ``from module import *`` ä»å¨æ¨¡åæé«å±çº§ä¸æ¯å¯ç¨çï¼ä½æ­¤å CPython è§£éå¨ä»æªå¼ºå¶å®æ½æ­¤è§åã ä½ä¸ºåµå¥ä½ç¨åå·ä½å®ç°çä¸é¨åï¼å° Python æºç è½¬ä¸ºå­èç çç¼è¯å¨ä¼çæä¸åçä»£ç æ¥è®¿é®æä¸ªåå«ä½ç¨ååçåéã ``from module import *`` å ``exec`` ä¼ä½¿å¾ç¼è¯å¨æ æ³æ­£ç¡®æ§è¡ï¼å ä¸ºå®ä»¬ä¼åå±é¨å½åç©ºé´æ·»å å¨ç¼è¯æ¶è¿ä¸å­å¨çåç§°ã ä¸ºæ­¤ï¼å¦æä¸ä¸ªå½æ°åå«å¸¦æèªç±åéçå½æ°å®ä¹æ :keyword:`lambda` è¡¨è¾¾å¼ï¼ç¼è¯å¨å°éè¿å¼å :exc:`SyntaxError` å¼å¸¸æ¥æç¤ºã å¶ä»çæ¹ååä¿®æ­£ PEP 227: åµå¥çä½ç¨å PEP 234: è¿­ä»£å¨ PEP 237: ç»ä¸é¿æ´æ°åæ´æ° PEP 255: ç®åççæå¨ PEP 252 å 253ï¼ç±»ååç±»çä¿®æ¹ Python 2.2 ä¿®æ­£äºæ­¤é®é¢ï¼å¹¶å¨æ­¤è¿ç¨ä¸­æ·»å äºä¸äºä»¤äººæ¿å¨çæ°åè½ã ç®ææ¦è¿°å¦ä¸: ç¸å³é¾æ¥ å° :c:func:`PyGC_HEAD_SIZE` ä»å¯¹è±¡å¤§å°è®¡ç®ä¸­ç§»é¤ã ç§»é¤å¯¹ :c:func:`PyObject_AS_GC` å :c:func:`PyObject_FROM_GC` çè°ç¨ã å° :c:func:`PyObject_GC_Init` éå½åä¸º :c:func:`PyObject_GC_Track` å¹¶ å° :c:func:`Py_TPFLAGS_GC` éå½åä¸º :c:func:`PyTPFLAGS_HAVE_GC`ã ä¸äºè¾ä¸ºéè¦çæ¹å: :file:`Tools/scripts/ftpmirror.py` èæ¬ç°å¨ä¼è§£æ :file:`.netrc` æä»¶ï¼å¦æå­å¨çè¯ã ï¼ç± Mike Romberg è´¡ç®ãï¼ ä½èæè°¢ä»¥ä¸äººåä¸ºæ¬æçåç§èæ¡æä¾å»ºè®®ï¼æ´æ­£åå¸®å©ï¼ Fred Bremmer, Keith Briggs, Andrew Dalke, Fred L. Drake, Jr., Carel Fellinger, David Goodger, Mark Hammond, Stephen Hansen, Michael Hudson, Jack Jansen, Marc-AndrÃ© Lemburg, Martin von LÃ¶wis, Fredrik Lundh, Michael McLay, Nick Mathewson, Paul Moore, Gustavo Niemeyer, Don O'Donnell, Joonas Paalasma, Tim Peters, Jens Quade, Tom Reinhardt, Neil Schemenauer, Guido van Rossum, Greg Ward, Edward Welbourne. æ­¤ç¹æ§çåå§è¡¥ä¸ç± Nick Mathewson è´¡ç®ã ç»æå°ä¼ä¸¥éæå®³ä»¥é«åº¦å½æ°å¼é£æ ¼ç¼åç Python ä»£ç çå¯è¯»æ§ã æ¬ææ¬ä»ç»äº Python 2.2.2 çæ°å¢ç¹æ§ï¼è¯¥çæ¬åå¸äº 2002 å¹´ 10 æ 14æ¥ã Python 2.2.2 æ¯ Python 2.2 çé®é¢ä¿®æ­£åå¸çï¼æååå¸äº 2001 å¹´ 12 æ 21 æ¥ã å¯¹äºåæ¶å¨æ¨¡åå±çº§ååå«ä¸å±å½æ°å®ä¹çå½æ°åé¨å±é¨åéä½¿ç¨äºç¸ååéåçä»£ç æ¥è¯´è¿é¡¹æ¹åå¯è½ä¼å¯¼è´ä¸äºå¼å®¹æ§é®é¢ã ä¸è¿è¿çæ¥ä¸å¤ªå¯è½åçï¼å ä¸ºéè¯»è¿æ ·çä»£ç æ¬æ¥å°±ä¼ç¸å½ä»¤äººå°æã è¿åºè¯¥ä¸ä¼æ¯å¤ªå¤§çéå¶ï¼å ä¸º ``exec`` å¨å¤æ° Python ä»£ç ä¸­é½æå°è¢«ä½¿ç¨ï¼èå½å®è¢«ä½¿ç¨æ¶ï¼å¾å¾ä¹æ¯ä¸ªå­å¨ç³ç³è®¾è®¡çä¿¡å·ï¼ã ä¸ºäºä½¿åé¢çè§£éæ´æ¸æ¥ï¼ä¸é¢æ¯ä¸ä¸ªä¾å­:: è¦å°ä¸ä¸ªæ©å±æ¨¡ååçº§è³æ° APIï¼è¯·æ§è¡ä¸åæ­¥éª¤: ä½¿ç¨ :c:func:`PyObject_GC_New` æ :c:func:`PyObject_GC_NewVar` æ¥åé Python 2.2 æä»ä¹æ°åå ç± Jeremy Hylton æ°åå¹¶å®ç°ã ç± Ka-Ping Yee å GvR æ°åï¼ç± Python Labs å°ç»ï¼ä¸»è¦ç± GvR å Tim Petersï¼å®ç°ã ç± Moshe Zadka å Guido van Rossum æ°å ; ç± Guido van Rossum å®ç°ã ç± Moshe Zadka å Guido van Rossum æ°å ; å¤§é¨åç± Guido van Rossum å®ç°ã ç± Paul Prescod ç¼åã ä½ å¯ä»¥ç­ä»·å°åæ ``for i in generate_ints(5)`` æ ``a,b,c = generate_ints(3)``ã ``__delete__(object, value)`` å°å é¤ *object* ç *value* å±æ§ã ``__get__(object)`` æ¯ä¸ä¸ªä» *object* ä¸­æåå±æ§å¼çæ¹æ³ã ``__set__(object, value)`` å° *object* ä¸çå±æ§è®¾ä¸º *value*ã å¯¹è±¡ï¼å¹¶ä½¿ç¨ :c:func:`PyObject_GC_Del` æ¥éæ¾å®ä»¬ã 