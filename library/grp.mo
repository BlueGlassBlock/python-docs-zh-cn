Þ                                              L     !   b  =     >   Â  3     	   5  «   ?     ë     ñ               +  A   >  {        ü  ½  ~  ¤   <  ]   á  "   ?     b     i     p  	   x  +        ®     Ä  ¿  Û     
     
     
     ¡
  J   £
     î
  =   
  <   H  *        °     ·     K     R     q     x       6     r   Ô  r   G  {  º     6  T   Ï     $     C     J     Q  	   Y  (   c             0 1 2 3 :exc:`TypeError` is raised for non-integer arguments like floats or strings. :mod:`grp` --- The group database :ref:`Availability <availability>`: not Emscripten, not WASI. An interface to the shadow password database, similar to this. An interface to the user database, similar to this. Attribute Group database entries are reported as a tuple-like object, whose attributes correspond to the members of the ``group`` structure (Attribute field below, see ``<grp.h>``): Index It defines the following items: Meaning Module :mod:`pwd` Module :mod:`spwd` Return a list of all available group entries, in arbitrary order. Return the group database entry for the given group name. :exc:`KeyError` is raised if the entry asked for cannot be found. Return the group database entry for the given numeric group ID. :exc:`KeyError` is raised if the entry asked for cannot be found. The gid is an integer, name and password are strings, and the member list is a list of strings. (Note that most users are not explicitly listed as members of the group they are in according to the password database.  Check both databases to get complete membership information.  Also note that a ``gr_name`` that starts with a ``+`` or ``-`` is likely to be a YP/NIS reference and may not be accessible via :func:`getgrnam` or :func:`getgrgid`.) This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. This module provides access to the Unix group database. It is available on all Unix versions. all the group member's  user names gr_gid gr_mem gr_name gr_passwd the (encrypted) group password; often empty the name of the group the numerical group ID Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:07+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 0 1 2 3 å¯¹äºéæ´æ°åæ°å¦æµ®ç¹æ°æå­ç¬¦ä¸²å°å¼å :exc:`TypeError`ã :mod:`grp` --- ç»æ°æ®åº :ref:`å¯ç¨æ§ <availability>`: é Emscriptenï¼é WASIã éå¯¹å½±å­å¯ç æ°æ®åºçæ¥å£ï¼ä¸æ¬æ¨¡åç±»ä¼¼ã ç¨æ·æ°æ®åºçæ¥å£ï¼ä¸æ­¤ç±»ä¼¼ã å±æ§ ç»æ°æ®åºæ¡ç®è¢«æ¥åä¸ºç±»ä¼¼åç»çå¯¹è±¡ï¼å¶å±æ§å¯¹åºäº ``group`` ç»æçæå (ä¸é¢çå±æ§å­æ®µï¼è¯·åè§ ``<grp.h>``): ç´¢å¼ æ¬æ¨¡åå®ä¹å¦ä¸åå®¹ï¼ å«æ æ¨¡å :mod:`pwd` æ¨¡å :mod:`spwd` ä»¥ä»»æé¡ºåºè¿åææå¯ç¨ç»æ¡ç®çåè¡¨ã è¿åç»å®ç»åçç»æ°æ®åºæ¡ç®ã å¦ææ¾ä¸å°è¦æ±çæ¡ç®ï¼åä¼å¼å :exc:`KeyError` éè¯¯ã è¿åç»å®æ°å­ç» ID çç»æ°æ®åºæ¡ç®ã å¦æè¯·æ±çæ¡ç®æ æ³æ¾å°åä¼å¼å :exc:`KeyError`ã gid æ¯æ´æ°ï¼åç§°åå¯ç æ¯å­ç¬¦ä¸²ï¼æååè¡¨æ¯å­ç¬¦ä¸²åè¡¨ã ï¼æ³¨æï¼å¤§å¤æ°ç¨æ·æªæ ¹æ®å¯ç æ°æ®åºæ¾å¼åä¸ºæå±ç»çæåãè¯·æ£æ¥ä¸¤ä¸ªæ°æ®åºä»¥è·åå®æ´çæåèµæ ¼ä¿¡æ¯ãè¿è¦æ³¨æï¼ä»¥ ``+`` æ ``-`` å¼å¤´ç ``gr_name`` å¯è½æ¯ YP/NIS å¼ç¨ï¼å¯è½æ æ³éè¿ :func:`getgrnam` æ :func:`getgrgid` è®¿é®ãï¼ æ­¤æ¨¡åå¨ WebAssembly å¹³å° ``wasm32-emscripten`` å ``wasm32-wasi`` ä¸ä¸éç¨æä¸å¯ç¨ã è¯·åé :ref:`wasm-availability` äºè§£è¯¦æã è¯¥æ¨¡åæä¾å¯¹Unixç»æ°æ®åºçè®¿é®ã å®å¨ææUnixçæ¬ä¸é½å¯ç¨ã ç»åæææåçç¨æ·å gr_gid gr_mem gr_name gr_passwd ï¼å å¯çï¼ç»å¯ç ï¼ éå¸¸ä¸ºç©º ç»å æ°å­ç»ID 