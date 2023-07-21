Þ          Ü                 ³     I  Q         .     È  :  Ø       }   +  å   ©         *	     G
  !   [
     }
  ^    £  u       ¹   1  #   ë       ö     ï        y  ¿    °   Ç  0  x     ©  {  5     ±  +  Ä     ð  n     é   t     ^  ð   û     ì      þ       O  ¡    ñ     w  Å     '   M   r   u     è   æ   î!     Õ"   All functions in the Stable ABI are present as functions in Python's shared library, not solely as macros. This makes them usable from languages that don't use the C preprocessor. Also note that the Limited API is not necessarily stable: compiling with ``Py_LIMITED_API`` with Python 3.8 means that the extension will run with Python 3.12, but it will not necessarily *compile* with Python 3.12. In particular, parts of the Limited API may be deprecated and removed, provided that the Stable ABI stays stable. Another issue is that some struct fields are currently not hidden when ``Py_LIMITED_API`` is defined, even though they're part of the Limited API. By leaving out the ``Py_LIMITED_API`` definition, it is possible to compile a Limited API extension with a version-specific ABI. This can improve performance for that Python version, but will limit compatibility. Compiling with ``Py_LIMITED_API`` will then yield an extension that can be distributed where a version-specific one is not available â for example, for prereleases of an upcoming Python version. C API Stability CPython's Application Binary Interface (ABI) is forward- and backwards-compatible across a minor release (if these are compiled the same way; see :ref:`stable-abi-platform` below). So, code compiled for Python 3.10.0 will work on 3.10.8 and vice versa, but will need to be compiled separately for 3.9.x and 3.10.x. Contents of Limited API Define this macro before including ``Python.h`` to opt in to only use the Limited API, and to select the Limited API version. For example, while :c:func:`PyList_GetItem` is available, its âunsafeâ macro variant :c:func:`PyList_GET_ITEM` is not. The macro can be faster because it can rely on version-specific implementation details of the list object. For these reasons, we recommend testing an extension with *all* minor Python versions it supports, and preferably to build with the *lowest* such version. It is the responsibility of each particular distributor of Python to ensure that all Python versions on a particular platform are built in a way that does not break the Stable ABI. This is the case with Windows and macOS releases from ``python.org`` and many third-party distributors. Limited API Caveats Limited API Scope and Performance On Windows, extensions that use the Stable ABI should be linked against ``python3.dll`` rather than a version-specific library such as ``python39.dll``. On some platforms, Python will look for and load shared library files named with the ``abi3`` tag (e.g. ``mymodule.abi3.so``). It does not check if such extensions conform to a Stable ABI. The user (or their packaging tools) need to ensure that, for example, extensions built with the 3.10+ Limited API are not installed for lower versions of Python. One issue that ``Py_LIMITED_API`` does not guard against is calling a function with arguments that are invalid in a lower Python version. For example, consider a function that starts accepting ``NULL`` for an argument. In Python 3.9, ``NULL`` now selects a default behavior, but in Python 3.8, the argument will be used directly, causing a ``NULL`` dereference and crash. A similar argument works for fields of structs. Platform Considerations Rather than using the ``PY_VERSION_HEX`` macro directly, hardcode a minimum minor version (e.g. ``0x030A0000`` for Python 3.10) for stability when compiling with future Python versions. Stable Application Binary Interface The goal for the Limited API is to allow everything that is possible with the full C API, but possibly with a performance penalty. We also recommend reviewing documentation of all used API to check if it is explicitly part of the Limited API. Even with ``Py_LIMITED_API`` defined, a few private declarations are exposed for technical reasons (or even unintentionally, as bugs). Without ``Py_LIMITED_API`` defined, some C API functions are inlined or replaced by macros. Defining ``Py_LIMITED_API`` disables this inlining, allowing stability as Python's data structures are improved, but possibly reducing performance. You can also define ``Py_LIMITED_API`` to ``3``. This works the same as ``0x03020000`` (Python 3.2, the version that introduced Limited API). Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 ç¨³å® ABI ä¸­çææå½æ°é½ä¼ä½ä¸º Python çå±äº«åºä¸­çå½æ°å­å¨ï¼èä¸ä»æ¯ä½ä¸ºå®ã è¿ä½¿å¾å®ä»¬å¯ä»¥å¨ä¸ä½¿ç¨ C é¢å¤çå¨çè¯­è¨ä¸­ä½¿ç¨ã è¿è¦æ³¨æåé API å¹¶ä¸å¿ç¶æ¯ç¨³å®çï¼å¨ Python 3.8 ä¸ç¨ ``Py_LIMITED_API`` ç¼è¯æ©å±æå³çè¯¥æ©å±è½å¨ Python 3.12 ä¸è¿è¡ï¼ä½å®å°ä¸ä¸å®è½ç¨ Python 3.12 *ç¼è¯*ã ç¹å«å°ï¼å¨ç¨³å® ABI ä¿æç¨³å®çæåµä¸ï¼é¨ååé API å¯è½ä¼è¢«å¼ç¨å¹¶è¢«ç§»é¤ã å¦ä¸ä¸ªé®é¢æ¯å½å®ä¹äº ``Py_LIMITED_API`` æ¶æäºç»æä½å­æ®µç®åä¸ä¼è¢«éèï¼å³ä½¿å®ä»¬æ¯åé API çä¸é¨åã éè¿çç¥ ``Py_LIMITED_API`` å®ä¹ï¼å¯ä»¥ä½¿åºäºçæ¬ä¸å±ç ABI æ¥ç¼è¯åé API æ©å±æä¸ºå¯è½ã è¿è½æåå¶å¨ç¸åº Python çæ¬ä¸çæ§è½ï¼ä½ä¹å°éå¶å¶å¼å®¹æ§ã åºäº ``Py_LIMITED_API`` è¿è¡ç¼è¯å°äº§çä¸ä¸ªå¯å¨çæ¬ä¸å±æ©å±ä¸å¯ç¨çåºåååçæ©å± â ä¾å¦ï¼éå¯¹å³å°åå¸ç Python çæ¬çé¢åå¸åã C API çç¨³å®æ§ CPython çåºç¨äºè¿å¶æ¥å£ï¼ABIï¼å¯ä»¥è·¨å°çæ¬å®ç°ååå¼å®¹ï¼åªè¦ä»¥åæ ·æ¹å¼ç¼è¯ï¼åè§ä¸é¢ç :ref:`stable-abi-platform` ï¼ãå æ­¤ï¼ç¨ Python 3.10.0 ç¼è¯çä»£ç å¯ä»¥å¨ 3.10.8 ä¸è¿è¡ï¼åä¹äº¦ç¶ï¼ä½éå¯¹ 3.9.x å 3.10.x åéåå«è¿è¡ç¼è¯ã åé API çåå®¹ è¯·å¨åæ¬ ``Python.h`` ä¹åå®ä¹è¿ä¸ªå®ä»¥éæ©åªä½¿ç¨åé APIï¼å¹¶éæ©åé API ççæ¬ã ä¾å¦ï¼è½ç¶ :c:func:`PyList_GetItem` æ¯å¯ç¨çï¼ä½å¶ âä¸å®å¨çâ å®çæ¬ :c:func:`PyList_GET_ITEM` åæ¯ä¸å¯ç¨çã è¿ä¸ªå®çè¿è¡éåº¦æ´å¿«å ä¸ºå®å¯ä»¥å©ç¨çæ¬ä¸å±çåè¡¨å¯¹è±¡å®ç°ç»èã åºäºè¿äºåå ï¼æä»¬å»ºè®®ç¨è¦æ¯æç *ææ* Python å°çæ¬å·æ¥æµè¯ä¸ä¸ªæ©å±ï¼å¹¶æå¥½æ¯ç¨å¶ä¸­ *æä½* ççæ¬æ¥ç¼è¯å®ã ç¡®ä¿å¨ç¹å®å¹³å°ä¸çææ Python çæ¬é½ä»¥ä¸ç ´åç¨³å® ABI çæ¹å¼æå»ºæ¯æ¯ä¸ªç¹å® Python ååæ¹çè´£ä»»ã æ¥èª ``python.org`` ä»¥åè®¸å¤ç¬¬ä¸æ¹åååç Windows å macOS åå¸çé½å¿äºè¿ç§æåµã åé API è­¦ç¤º åé API çä½ç¨ååæ§è½ å¨ Windows ä¸ï¼ä½¿ç¨ç¨³å® ABI çæ©å±åºå½è¢«é¾æ¥å° ``python3.dll`` èä¸æ¯çæ¬ä¸å±çåºå¦ ``python39.dll``ã å¨æäºå¹³å°ä¸ï¼Python å°æ¥æ¾å¹¶è½½å¥åç§°ä¸­å¸¦æ ``abi3`` æ ç­¾çå±äº«åºæä»¶ (ä¾å¦ ``mymodule.abi3.so``)ã å®ä¸ä¼æ£æ¥è¿æ ·çæ©å±æ¯å¦å¼å®¹ç¨³å® ABIã ä½¿ç¨æ¹ (æå¶æåå·¥å·) éè¦ç¡®ä¿è¿ä¸äºï¼ä¾å¦ï¼åºäº 3.10+ åé API ç¼è¯çæ©å±ä¸å¯è¢«å®è£äºæ´ä½çæ¬ç Python ä¸­ã ``Py_LIMITED_API`` ä¸è½å¤ççä¸ä¸ªé®é¢æ¯éå¸¦å¨è¾ä½ Python çæ¬ä¸­æ æçåæ°è°ç¨æä¸ªå½æ°ã ä¾å¦ï¼èèä¸ä¸ªæ¥å ``NULL`` ä½ä¸ºåæ°çå½æ°ã å¨ Python 3.9 ä¸­ï¼``NULL`` ç°å¨ä¼éæ©ä¸ä¸ªé»è®¤è¡ä¸ºï¼ä½å¨ Python 3.8 ä¸­ï¼è¯¥åæ°å°è¢«ç´æ¥ä½¿ç¨ï¼å¯¼è´ä¸ä¸ª ``NULL`` å¼ç¨è¢«å´©æºã ç±»ä¼¼çåæ°ä¹éç¨äºç»æä½çå­æ®µã å¹³å°çèè ä¸ç´æ¥ä½¿ç¨ ``PY_VERSION_HEX`` å®ï¼èæ¯ç¢ç¼ç ä¸ä¸ªæå°çæ¬¡è¦çæ¬ï¼ä¾å¦ ``0x030A0000`` è¡¨ç¤º Python 3.10ï¼ä»¥ä¾¿å¨ä½¿ç¨æªæ¥ç Python çæ¬è¿è¡ç¼è¯æ¶ä¿æç¨³å®ã åºç¨ç¨åºäºè¿å¶æ¥å£çç¨³å®ç åé API çç®æ æ¯åè®¸ä½¿ç¨å¨å®æ´ C API ä¸­å¯ç¨çä»»ä½ä¸è¥¿ï¼ä½å¯è½ä¼ææ§è½ä¸çæå¤±ã æä»¬è¿å»ºè®®æ¥çæä½¿ç¨ API çå¨é¨ææ¡£ä»¥æ£æ¥å¶æ¯å¦æ¾å¼ææä¸ºåé API çä¸é¨åã å³ä½¿å®ä¹äº ``Py_LIMITED_API``ï¼å°æ°ç§æå£°æè¿æ¯ä¼åºäºææ¯åå ï¼æèçè³æ¯ä½ä¸ºç¨åºç¼ºé·å¨æ æä¸­ï¼è¢«æ´é²åºæ¥ã å¨æªå®ä¹ ``Py_LIMITED_API`` çæåµä¸ï¼æäº C API å½æ°å°ç±å®æ¥æ§è¡åèææ¿æ¢ã å®ä¹ ``Py_LIMITED_API`` ä¼ç¦ç¨è¿æ ·çåèï¼åè®¸æå Python çæ°æ®ç»æç¨³å®æ§ï¼ä½æå¯è½éä½æ§è½ã ä½ è¿å¯ä»¥å° ``Py_LIMITED_API`` å®ä¹ä¸º ``3``ã å¶ææä¸ ``0x03020000`` ç¸åï¼å³ Python 3.2ï¼å¼å¥åé API ççæ¬ï¼ã 