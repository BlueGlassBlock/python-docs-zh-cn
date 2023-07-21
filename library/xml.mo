Þ    1      ¤              ,  #   -     Q     `  j   s  4   Þ  >     &   R  t   y  Y   î  2   H  ;   {  A   ·  Z  ù  ÷   T  Ñ   L  ð   	  J   
     Z
     _
     h
     q
     z
  Q   
  Ç   Õ
           »  Ô   Ü  ÷   ±  L  ©     ö     w  r        y          ¤  X  µ       -        K     ^     d     ~                 !   ¤     Æ     Ê  ¿  Ñ           ²     Ã  \   Ø  -   5  3   c       f   ·  Y     /   x  +   ¨  8   Ô  #      1  ª   4  Æ   ß  9   ¦     à  
   ç  
   ò  
   ý  
     J         ^     ÿ       Ï   0  Í         Î  j   Ï  a   :  K        è  
   ø        O        d!  M   s!     Á!     Ô!     Ú!     ô!     û!     "     "  ?   "     \"     `"   **Source code:** :source:`Lib/xml/` **Vulnerable** **Vulnerable** (1) :mod:`xml.dom.minidom` doesn't expand external entities and simply returns the unexpanded entity verbatim. :mod:`xml.dom.minidom`: a minimal DOM implementation :mod:`xml.dom.pulldom`: support for building partial DOM trees :mod:`xml.dom`: the DOM API definition :mod:`xml.etree.ElementTree` doesn't expand external entities and raises a :exc:`ParserError` when an entity occurs. :mod:`xml.etree.ElementTree`: the ElementTree API, a simple and lightweight XML processor :mod:`xml.parsers.expat`: the Expat parser binding :mod:`xml.sax`: SAX2 base classes and convenience functions :mod:`xmlrpclib` doesn't expand external entities and omits them. A quadratic blowup attack is similar to a `Billion Laughs`_ attack; it abuses entity expansion, too. Instead of nested entities it repeats one large entity with a couple of thousand chars over and over again. The attack isn't as efficient as the exponential case but it avoids triggering parser countermeasures that forbid deeply nested entities. Decompression bombs (aka `ZIP bomb`_) apply to all XML libraries that can parse compressed XML streams such as gzipped HTTP streams or LZMA-compressed files. For an attacker it can reduce the amount of transmitted data by three magnitudes or more. Entity declarations can contain more than just text for replacement. They can also point to external resources or local files. The XML parser accesses the resource and embeds the content into the XML document. It is important to note that modules in the :mod:`xml` package require that there be at least one SAX-compliant XML parser available. The Expat parser is included with Python, so the :mod:`xml.parsers.expat` module will always be available. Python's interfaces for processing XML are grouped in the ``xml`` package. Safe Safe (2) Safe (3) Safe (4) Safe (5) Since Python 3.7.1, external general entities are no longer processed by default. Some XML libraries like Python's :mod:`xml.dom.pulldom` retrieve document type definitions from remote or local locations. The feature has similar implications as the external entity expansion issue. The :mod:`defusedxml` Package The XML handling submodules are: The XML modules are not secure against erroneous or maliciously constructed data.  If you need to parse untrusted or unauthenticated data see the :ref:`xml-vulnerabilities` and :ref:`defusedxml-package` sections. The XML processing modules are not secure against maliciously constructed data. An attacker can abuse XML features to carry out denial of service attacks, access local files, generate network connections to other machines, or circumvent firewalls. The `Billion Laughs`_ attack -- also known as exponential entity expansion -- uses multiple levels of nested entities. Each entity refers to another entity several times, and the final entity definition contains a small string. The exponential expansion results in several gigabytes of text and consumes lots of memory and CPU time. The documentation for `defusedxml`_ on PyPI has further information about all known attack vectors with examples and references. The documentation for the :mod:`xml.dom` and :mod:`xml.sax` packages are the definition of the Python bindings for the DOM and SAX interfaces. The following table gives an overview of the known attacks and whether the various modules are vulnerable to them. XML Processing Modules XML vulnerabilities `DTD`_ retrieval `defusedxml`_ is a pure Python package with modified subclasses of all stdlib XML parsers that prevent any potentially malicious operation. Use of this package is recommended for any server code that parses untrusted XML data. The package also ships with example exploits and extended documentation on more XML exploits such as XPath injection. billion laughs billion laughs / exponential entity expansion decompression bomb etree external entity expansion kind minidom pulldom quadratic blowup quadratic blowup entity expansion sax xmlrpc Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 01:18+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºç ï¼** :source:`Lib/xml/` **æåæ»å»** **æåæ»å»** (1) :mod:`xml.dom.minidom` ä¸ä¼æ©å±å¤é¨å®ä½ï¼åªæ¯ç®åå°è¿åæªæ©å±çå®ä½ã :mod:`xml.dom.minidom`ï¼æå°ç DOM å®ç° :mod:`xml.dom.pulldom`ï¼æ¯ææå»ºé¨å DOM æ  :mod:`xml.dom`ï¼DOM API å®ä¹ :mod:`xml.etree.ElementTree` ä¸ä¼æ©å±å¤é¨å®ä½å¹¶å¨å®ä½åçæ¶å¼å :exc:`ParserError`ã :mod:`xml.etree.ElementTree`ï¼ ElementTree APIï¼ä¸ä¸ªç®åèè½»éçº§çXMLå¤çå¨ :mod:`xml.parsers.expat`ï¼Expatè§£æå¨ç»å® :mod:`xml.sax`ï¼SAX2 åºç±»åä¾¿å©å½æ° :mod:`xmlrpclib` ä¸æ©å±å¤é¨å®ä½å¹¶çç¥å®ä»¬ã äºæ¬¡çç¸æ»å»ç±»ä¼¼äº `Billion Laughs`_ æ»å»ï¼å®ä¹æ»¥ç¨äºå®ä½æ©å±ã å®ä¸æ¯åµå¥å®ä½ï¼èæ¯ä¸éåä¸éå°éå¤ä¸ä¸ªå·æå åä¸ªå­ç¬¦çå¤§åå®ä½ã è¿ç§æ»å»ä¸å¦éå½æåµææï¼ä½å®å¯é¿åè§¦åç¦æ­¢æ·±åº¦åµå¥å®ä½çè§£æå¨å¯¹ç­ã Decompression bombsï¼è§£åç¸å¼¹ï¼åå `ZIP bomb`_ï¼éç¨äºææå¯ä»¥è§£æåç¼© XML æµï¼ä¾å¦ gzip åç¼©ç HTTP æµæ LZMA åç¼©çæä»¶ï¼ç XML åºã å¯¹äºæ»å»èæ¥è¯´ï¼å®å¯ä»¥å°ä¼ è¾çæ°æ®éåå°ä¸ä¸ªéçº§ææ´å¤ã å®ä½å£°æå¯ä»¥åå«çä¸ä»ä»æ¯æ¿æ¢ææ¬ã å®ä»¬è¿å¯ä»¥æåå¤é¨èµæºææ¬å°æä»¶ã XML è§£æå¨è®¿é®èµæºå¹¶å°åå®¹åµå¥å° XML ææ¡£ä¸­ã å¼å¾æ³¨æçæ¯ :mod:`xml` åä¸­çæ¨¡åè¦æ±è³å°æä¸ä¸ª SAX å¼å®¹ç XML è§£æå¨å¯ç¨ãå¨ Python ä¸­åå« Expat è§£æå¨ï¼å æ­¤ :mod:`xml.parsers.expat` æ¨¡åå°å§ç»å¯ç¨ã ç¨äºå¤çXMLçPythonæ¥å£åç»å¨ ``xml`` åä¸­ã å®å¨ å®å¨ (2) å®å¨ (3) å®å¨ (4) å®å¨ (5) ä» Python 3.7.1 å¼å§ï¼é»è®¤æåµä¸ä¸åå¤çå¤é¨éç¨å®ä½ã Python çä¸äº XML åº :mod:`xml.dom.pulldom` ä»è¿ç¨ææ¬å°ä½ç½®æ£ç´¢ææ¡£ç±»åå®ä¹ã è¯¥åè½ä¸å¤é¨å®ä½æ©å±é®é¢å·æç¸ä¼¼çå«ä¹ã :mod:`defusedxml` å XML å¤çå­æ¨¡ååæ¬: XML æ¨¡åå¯¹äºéè¯¯ææ¶ææé çæ°æ®æ¯ä¸å®å¨çã å¦æä½ éè¦è§£æä¸åä¿¡ä»»ææªç»èº«ä»½éªè¯çæ°æ®ï¼è¯·åé :ref:`xml-vulnerabilities` å :ref:`defusedxml-package` é¨åã XML å¤çæ¨¡åå¯¹äºæ¶ææé çæ°æ®æ¯ä¸å®å¨çã æ»å»èå¯è½æ»¥ç¨ XML åè½æ¥æ§è¡æç»æå¡æ»å»ãè®¿é®æ¬å°æä»¶ãçæä¸å¶å®è®¡ç®æºçç½ç»è¿æ¥æç»è¿é²ç«å¢ã `Billion Laughs`_ æ»å» -- ä¹ç§°ä¸ºéå½å®ä½æ©å± -- ä½¿ç¨å¤çº§åµå¥å®ä½ã æ¯ä¸ªå®ä½å¤æ¬¡å¼ç¨å¦ä¸ä¸ªå®ä½ï¼æç»å®ä½å®ä¹åå«ä¸ä¸ªå°å­ç¬¦ä¸²ã ææ°çº§æ©å±å¯¼è´å å GB çææ¬ï¼å¹¶æ¶èå¤§éåå­å CPU æ¶é´ã PyPIä¸ `defusedxml`_ çææ¡£åå«æå³ææå·²ç¥æ»å»åéçæ´å¤ä¿¡æ¯ä»¥åç¤ºä¾ååèã :mod:`xml.dom` å :mod:`xml.sax` åçææ¡£æ¯ DOM å SAX æ¥å£ç Python ç»å®çå®ä¹ã ä¸è¡¨æ¦è¿°äºå·²ç¥çæ»å»ä»¥ååç§æ¨¡åæ¯å¦å®¹æåå°æ»å»ã XMLå¤çæ¨¡å XML æ¼æ´ `DTD`_ retrieval `defusedxml`_ æ¯ä¸ä¸ªçº¯ Python è½¯ä»¶åï¼å®ä¿®æ¹äºæææ ååº XML è§£æå¨çå­ç±»ï¼å¯ä»¥é²æ­¢ä»»ä½æ½å¨çæ¶ææä½ã å¯¹äºè§£æä¸åä¿¡ä»»çXMLæ°æ®çä»»ä½æå¡å¨ä»£ç ï¼å»ºè®®ä½¿ç¨æ­¤ç¨åºåã è¯¥è½¯ä»¶åè¿æä¾äºæå³æ´å¤ XML æ¼æ´ï¼å¦ XPath æ³¨å¥ï¼çç¤ºä¾æ¼æ´åæ©å±ææ¡£ã billion laughs billion laughs / exponential entity expansion ï¼çç¬/éå½å®ä½æ©å±ï¼ decompression bomb etree external entity expansion ç§ç±» minidom pulldom quadratic blowup quadratic blowup entity expansionï¼äºæ¬¡çç¸å®ä½æ©å±ï¼ sax xmlrpc 