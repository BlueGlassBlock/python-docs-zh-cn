Þ          |               Ü      Ý      ï      u  A  ú  8   <  L   u  @   Â  ]     S   a  K   µ  M     ¿  O       ©        É  $  N  1   s	  A   ¥	     ç	  L   
  Z   P
  _   «
  [      Iterator Protocol Return non-zero if the object *o* can be safely passed to :c:func:`PyIter_Next`, and ``0`` otherwise.  This function always succeeds. Return non-zero if the object *o* provides the :class:`AsyncIterator` protocol, and ``0`` otherwise.  This function always succeeds. Return the next value from the iterator *o*.  The object must be an iterator according to :c:func:`PyIter_Check` (it is up to the caller to check this). If there are no remaining values, returns ``NULL`` with no exception set. If an error occurs while retrieving the item, returns ``NULL`` and passes along the exception. Sends the *arg* value into the iterator *iter*. Returns: The enum value used to represent different results of :c:func:`PyIter_Send`. There are two functions specifically for working with iterators. To write a loop which iterates over an iterator, the C code should look something like this:: ``PYGEN_ERROR`` if iterator has raised and exception. *presult* is set to ``NULL``. ``PYGEN_NEXT`` if iterator yields. Yielded value is returned via *presult*. ``PYGEN_RETURN`` if iterator returns. Return value is returned via *presult*. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 è¿­ä»£å¨åè®® å¦æå¯¹è±¡Return non-zero if the object *o* å¯ä»¥è¢«å®å¨æä¼ ç» :c:func:`PyIter_Next` åè¿åéé¶å¼ï¼å¦åè¿å ``0``ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å¦æå¯¹è±¡ *o* æä¾äº :class:`AsyncIterator` åè®®åè¿åéé¶å¼ï¼å¦åè¿å ``0``ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã ä»è¿­ä»£å¨ *o* è¿åä¸ä¸ä¸ªå¼ã å¯¹è±¡å¿é¡»å¯è¢« :c:func:`PyIter_Check` ç¡®è®¤ä¸ºè¿­ä»£å¨ï¼éè¦è°ç¨æ¹æ¥è´è´£æ£æ¥ï¼ã å¦ææ²¡æå©ä½çå¼ï¼åè¿å ``NULL`` å¹¶ä¸ä¸è®¾ç½®å¼å¸¸ã å¦æå¨è·åæ¡ç®æ¶åçäºéè¯¯ï¼åè¿å ``NULL`` å¹¶ä¸ä¼ éå¼å¸¸ã å° *arg* å¼åéå°è¿­ä»£å¨ *iter*ã è¿å: ç¨äºä»£è¡¨ :c:func:`PyIter_Send` çä¸åç»æçæä¸¾å¼ã è¿­ä»£å¨æä¸¤ä¸ªå½æ°ã è¦ä¸ºè¿­ä»£å¨ç¼åä¸ä¸ªä¸ä¸ªå¾ªç¯ï¼Cä»£ç åºè¯¥çèµ·æ¥åè¿æ · :: ``PYGEN_ERROR``ï¼å¦æè¿­ä»£å¨å¼åå¼å¸¸çè¯ã  *presult* ä¼è¢«è®¾ä¸º ``NULL``ã ``PYGEN_NEXT``ï¼å¦æè¿­ä»£å¨çæå¼çè¯ã çæçå¼ä¼éè¿ *presult* æ¥è¿åã ``PYGEN_RETURN``ï¼å¦æè¿­ä»£å¨è¿åçè¯ã è¿åå¼ä¼éè¿ *presult* æ¥è¿åã 