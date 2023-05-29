Þ                           +     0   9    j  Í     q   Q  	   Ã  Ì   Í       Ø   ;  8    <   M                 ¿    )   ]
  *   
  !  ²
  Ê   Ô  o          µ     »  Î  À       K  /   \                  **Source code:** :source:`Lib/linecache.py` :mod:`linecache` --- Random access to text lines Capture enough detail about a non-file-based module to permit getting its lines later via :func:`getline` even if *module_globals* is ``None`` in the later call. This avoids doing I/O until a line is actually needed, without having to carry the module globals around indefinitely. Check the cache for validity.  Use this function if files in the cache  may have changed on disk, and you require the updated version.  If *filename* is omitted, it will check all the entries in the cache. Clear the cache.  Use this function if you no longer need lines from files previously read using :func:`getline`. Example:: Get line *lineno* from file named *filename*. This function will never raise an exception --- it will return ``''`` on errors (the terminating newline character will be included for lines that are found). If a file named *filename* is not found, the function first checks for a :pep:`302` ``__loader__`` in *module_globals*. If there is such a loader and it defines a ``get_source`` method, then that determines the source lines (if ``get_source()`` returns ``None``, then ``''`` is returned). Finally, if *filename* is a relative filename, it is looked up relative to the entries in the module search path, ``sys.path``. The :func:`tokenize.open` function is used to open files. This function uses :func:`tokenize.detect_encoding` to get the encoding of the file; in the absence of an encoding token, the file encoding defaults to UTF-8. The :mod:`linecache` module allows one to get any line from a Python source file, while attempting to optimize internally, using a cache, the common case where many lines are read from a single file.  This is used by the :mod:`traceback` module to retrieve source lines for inclusion in  the formatted traceback. The :mod:`linecache` module defines the following functions: module path search Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:08+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç :** :source:`Lib/linecache.py` :mod:`linecache` --- éæºè¯»åææ¬è¡ æè·æå³æä¸ªéåºäºæä»¶çæ¨¡åçè¶³å¤ç»èä¿¡æ¯ï¼ä»¥åè®¸ç¨ååéè¿ :func:`getline` æ¥è·åå¶ä¸­çè¡ï¼å³ä½¿å½ç¨åè°ç¨æ¶ *module_globals* ä¸º ``None``ã è¿å¯ä»¥é¿åå¨å®ééè¦è¯»åè¡ä¹åæ§è¡ I/Oï¼ä¹ä¸å¿å§ç»ä¿ææ¨¡åå¨å±åéã æ£æ¥ç¼å­æææ§ã å¦æç¼å­ä¸­çæä»¶å¨ç£çä¸åçäºæ¹åï¼èä½ éè¦æ´æ°åççæ¬å³å¯ä½¿ç¨æ­¤å½æ°ã å¦æçç¥äº *filename*ï¼å®ä¼æ£æ¥ç¼å­ä¸­çæææ¡ç®ã æ¸ç©ºç¼å­ã å¦æä½ ä¸åéè¦ä¹åä½¿ç¨ :func:`getline` ä»æä»¶è¯»åçè¡å³å¯ä½¿ç¨æ­¤å½æ°ã ç¤ºä¾:: ä»åä¸º *filename* çæä»¶ä¸­è·å *lineno* è¡ï¼æ­¤å½æ°ç»ä¸ä¼å¼åå¼å¸¸ --- åºç°éè¯¯æ¶å®å°è¿å ``''`` (æææ¾å°çè¡é½å°åå«æ¢è¡ç¬¦ä½ä¸ºç»æ)ã å¦ææ¾ä¸å°åä¸º *filename* çæä»¶ï¼æ­¤å½æ°ä¼åå¨ *module_globals* ä¸­æ£æ¥ :pep:`302` ``__loader__``ã å¦æå­å¨è¿æ ·çå è½½å¨å¹¶ä¸å®å®ä¹äº ``get_source`` æ¹æ³ï¼åç±è¯¥æ¹æ³æ¥ç¡®å®æºè¡ (å¦æ ``get_source()`` è¿å ``None``ï¼åè¯¥å½æ°è¿å ``''``)ã æåï¼å¦æ *filename* æ¯ä¸ä¸ªç¸å¯¹è·¯å¾æä»¶åï¼åå®ä¼å¨æ¨¡åæç´¢è·¯å¾ ``sys.path`` ä¸­ææ¡ç®çç¸å¯¹ä½ç½®è¿è¡æ¥æ¾ã :func:`tokenize.open` å½æ°è¢«ç¨äºæå¼æä»¶ã æ­¤å½æ°ä½¿ç¨ :func:`tokenize.detect_encoding` æ¥è·åæä»¶çç¼ç æ ¼å¼ï¼å¦ææªææç¼ç æ ¼å¼ï¼åé»è®¤ç¼ç ä¸º UTF-8ã :mod:`linecache` æ¨¡ååè®¸ä»ä¸ä¸ª Python æºæä»¶ä¸­è·åä»»æçè¡ï¼å¹¶ä¼å°è¯ä½¿ç¨ç¼å­è¿è¡åé¨ä¼åï¼å¸¸åºç¨äºä»åä¸ªæä»¶è¯»åå¤è¡çåºåã æ­¤æ¨¡åè¢« :mod:`traceback` æ¨¡åç¨æ¥æåæºç è¡ä»¥ä¾¿åå«å¨æ ¼å¼åçåæº¯ä¸­ã :mod:`linecache` æ¨¡åå®ä¹äºä¸åå½æ°ï¼ module path æç´¢ 