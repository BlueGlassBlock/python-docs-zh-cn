Þ          ä               ¬  v   ­  ã   $  ð     d   ù  8  ^  <     è   Ô  ©   ½  Ê  g     2	  B  Â	                >  P   _  M   °  Ä   þ    Ã     M  ½   ì  ¨   ª  ]   S     ±  r   D  ¿  ·  o   w  Ý   ç  Ù   Å  p     "    6   3  Ò   j  £   =  Õ  á     ·  0  E     v          ¤  E   À  E     º   L  i        q!  ¾   "  ¬   Â"  U   o#     Å#  l   G$   *flags* can be zero or more of the values ``Py_DTSF_SIGN``, ``Py_DTSF_ADD_DOT_0``, or ``Py_DTSF_ALT``, or-ed together: *format_code* must be one of ``'e'``, ``'E'``, ``'f'``, ``'F'``, ``'g'``, ``'G'`` or ``'r'``.  For ``'r'``, the supplied *precision* must be 0 and is ignored.  The ``'r'`` format code specifies the standard :func:`repr` format. :c:func:`PyOS_snprintf` and :c:func:`PyOS_vsnprintf` wrap the Standard C library functions :c:func:`snprintf` and :c:func:`vsnprintf`. Their purpose is to guarantee consistent behavior in corner cases, which the Standard C functions do not. Convert a :c:expr:`double` *val* to a string using supplied *format_code*, *precision*, and *flags*. Convert a string ``s`` to a :c:expr:`double`, raising a Python exception on failure.  The set of accepted strings corresponds to the set of strings accepted by Python's :func:`float` constructor, except that ``s`` must not have leading or trailing whitespace. The conversion is independent of the current locale. Functions for number conversion and formatted string output. If *ptype* is non-``NULL``, then the value it points to will be set to one of ``Py_DTST_FINITE``, ``Py_DTST_INFINITE``, or ``Py_DTST_NAN``, signifying that *val* is a finite number, an infinite number, or not a number, respectively. If ``endptr`` is ``NULL``, convert the whole string.  Raise :exc:`ValueError` and return ``-1.0`` if the string is not a valid representation of a floating-point number. If ``s`` represents a value that is too large to store in a float (for example, ``"1e500"`` is such a string on many platforms) then if ``overflow_exception`` is ``NULL`` return ``Py_HUGE_VAL`` (with an appropriate sign) and don't set any exception.  Otherwise, ``overflow_exception`` must point to a Python exception object; raise that exception and return ``-1.0``.  In both cases, set ``*endptr`` to point to the first character after the converted value. If any other error occurs during the conversion (for example an out-of-memory error), set the appropriate Python exception and return ``-1.0``. If endptr is not ``NULL``, convert as much of the string as possible and set ``*endptr`` to point to the first unconverted character.  If no initial segment of the string is the valid representation of a floating-point number, set ``*endptr`` to point to the beginning of the string, raise ValueError, and return ``-1.0``. Output not more than *size* bytes to *str* according to the format string *format* and the extra arguments. See the Unix man page :manpage:`snprintf(3)`. Output not more than *size* bytes to *str* according to the format string *format* and the variable argument list *va*. Unix man page :manpage:`vsnprintf(3)`. String conversion and formatting The following functions provide locale-independent string to number conversions. The return value (*rv*) for these functions should be interpreted as follows: The return value is a pointer to *buffer* with the converted string or ``NULL`` if the conversion failed. The caller is responsible for freeing the returned string by calling :c:func:`PyMem_Free`. The wrappers ensure that ``str[size-1]`` is always ``'\0'`` upon return. They never write more than *size* bytes (including the trailing ``'\0'``) into str. Both functions require that ``str != NULL``, ``size > 0``, ``format != NULL`` and ``size < INT_MAX``. Note that this means there is no equivalent to the C99 ``n = snprintf(NULL, 0, ...)`` which would determine the necessary buffer size. When ``0 <= rv < size``, the output conversion was successful and *rv* characters were written to *str* (excluding the trailing ``'\0'`` byte at ``str[rv]``). When ``rv < 0``, "something bad happened." ``str[size-1]`` is ``'\0'`` in this case too, but the rest of *str* is undefined. The exact cause of the error depends on the underlying platform. When ``rv >= size``, the output conversion was truncated and a buffer with ``rv + 1`` bytes would have been needed to succeed. ``str[size-1]`` is ``'\0'`` in this case. ``Py_DTSF_ADD_DOT_0`` means to ensure that the returned string will not look like an integer. ``Py_DTSF_ALT`` means to apply "alternate" formatting rules.  See the documentation for the :c:func:`PyOS_snprintf` ``'#'`` specifier for details. ``Py_DTSF_SIGN`` means to always precede the returned string with a sign character, even if *val* is non-negative. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-28 14:13+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 *flags* å¯ä»¥ä¸ºé¶æèå¶ä»å¼ ``Py_DTSF_SIGN``, ``Py_DTSF_ADD_DOT_0`` æ ``Py_DTSF_ALT`` æå¶ç»åï¼ *æ ¼å¼ç * å¿é¡»æ¯ä»¥ä¸å¶ä¸­ä¹ä¸, ``'e'``, ``'E'``, ``'f'``, ``'F'``, ``'g'``, ``'G'`` æè ``'r'``ãå¯¹äº ``'r'`` , æä¾ç *ç²¾åº¦* å¿é¡»æ¯0ã``'r'`` æ ¼å¼ç æå®äºæ åå½æ° :func:`repr` æ ¼å¼ã :c:func:`PyOS_snprintf` å :c:func:`PyOS_vsnprintf` åè£ C æ ååºå½æ° :c:func:`snprintf` å :c:func:`vsnprintf` ãå®ä»¬çç®çæ¯ä¿è¯å¨æç«¯æåµä¸çä¸è´è¡ä¸ºï¼èæ å C çå½æ°åä¸ç¶ã å° :c:expr:`double` *val* è½¬æ¢ä¸ºä¸ä¸ªä½¿ç¨ç»å®ç *format_code*, *precision* å *flags* çå­ç¬¦ä¸²ã å°å­ç¬¦ä¸² ``s`` è½¬æ¢ä¸º :c:expr:`double` ç±»åï¼å¤±è´¥æ¶ä¼å¼å Python å¼å¸¸ã æ¥åçå­ç¬¦ä¸²éåå¯¹åºäºå¯è¢« Python ç :func:`float` æé å¨ææ¥åçå­ç¬¦ééåï¼é¤äº ``s`` å¿é¡»æ²¡æåå¯¼æå°¾éç©ºæ ¼ã è½¬æ¢å¿é¡»ç¬ç«äºå½åçè¯­è¨åºåã ç¨äºæ°å­è½¬æ¢åæ ¼å¼åå­ç¬¦ä¸²è¾åºçå½æ° å¦æ *ptype* ä¸ä¸º ``NULL``ï¼åå®æåçå¼å°è¢«è®¾ä¸º ``Py_DTST_FINITE``, ``Py_DTST_INFINITE`` æ ``Py_DTST_NAN`` ä¸­çä¸ä¸ªï¼åå«è¡¨ç¤º *val* æ¯ä¸ä¸ªæéæ°å­ãæ éæ°å­æéæ°å­ã å¦æ ``endptr`` æ¯ ``NULL`` ï¼è½¬æ¢æ´ä¸ªå­ç¬¦ä¸²ãå¼å :exc:`ValueError` å¹¶ä¸ è¿å ``-1.0`` å¦æå­ç¬¦ä¸²ä¸æ¯æµ®ç¹æ°çææçè¡¨è¾¾æ¹å¼ã å¦æ ``s`` è¡¨ç¤ºä¸ä¸ªå¤ªå¤§èä¸è½å­å¨å¨ä¸ä¸ªæµ®ç¹æ°ä¸­çå¼ï¼æ¯æ¹è¯´ï¼ ``"1e500"`` å¨è®¸å¤å¹³å°ä¸æ¯ä¸ä¸ªå­ç¬¦ä¸²ï¼ç¶åå¦æ ``overflow_exception`` æ¯ ``NULL`` è¿å ``Py_HUGE_VAL`` ï¼ç¨éå½çç¬¦å·ï¼å¹¶ä¸ä¸è®¾ç½®ä»»ä½å¼å¸¸ã å¨å¶ä»æ¹é¢ï¼ ``overflow_exception`` å¿é¡»æåä¸ä¸ª Python å¼å¸¸å¯¹è±¡ï¼å¼åå¼å¸¸å¹¶è¿å ``-1.0`` ãå¨è¿ä¸¤ç§æåµä¸ï¼è®¾ç½® ``*endptr`` æåè½¬æ¢å¼ä¹åçç¬¬ä¸ä¸ªå­ç¬¦ã å¦æå¨è½¬æ¢æé´åçä»»ä½å¶ä»éè¯¯ï¼æ¯å¦ä¸ä¸ªåå­ä¸è¶³çéè¯¯ï¼ï¼è®¾ç½®éå½ç Python å¼å¸¸å¹¶ä¸è¿å ``-1.0`` ã å¦æ ``endptr`` ä¸æ¯ ``NULL`` ï¼å°½å¯è½å¤çè½¬æ¢å­ç¬¦ä¸²å¹¶å° ``*endptr`` è®¾ç½®ä¸ºæåç¬¬ä¸ä¸ªæªè½¬æ¢çå­ç¬¦ãå¦æå­ç¬¦ä¸²çåå§æ®µä¸æ¯æµ®ç¹æ°çææçè¡¨è¾¾æ¹å¼ï¼å° ``*endptr`` è®¾ç½®ä¸ºæåå­ç¬¦ä¸²çå¼å¤´ï¼å¼å ValueError å¼å¸¸ï¼å¹¶ä¸è¿å ``-1.0`` ã æ ¹æ®æ ¼å¼å­ç¬¦ä¸² *format* åé¢å¤åæ°ï¼è¾åºä¸è¶è¿ *size* ä¸ªå­èå° *str*ã åè§ Unix æåé¡µé¢ :manpage:`snprintf(3)`ã æ ¹æ®æ ¼å¼å­ç¬¦ä¸² *format* ååéåæ°åè¡¨ *va*ï¼è¾åºä¸è¶è¿ *size* ä¸ªå­èå° *str*ã åè§ Unix æåé¡µé¢ :manpage:`vsnprintf(3)`ã å­ç¬¦ä¸²è½¬æ¢ä¸æ ¼å¼å ä»¥ä¸å½æ°æä¾ä¸è¯­è¨ç¯å¢æ å³çå­ç¬¦ä¸²å°æ°å­è½¬æ¢ã è¿äºå½æ°çè¿åå¼ï¼ *rv* ï¼åºæç§ä»¥ä¸è§åè¢«è§£éï¼ è¿åå¼æ¯ä¸ä¸ªæååå«è½¬æ¢åå­ç¬¦ä¸²ç *buffer* çæéï¼å¦æè½¬æ¢å¤±è´¥åä¸º ``NULL``ã è°ç¨æ¹è¦è´è´£è°ç¨ :c:func:`PyMem_Free` æ¥éæ¾è¿åçå­ç¬¦ä¸²ã æ­¤åè£å¨ä¼ç¡®ä¿ ``str[size-1]`` å¨è¿åæ¶å§ç»ä¸º ``'\0'``ã å®ä»¬ä»ä¸åå¥è¶è¿ *size* å­è (åæ¬æ«å°¾ç ``'\0'``) å° strã ä¸¤ä¸ªå½æ°é½è¦æ± ``str != NULL``, ``size > 0``, ``format != NULL`` ä¸ ``size < INT_MAX``ã è¯·æ³¨æè¿æå³çä¸å­å¨å¯ç¡®å®æéç¼å²åºå¤§å°ç C99 ``n = snprintf(NULL, 0, ...)`` çç­ä»·ç©ã å½ ``0 <= rv < size`` æ¶ï¼è¾åºè½¬æ¢å³æåå¹¶å° *rv* ä¸ªå­ç¬¦åå¥å° *str* (ä¸åæ¬æ«å°¾ ``str[rv]`` ä½ç½®ç ``'\0'`` å­è)ã å½ ``rv < 0`` æ¶ï¼"ä¼åçä¸å¥½çäºæã" å¨æ­¤æåµä¸ ``str[size-1]`` ä¹ä¸º ``'\0'``ï¼ä½ *str* çå¶ä½é¨åæ¯æªå®ä¹çã éè¯¯çç¡®ååå åå³äºåºå±å¹³å°ã å½ ``rv >= size`` æ¶ï¼è¾åºè½¬æ¢ä¼è¢«æªæ­å¹¶ä¸éè¦ä¸ä¸ªå·æ ``rv + 1`` å­èçç¼å²åºæè½æåæ§è¡ã å¨æ­¤æåµä¸ ``str[size-1]`` ä¸º ``'\0'``ã ``Py_DTSF_ADD_DOT_0`` è¡¨ç¤ºç¡®ä¿è¿åçå­ç¬¦ä¸²çèµ·æ¥ä¸åæ¯ä¸ä¸ªæ´æ°ã ``Py_DTSF_ALT`` è¡¨ç¤ºåºç¨ "æ¿ä»£ç" æ ¼å¼åè§åã ç¸å³ç»èè¯·åé :c:func:`PyOS_snprintf` ``'#'`` å®ä¹ææ¡£ã ``Py_DTSF_SIGN`` è¡¨ç¤ºæ»æ¯å¨è¿åçå­ç¬¦ä¸²åéå ä¸ä¸ªç¬¦å·å­ç¬¦ï¼å³ä½¿ *val* ä¸ºéè´æ°ã 