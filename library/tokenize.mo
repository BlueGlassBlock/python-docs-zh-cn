Þ    +      t              Ì  *   Í     ø  z   }  /   ø  !   (     J  R   j  ¸   ½     v  Â     R   L  v     :        Q  x   Z  N   Ó    "  Ç   8	      
  ½   
  U   T  2   ª     Ý    d  Ï   h  a   8      J   ¡  #   ì  ò    /     2  3     f  å   ë  K  Ñ  ;        Y  k   j  (   Ö     ÿ       ê   $  ²    '   Â  m   ê  l   X  =   Å  (     %   ,  L   R          6  °   F  H   ÷  u   @  0   ¶     ç  u   î  G   d    ¬  Å   ²     x   ¾   !  [   Õ!  9   1"  j   k"    Ö"  µ   Ü#  P   $  þ   ã$  G   â%     *&  §  F&  +   î'  
  (     %)  é   ³)  B  *  ?   à+      ,  l   <,  '   ©,     Ñ,     Ú,  ¢   ù,   **Source code:** :source:`Lib/tokenize.py` :func:`.tokenize` determines the source encoding of the file by looking for a UTF-8 BOM or encoding cookie, according to :pep:`263`. :func:`.tokenize` needs to detect the encoding of source files it tokenizes. The function it uses to do this is available: :mod:`tokenize` --- Tokenizer for Python source Added support for ``exact_type``. Added support for named tuples. All constants from the :mod:`token` module are also exported from :mod:`tokenize`. Another function is provided to reverse the tokenization process. This is useful for creating tools that tokenize a script, modify the token stream, and write back the modified script. Command-Line Usage Converts tokens back into Python source code.  The *iterable* must return sequences with at least two elements, the token type and the token string. Any additional sequence elements are ignored. Example of a script rewriter that transforms float literals into Decimal objects:: Example of tokenizing a file programmatically, reading unicode strings instead of bytes with :func:`generate_tokens`:: Example of tokenizing from the command line.  The script:: Examples If :file:`filename.py` is specified its contents are tokenized to stdout. Otherwise, tokenization is performed on stdin. If no encoding is specified, then the default of ``'utf-8'`` will be returned. It detects the encoding from the presence of a UTF-8 BOM or an encoding cookie as specified in :pep:`263`. If both a BOM and a cookie are present, but disagree, a :exc:`SyntaxError` will be raised. Note that if the BOM is found, ``'utf-8-sig'`` will be returned as an encoding. It returns bytes, encoded using the :data:`~token.ENCODING` token, which is the first token sequence output by :func:`.tokenize`. If there is no encoding token in the input, it returns a str instead. It will call readline a maximum of twice, and return the encoding used (as a string) and a list of any lines (not decoded from bytes) it has read in. Like :func:`.tokenize`, the *readline* argument is a callable returning a single line of input. However, :func:`generate_tokens` expects *readline* to return a str object rather than bytes. Open a file in read only mode using the encoding detected by :func:`detect_encoding`. Or reading bytes directly with :func:`.tokenize`:: Raised when either a docstring or expression that may be split over several lines is not completed anywhere in the file, for example:: The :func:`.tokenize` generator requires one argument, *readline*, which must be a callable object which provides the same interface as the :meth:`io.IOBase.readline` method of file objects.  Each call to the function should return one line of input as bytes. The :func:`detect_encoding` function is used to detect the encoding that should be used to decode a Python source file. It requires one argument, readline, in the same way as the :func:`.tokenize` generator. The :mod:`tokenize` module can be executed as a script from the command line. It is as simple as: The :mod:`tokenize` module provides a lexical scanner for Python source code, implemented in Python.  The scanner in this module returns comments as tokens as well, making it useful for implementing "pretty-printers", including colorizers for on-screen displays. The exact token type names can be displayed using the :option:`-e` option: The following options are accepted: The generator produces 5-tuples with these members: the token type; the token string; a 2-tuple ``(srow, scol)`` of ints specifying the row and column where the token begins in the source; a 2-tuple ``(erow, ecol)`` of ints specifying the row and column where the token ends in the source; and the line on which the token was found. The line passed (the last tuple item) is the *physical* line.  The 5 tuple is returned as a :term:`named tuple` with the field names: ``type string start end line``. The primary entry point is a :term:`generator`: The reconstructed script is returned as a single string.  The result is guaranteed to tokenize back to match the input so that the conversion is lossless and round-trips are assured.  The guarantee applies only to the token type and token string as the spacing between tokens (column positions) may change. The result is an iterator yielding named tuples, exactly like :func:`.tokenize`. It does not yield an :data:`~token.ENCODING` token. The returned :term:`named tuple` has an additional property named ``exact_type`` that contains the exact operator type for :data:`~token.OP` tokens.  For all other token types ``exact_type`` equals the named tuple ``type`` field. To simplify token stream handling, all :ref:`operator <operators>` and :ref:`delimiter <delimiters>` tokens and :data:`Ellipsis` are returned using the generic :data:`~token.OP` token type.  The exact type can be determined by checking the ``exact_type`` property on the :term:`named tuple` returned from :func:`tokenize.tokenize`. Tokenize a source reading unicode strings instead of bytes. Tokenizing Input Use :func:`.open` to open Python source files: it uses :func:`detect_encoding` to detect the file encoding. display token names using the exact type or:: show this help message and exit will be tokenized to the following output where the first column is the range of the line/column coordinates where the token is found, the second column is the name of the token, and the final column is the value of the token (if any) Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-09 14:13+0000
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: Bryanä¸å¯æè®®, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºç ï¼** :source:`Lib/tokenize.py` æ ¹æ® :pep:`263` ï¼:func:`.tokenize` éè¿å¯»æ¾ UTF-8 BOM æç¼ç  cookie æ¥ç¡®å®æä»¶çæºç¼ç ã :func:`.tokenize` éè¦æ£æµå®ææ è®°æºæä»¶çç¼ç ãå®ç¨æ¥åè¿ä»¶äºçå½æ°æ¯å¯ç¨çï¼ :mod:`tokenize` --- å¯¹ Python ä»£ç ä½¿ç¨çæ è®°è§£æå¨ æ·»å äºå¯¹ ``exact_type`` çæ¯æã å¢å äºå¯¹ named tuple çæ¯æã æææ¥èª :mod:`token` æ¨¡åçå¸¸éä¹å¯ä» :mod:`tokenize` å¯¼åºã æä¾äºå¦ä¸ä¸ªå½æ°æ¥éè½¬æ è®°åè¿ç¨ãè¿å¯¹äºåå»ºå¯¹èæ¬è¿è¡æ è®°ãä¿®æ¹æ è®°æµå¹¶ååä¿®æ¹åèæ¬çå·¥å·å¾æç¨ã å½ä»¤è¡ç¨æ³ å°ä»¤çè½¬æ¢ä¸º Python æºä»£ç ã *iterable* å¿é¡»è¿åè³å°æä¸¤ä¸ªåç´ çåºåï¼å³ä»¤çç±»ååä»¤çå­ç¬¦ä¸²ãä»»ä½é¢å¤çåºååç´ é½ä¼è¢«å¿½ç¥ã èæ¬æ¹åå¨çä¾å­ï¼å®å° float ææ¬è½¬æ¢ä¸º Decimal å¯¹è±¡:: ä»¥ç¼ç¨æ¹å¼å¯¹æä»¶è¿è¡æ è®°çä¾å­ï¼ç¨ :func:`generate_tokens` è¯»å unicode å­ç¬¦ä¸²èä¸æ¯å­è:: ä»å½ä»¤è¡è¿è¡æ è®°åçä¾å­ã èæ¬:: ä¾å­ å¦æ :file:`filename.py` è¢«æå®ï¼å¶åå®¹ä¼è¢«æ è®°å° stdout ãå¦åï¼æ è®°åå°å¨ stdin ä¸æ§è¡ã å¦ææ²¡ææå®ç¼ç ï¼é£ä¹å°è¿åé»è®¤ç ``'utf-8'`` ç¼ç . å®ä» UTF-8 BOM æç¼ç  cookie çå­å¨ä¸­æ£æµç¼ç æ ¼å¼ï¼å¦ :pep:`263` æææçã å¦æ BOM å cookie é½å­å¨ï¼ä½ä¸ä¸è´ï¼å°ä¼å¼å :exc:`SyntaxError`ã è¯·æ³¨æï¼å¦ææ¾å° BOM ï¼å°è¿å ``'utf-8-sig'`` ä½ä¸ºç¼ç æ ¼å¼ã å®è¿åå­èï¼ä½¿ç¨ :data:`~token.ENCODING` æ è®°è¿è¡ç¼ç ï¼è¿æ¯ç± :func:`.tokenize` è¾åºçç¬¬ä¸ä¸ªæ è®°åºåãå¦æè¾å¥ä¸­æ²¡æç¼ç ä»¤çï¼å®å°è¿åä¸ä¸ªå­ç¬¦ä¸²ã å®æå¤è°ç¨ readline ä¸¤æ¬¡ï¼å¹¶è¿åæä½¿ç¨çç¼ç ï¼ä½ä¸ºä¸ä¸ªå­ç¬¦ä¸²ï¼åå®æè¯»å¥çä»»ä½è¡ï¼ä¸æ¯ä»å­èè§£ç çï¼ç list ã å :func:`.tokenize` ä¸æ ·ï¼ *readline* åæ°æ¯ä¸ä¸ªè¿ååè¡è¾å¥çå¯è°ç¨åæ°ãç¶èï¼ :func:`generate_tokens` å¸æ *readline* è¿åä¸ä¸ª str å¯¹è±¡èä¸æ¯å­èã ä½¿ç¨ç± :func:`detect_encoding` æ£æµå°çç¼ç ï¼ä»¥åªè¯»æ¨¡å¼æå¼ä¸ä¸ªæä»¶ã æèéè¿ :func:`.tokenize` ç´æ¥è¯»åå­èæ°æ®:: å½æä»¶ä¸­ä»»ä½å°æ¹æ²¡æå®æ docstring æå¯è½è¢«åå²æå è¡çè¡¨è¾¾å¼æ¶è§¦åï¼ä¾å¦:: çæå¨ :func:`.tokenize` éè¦ä¸ä¸ª *readline* åæ°ï¼è¿ä¸ªåæ°å¿é¡»æ¯ä¸ä¸ªå¯è°ç¨å¯¹è±¡ï¼ä¸è½æä¾ä¸æä»¶å¯¹è±¡ç :meth:`io.IOBase.readline` æ¹æ³ç¸åçæ¥å£ãæ¯æ¬¡è°ç¨è¿ä¸ªå½æ°é½è¦ è¿åå­èç±»åè¾å¥çä¸è¡æ°æ®ã :func:`detect_encoding` å½æ°ç¨äºæ£æµè§£ç  Python æºæä»¶æ¶åºä½¿ç¨çç¼ç ãå®éè¦ä¸ä¸ªåæ°ï¼ readline ï¼ä¸ :func:`.tokenize` çæå¨çä½¿ç¨æ¹å¼ç¸åã :mod:`tokenize` æ¨¡åå¯ä»¥ä½ä¸ºä¸ä¸ªèæ¬ä»å½ä»¤è¡æ§è¡ãè¿å¾ç®å: :mod:`tokenize` æ¨¡åä¸º Python æºä»£ç æä¾äºä¸ä¸ªè¯æ³æ«æå¨ï¼ç¨ Python å®ç°ãè¯¥æ¨¡åä¸­çæ«æå¨ä¹å°æ³¨éä½ä¸ºæ è®°è¿åï¼è¿ä½¿å¾å®å¯¹äºå®ç°âæ¼äº®çè¾åºå¨âéå¸¸æç¨ï¼åæ¬ç¨äºå±å¹æ¾ç¤ºççè²å¨ã å¯ä»¥ä½¿ç¨ :option:`-e` éé¡¹æ¥æ¾ç¤ºç¡®åçæ è®°ç±»ååç§°ã å¯ä»¥æ¥åä»¥ä¸éé¡¹ï¼ çæå¨äº§ç 5 ä¸ªå·æè¿äºæåçåç»ï¼ä»¤çç±»åï¼ä»¤çå­ç¬¦ä¸²ï¼æå®ä»¤çå¨æºä¸­å¼å§çè¡ååç 2 åç» ``(srow, scol)`` ï¼æå®ä»¤çå¨æºä¸­ç»æçè¡ååç 2 åç» ``(erow, ecol)`` ï¼ä»¥ååç°ä»¤ççè¡ãæä¼ éçè¡ï¼æåä¸ä¸ªåç»é¡¹ï¼æ¯ *å®éç* è¡ã 5 ä¸ªåç»ä»¥ :term:`named tuple` çå½¢å¼è¿åï¼å­æ®µåæ¯ï¼ ``type string start end line`` ã ä¸»è¦çå¥å£æ¯ä¸ä¸ª :term:`generator`: éæçèæ¬ä»¥åä¸ªå­ç¬¦ä¸²çå½¢å¼è¿åã ç»æè¢«ä¿è¯ä¸ºæ è®°åä¸è¾å¥ç¸å¹éï¼å æ­¤è½¬æ¢æ¯æ æçï¼å¹¶ä¿è¯æ¥åæä½ã è¯¥ä¿è¯åªéç¨äºæ è®°ç±»ååæ è®°å­ç¬¦ä¸²ï¼å ä¸ºæ è®°ä¹é´çé´è·ï¼åä½ç½®ï¼å¯è½ä¼æ¹åã å¶ç»ææ¯ä¸ä¸ªäº§çå·ååç»ççè¿­ä»£å¨ï¼ä¸ :func:`.tokenize` å®å¨ä¸æ ·ã å®ä¸ä¼äº§ç :data:`~token.ENCODING` æ è®°ã è¿åç :term:`named tuple` æä¸ä¸ªé¢å¤çå±æ§ï¼åä¸º ``exact_type`` ï¼åå«äº :data:`~token.OP` æ è®°çç¡®åæä½ç¬¦ç±»åã å¯¹äºææå¶ä»æ è®°ç±»åï¼ ``exact_type`` ç­äºå½ååç»ç ``type`` å­æ®µã ä¸ºäºç®åæ è®°æµçå¤çï¼ææç :ref:`è¿ç®ç¬¦ <operators>` å :ref:`å®çç¬¦ <delimiters>` ä»¥å :data:`Ellipsis` è¿åæ¶é½ä¼æä¸éç¨ç :data:`~token.OP` æ è®°ã å¯ä»¥éè¿ :func:`tokenize.tokenize` è¿åç :term:`named tuple` å¯¹è±¡ç ``exact_type`` å±æ§æ¥è·å¾ç¡®åçæ è®°ç±»åã å¯¹è¯»å unicode å­ç¬¦ä¸²èä¸æ¯å­èçæºè¿è¡æ è®°ã å¯¹è¾å¥è¿è¡è§£ææ è®° ä½¿ç¨ :func:`.open` æ¥æå¼ Python æºæä»¶ï¼å®ä½¿ç¨ :func:`detect_encoding` æ¥æ£æµæä»¶ç¼ç ã ä½¿ç¨ç¡®åçç±»åæ¾ç¤ºä»¤çåç§° æè:: æ¾ç¤ºæ­¤å¸®å©ä¿¡æ¯å¹¶éåº å°è¢«æ è®°ä¸ºä»¥ä¸è¾åºï¼å¶ä¸­ç¬¬ä¸åæ¯åç°æ è®°çè¡ / ååæ èå´ï¼ç¬¬äºåæ¯æ è®°çåç§°ï¼æåä¸åæ¯æ è®°çå¼ï¼å¦ææï¼ã 