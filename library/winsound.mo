Þ    #      4              L     M  7   f  Q        ð  -  ù  ò  '  Ö    &   ñ       *   &     Q     ]     j  M   x  !   Æ  %   è     	  "   -	     P	     ×	  /   à	  ;   
  2   L
     
  T      k   õ     a  7   þ     6     Ô     é               #  ²  8     ë  :     g   F     ®  
  µ  ¾  À              0  !   @  	   b     l  	   {  B     "   È  &   ë       #   2     V     Ú  0   á  *     *   =    h  R     s   Ú  w   N  *   Æ     ñ     w          ¤     µ     Æ   :func:`PlaySound` *name* :mod:`winsound` --- Sound-playing interface for Windows All Win32 systems support at least the following; most systems support many more: Asterisk Beep the PC's speaker. The *frequency* parameter specifies frequency, in hertz, of the sound, and must be in the range 37 through 32,767. The *duration* parameter specifies the number of milliseconds the sound should last.  If the system is not able to beep the speaker, :exc:`RuntimeError` is raised. Call the underlying :c:func:`MessageBeep` function from the Platform API.  This plays a sound as specified in the registry.  The *type* argument specifies which sound to play; possible values are ``-1``, ``MB_ICONASTERISK``, ``MB_ICONEXCLAMATION``, ``MB_ICONHAND``, ``MB_ICONQUESTION``, and ``MB_OK``, all described below.  The value ``-1`` produces a "simple beep"; this is the final fallback if a sound cannot be played otherwise.  If the system indicates an error, :exc:`RuntimeError` is raised. Call the underlying :c:func:`PlaySound` function from the Platform API.  The *sound* parameter may be a filename, a system sound alias, audio data as a :term:`bytes-like object`, or ``None``.  Its interpretation depends on the value of *flags*, which can be a bitwise ORed combination of the constants described below. If the *sound* parameter is ``None``, any currently playing waveform sound is stopped. If the system indicates an error, :exc:`RuntimeError` is raised. Corresponding Control Panel Sound name Critical Stop Do not interrupt sounds currently playing. Exclamation Exit Windows For example:: If the specified sound cannot be found, do not play the system default sound. Play the ``SystemDefault`` sound. Play the ``SystemExclamation`` sound. Play the ``SystemHand`` sound. Play the ``SystemQuestion`` sound. Play the sound repeatedly.  The :const:`SND_ASYNC` flag must also be used to avoid blocking.  Cannot be used with :const:`SND_MEMORY`. Question Return immediately if the sound driver is busy. Return immediately, allowing sounds to play asynchronously. Stop playing all instances of the specified sound. The *sound* parameter is a sound association name from the registry.  If the registry contains no such name, play the system default sound unless :const:`SND_NODEFAULT` is also specified. If no default sound is registered, raise :exc:`RuntimeError`. Do not use with :const:`SND_FILENAME`. The *sound* parameter is the name of a WAV file. Do not use with :const:`SND_ALIAS`. The *sound* parameter to :func:`PlaySound` is a memory image of a WAV file, as a :term:`bytes-like object`. The :mod:`winsound` module provides access to the basic sound-playing machinery provided by Windows platforms.  It includes functions and several constants. This flag is not supported on modern Windows platforms. This module does not support playing from a memory image asynchronously, so a combination of this flag and :const:`SND_ASYNC` will raise :exc:`RuntimeError`. ``'SystemAsterisk'`` ``'SystemExclamation'`` ``'SystemExit'`` ``'SystemHand'`` ``'SystemQuestion'`` Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:17+0000
Last-Translator: Bryanä¸å¯æè®®, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :func:`PlaySound` *name* åæ° :mod:`winsound` ââ Windows ç³»ç»çé³é¢æ­æ¾æ¥å£ ææç Win32 ç³»ç»è³å°æ¯æä»¥ä¸é³é¢åç§°ï¼å¤§å¤æ°ç³»ç»æ¯æçé³é¢é½å¤äºè¿äºï¼ æå· è®© PC çæ¬å£°å¨ååºæç¤ºé³ã*frequency* åæ°å¯æå®å£°é³çé¢çï¼åä½æ¯èµ«å¹ï¼å¿é¡»ä½äº 37 å° 32,767 ä¹é´ã*duration* åæ°åæå®äºå£°é³åºæç»­çæ¯«ç§æ°ãè¥ç³»ç»æ æ³è®©æ¬å£°å¨åå£°ï¼åä¼è§¦å :exc:`RuntimeError`ã ç±å¹³å° API è°ç¨åºå±ç :c:func:`MessageBeep` å½æ°ãç¨äºæ­æ¾æ³¨åè¡¨ä¸­æå®çé³é¢ã *type* åæ°æå®æ­æ¾çé³é¢ï¼å¯è½çå¼æ¯ ``-1``ã``MB_ICONASTERISK``ã``MB_ICONEXCLAMATION``ã``MB_ICONHAND``ã``MB_ICONQUESTION`` å ``MB_OK``ï¼ä¸é¢ä¼ä»ç»ãå¼ ``-1`` ä¼çæä¸ä¸ª "ç®åçåå£°"ï¼è¥å¶ä»çé³é¢æ æ³æ­æ¾ï¼è¿æ¯æåçéè·¯ãå¦æç³»ç»æ¥éï¼åä¼è§¦å :exc:`RuntimeError` ã ç±å¹³å° API è°ç¨åºå±ç :c:func:`PlaySound` å½æ°ã åæ° *sound* å¯ä»¥æ¯æä»¶åãç³»ç»é³é¢çå«åã:term:`bytes-like object` çé³é¢æ°æ®æ ``None``ã å¦ä½è§£éåå³äº *flags* çå¼ï¼å¯ä¸ºä»¥ä¸å¸¸æ°çäºè¿å¶ OR ç»åã å¦æ *sound* åæ°ä¸º ``None``ï¼åå½åæ­æ¾çæ³¢å½¢é³é¢ä¼å¨é¨åæ­¢ãå¦æç³»ç»æ¥éï¼ åä¼è§¦å :exc:`RuntimeError`ã å¯¹åºçæ§å¶é¢æ¿é³é¢å å³é®æ§åæ­¢ ä¸ææ­æ­£å¨æ­æ¾çé³é¢ã æå¹å· éåº Windows ä¾å¦ï¼ å³ä¾¿æ¾ä¸å°æå®çé³é¢ï¼ä¹ä¸æ­æ¾ç³»ç»é»è®¤é³é¢ã æ­æ¾ ``SystemDefault`` é³é¢ã æ­æ¾ ``SystemExclamation`` é³é¢ã æ­æ¾ ``SystemHand`` é³é¢ã æ­æ¾ ``SystemQuestion`` é³é¢ã å¾ªç¯æ­æ¾é³é¢ãä¸ºé¿åé»å¡ï¼å¿é¡»åæ¶ä½¿ç¨ :const:`SND_ASYNC` æ å¿ãä¸è½ä¸ :const:`SND_MEMORY` ä¸èµ·ä½¿ç¨ã é®é¢ å¦æé³é¢é©±å¨ç¨åºå¿ï¼åç«å³è¿åã ç«å³è¿åï¼åè®¸å¼æ­¥æ­æ¾é³é¢ã åæ­¢æ­æ¾æå®é³é¢çææå®ä¾ã åæ° *sound* æ¯æ³¨åè¡¨åå³èçé³é¢åç§°ã å¦ææ³¨åè¡¨ä¸­æ æ­¤åç§°ï¼åæ­æ¾ç³»ç»é»è®¤çå£°é³ï¼é¤éåæ¶è®¾å®äº :const:`SND_NODEFAULT` ã å¦ææ²¡ææ³¨åé»è®¤å£°é³ï¼åä¼è§¦å :exc:`RuntimeError`ã è¯·å¿ä¸ :const:`SND_FILENAME` ä¸èµ·ä½¿ç¨ã åæ° *sound* ææ WAV æä»¶åãä¸è¦ä¸ :const:`SND_ALIAS` ä¸èµ·ä½¿ç¨ã :func:`PlaySound` ç *sound* å½¢åæ¯ä¸ä¸ª WAV æä»¶çåå­éåï¼ä½ä¸ºä¸ä¸ª :term:`bytes-like object`ã éè¿ :mod:`winsound` æ¨¡åå¯è®¿é® Windows å¹³å°çåºç¡é³é¢æ­æ¾æºå¶ãåæ¬ä¸äºå½æ°åå ä¸ªå¸¸éã æ°ç Windows å¹³å°ä¸æ¯ææ¬æ å¿ã æ¬æ¨¡åä¸æ¯æå¼æ­¥æ­æ¾é³é¢çåå­éåï¼æä»¥è¯¥æ å¿å :const:`SND_ASYNC` çç»åå°è§¦å :exc:`RuntimeError`ã ``'SystemAsterisk'`` ``'SystemExclamation'`` ``'SystemExit'`` ``'SystemHand'`` ``'SystemQuestion'`` 