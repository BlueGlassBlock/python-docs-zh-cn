Þ    Z      ì              ¼  )   ½     ç  '     '   *  =   R  w     ¶     ¹   ¿  
   y  é     »   n	  m   *
  H   
  H   á
  F   *  ?   q  »   ±     m  [   ü     X     Ü  w   \  v   Ô  º  K                          ?  ú   Í    È  k   X  a   Ä  Å  &  å  ì     Ò  ò  Z    M  ¶   U          §  ²   B   o  õ   d   e"  6   Ê"  *  #  ¦  ,$  2  Ó%  Ó   '  6   Ú'     (  :   (  Ú   ×(  e  ²)  ò  +  É   -  £  Õ-  %  y/    2    ½3  4   [5  þ   5  E   6     Õ6     ^7     æ7  7   p8  0   ¨8  B   Ù8  K   9  ¬   h9  B   :  i   X:    Â:  ¤   Þ;     <  '  =     B>  i   T>  B   ¾>  ?   ?  @   A?  ?   ?  >   Â?  :   @     <@  c   E@  @   ©@  N   ê@  ¿  9A  '   ùB     !C  '   >C  '   fC  =   C  q   ÌC  ¶   >D  ¥   õD     E  Ì   ¢E     oF  Q   üF  @   NG  @   G  9   ÐG  6   
H  ì   AH     .I  M   ±I  y   ÿI     yJ  b   üJ  k   _K    ËK     eM     lM     qM     }M     M  á   &N  }  O  n   P  d   õP  ×  ZQ  ®  2S     áV  î  bW  é   QY     ;Z     ÌZ     ^[  ¿   ö[    ¶\  k   8^  D   ¤^  &  é^     `    ±a  Ü   Ñb  D   ®c  v   óc  9   jd  Á   ¤d  \  fe  ô  Ãf  ©   ¸h  s  bi    Öj  î   Üm  i  Ën  /   5p  Ü   ep  K   Bq     q  u   "r     r  +   ,s  %   Xs  8   ~s  P   ·s  ¥   t  6   ®t  p   åt  ó   Vu     Jv     ãv    mw     rx  W   x  6   ×x  7   y  C   Fy  @   y  F   Ëy  4   z     Gz  W   Nz  -   ¦z  I   Ôz   **Source code:** :source:`Lib/nntplib.py` *group_pattern* was added. *usenetrc* is now ``False`` by default. :mod:`nntplib` --- NNTP protocol client :ref:`Availability <availability>`: not Emscripten, not WASI. A string describing the software name and version of the NNTP server, or :const:`None` if not advertised by the server. All commands will raise an :ref:`auditing event <auditing>` ``nntplib.putline`` with arguments ``self`` and ``line``, where ``line`` is the bytes about to be sent to the remote host. An integer representing the version of the NNTP protocol supported by the server.  In practice, this should be ``2`` for servers advertising :rfc:`3977` compliance and ``1`` for others. Attributes Decode a header value, un-escaping any escaped non-ASCII characters. *header_str* must be a :class:`str` object.  The unescaped value is returned.  Using this function is recommended to display some headers in a human readable form:: Derived from the standard exception :exc:`Exception`, this is the base class for all exceptions raised by the :mod:`nntplib` module.  Instances of this class have the following attribute: Exception raised when a reply is received from the server that does not begin with a digit in the range 1--5. Exception raised when a response code in the range 400--499 is received. Exception raised when a response code in the range 500--599 is received. Exception raised when an unexpected reply is received from the server. Exception raised when there is some error in the response data. Get a description for a single group *group*.  If more than one group matches (if 'group' is a real wildmat string), return the first match.   If no group matches, return an empty string. Here are two small examples of how it can be used.  To list some statistics about a newsgroup and print the subjects of the last 10 articles:: If *flag* has another value, then the status of the newsgroup should be considered unknown. If the *timeout* parameter is set to be zero, it will raise a :class:`ValueError` to prevent the creation of a non-blocking socket. If the method succeeds, the server's response is returned.  If the server refuses posting, a :class:`NNTPReplyError` is raised. It is advisable to use the :func:`decode_header` function on header values when they may contain non-ASCII characters:: Many of the following methods have been reworked and fixed, which makes them incompatible with their 3.1 counterparts. Many of the following methods take an optional keyword-only argument *file*. When the *file* argument is supplied, it must be either a :term:`file object` opened for binary writing, or the name of an on-disk file to be written to. The method will then write any data returned by the server (except for the response line and the terminating dot) to the file; any list of lines, tuples or objects that the method normally returns will be empty. Methods NNTP NNTP Objects Network News Transfer Protocol Note that SSL-on-563 is discouraged per :rfc:`4642`, in favor of STARTTLS as described below.  However, some servers only support the former. Note that this may not be done after authentication information has been transmitted, and authentication occurs by default if possible during a :class:`NNTP` object initialization.  See :meth:`NNTP.login` for information on suppressing this behavior. Post an article using the ``POST`` command.  The *data* argument is either a :term:`file object` opened for binary reading, or any iterable of bytes objects (representing raw lines of the article to be posted).  It should represent a well-formed news article, including the required headers.  The :meth:`post` method automatically escapes lines beginning with ``.`` and appends the termination line. Raises an :ref:`auditing event <auditing>` ``nntplib.connect`` with arguments ``self``, ``host``, ``port``. Raises an :ref:`auditing event <auditing>` ``nntplib.putline`` with arguments ``self``, ``line``. Return a new :class:`NNTP_SSL` object, representing an encrypted connection to the NNTP server running on host *host*, listening at port *port*.  :class:`NNTP_SSL` objects have the same methods as :class:`NNTP` objects.  If *port* is omitted, port 563 (NNTPS) is used. *ssl_context* is also optional, and is a :class:`~ssl.SSLContext` object. Please read :ref:`ssl-security` for best practices. All other parameters behave the same as for :class:`NNTP`. Return a new :class:`NNTP` object, representing a connection to the NNTP server running on host *host*, listening at port *port*. An optional *timeout* can be specified for the socket connection. If the optional *user* and *password* are provided, or if suitable credentials are present in :file:`/.netrc` and the optional flag *usenetrc* is true, the ``AUTHINFO USER`` and ``AUTHINFO PASS`` commands are used to identify and authenticate the user to the server.  If the optional flag *readermode* is true, then a ``mode reader`` command is sent before authentication is performed.  Reader mode is sometimes necessary if you are connecting to an NNTP server on the local machine and intend to call reader-specific commands, such as ``group``.  If you get unexpected :exc:`NNTPPermanentError`\ s, you might need to set *readermode*. The :class:`NNTP` class supports the :keyword:`with` statement to unconditionally consume :exc:`OSError` exceptions and to close the NNTP connection when done, e.g.: Return a pair ``(response, date)``.  *date* is a :class:`~datetime.datetime` object containing the current date and time of the server. Return a pair ``(response, overviews)``.  *overviews* is a list of ``(article_number, overview)`` tuples, one for each article selected by *message_spec*.  Each *overview* is a dictionary with the same number of items, but this number depends on the server.  These items are either message headers (the key is then the lower-cased header name) or metadata items (the key is then the metadata name prepended with ``":"``).  The following items are guaranteed to be present by the NNTP specification: Return the :rfc:`3977` capabilities advertised by the server, as a :class:`dict` instance mapping capability names to (possibly empty) lists of values. On legacy servers which don't understand the ``CAPABILITIES`` command, an empty dictionary is returned instead. Return the welcome message sent by the server in reply to the initial connection.  (This message sometimes contains disclaimers or help information that may be relevant to the user.) Same as :meth:`article()`, but sends a ``BODY`` command.  The *lines* returned (or written to *file*) will only contain the message body, not the headers. Same as :meth:`article()`, but sends a ``HEAD`` command.  The *lines* returned (or written to *file*) will only contain the message headers, not the body. Send ``AUTHINFO`` commands with the user name and password.  If *user* and *password* are ``None`` and *usenetrc* is true, credentials from ``~/.netrc`` will be used if possible. Send a ``GROUP`` command, where *name* is the group name.  The group is selected as the current group, if it exists.  Return a tuple ``(response, count, first, last, name)`` where *count* is the (estimated) number of articles in the group, *first* is the first article number in the group, *last* is the last article number in the group, and *name* is the group name. Send a ``HELP`` command.  Return a pair ``(response, list)`` where *list* is a list of help strings. Send a ``LAST`` command.  Return as for :meth:`.stat`. Send a ``LIST NEWSGROUPS`` command, where *grouppattern* is a wildmat string as specified in :rfc:`3977` (it's essentially the same as DOS or UNIX shell wildcard strings).  Return a pair ``(response, descriptions)``, where *descriptions* is a dictionary mapping group names to textual descriptions. Send a ``LIST`` or ``LIST ACTIVE`` command.  Return a pair ``(response, list)`` where *list* is a list of tuples representing all the groups available from this NNTP server, optionally matching the pattern string *group_pattern*.  Each tuple has the form ``(group, last, first, flag)``, where *group* is a group name, *last* and *first* are the last and first article numbers, and *flag* usually takes one of these values: Send a ``NEWGROUPS`` command.  The *date* argument should be a :class:`datetime.date` or :class:`datetime.datetime` object. Return a pair ``(response, groups)`` where *groups* is a list representing the groups that are new since the given *date*. If *file* is supplied, though, then *groups* will be empty. Send a ``NEWNEWS`` command.  Here, *group* is a group name or ``'*'``, and *date* has the same meaning as for :meth:`newgroups`.  Return a pair ``(response, articles)`` where *articles* is a list of message ids. Send a ``NEXT`` command.  Return as for :meth:`.stat`. Send a ``QUIT`` command and close the connection.  Once this method has been called, no other methods of the NNTP object should be called. Send a ``SLAVE`` command.  Return the server's *response*. Send a ``STARTTLS`` command.  This will enable encryption on the NNTP connection.  The *context* argument is optional and should be a :class:`ssl.SSLContext` object.  Please read :ref:`ssl-security` for best practices. Send a ``STAT`` command, where *message_spec* is either a message id (enclosed in ``'<'`` and ``'>'``) or an article number in the current group. If *message_spec* is omitted or :const:`None`, the current article in the current group is considered.  Return a triple ``(response, number, id)`` where *number* is the article number and *id* is the message id. Send an ``ARTICLE`` command, where *message_spec* has the same meaning as for :meth:`.stat`.  Return a tuple ``(response, info)`` where *info* is a :class:`~collections.namedtuple` with three attributes *number*, *message_id* and *lines* (in that order).  *number* is the article number in the group (or 0 if the information is not available), *message_id* the message id as a string, and *lines* a list of lines (without terminating newlines) comprising the raw message including headers and body. Send an ``IHAVE`` command. *message_id* is the id of the message to send to the server (enclosed in  ``'<'`` and ``'>'``).  The *data* parameter and the return value are the same as for :meth:`post()`. Send an ``OVER`` command, or an ``XOVER`` command on legacy servers. *message_spec* can be either a string representing a message id, or a ``(first, last)`` tuple of numbers indicating a range of articles in the current group, or a ``(first, None)`` tuple indicating a range of articles starting from *first* to the last article in the current group, or :const:`None` to select the current article in the current group. Send an ``XHDR`` command.  The *hdr* argument is a header keyword, e.g. ``'subject'``.  The *str* argument should have the form ``'first-last'`` where *first* and *last* are the first and last article numbers to search. Return a pair ``(response, list)``, where *list* is a list of pairs ``(id, text)``, where *id* is an article number (as a string) and *text* is the text of the requested header for that article. If the *file* parameter is supplied, then the output of the  ``XHDR`` command is stored in a file.  If *file* is a string, then the method will open a file with that name, write to it  then close it. If *file* is a :term:`file object`, then it will start calling :meth:`write` on it to store the lines of the command output. If *file* is supplied, then the returned *list* is an empty list. Send an ``XOVER`` command.  *start* and *end* are article numbers delimiting the range of articles to select.  The return value is the same of for :meth:`over()`.  It is recommended to use :meth:`over()` instead, since it will automatically use the newer ``OVER`` command if available. Set the instance's debugging level.  This controls the amount of debugging output printed.  The default, ``0``, produces no debugging output.  A value of ``1`` produces a moderate amount of debugging output, generally a single line per request or response.  A value of ``2`` or higher produces the maximum amount of debugging output, logging each line sent and received on the connection (including message text). Support for the :keyword:`with` statement was added. The *response* that is returned as the first item in the return tuple of almost all methods is the server's response: a string beginning with a three-digit code.  If the server's response indicates an error, the method raises one of the above exceptions. The :mod:`nntplib` module is deprecated (see :pep:`594` for details). The class now supports hostname check with :attr:`ssl.SSLContext.check_hostname` and *Server Name Indication* (see :data:`ssl.HAS_SNI`). The following are optional NNTP extensions defined in :rfc:`2980`.  Some of them have been superseded by newer commands in :rfc:`3977`. The method now supports hostname check with :attr:`ssl.SSLContext.check_hostname` and *Server Name Indication* (see :data:`ssl.HAS_SNI`). The module also defines the following utility function: The module itself defines the following classes: The response of the server if available, as a :class:`str` object. The value of each item is either a string, or :const:`None` if not present. This command can return very large results, especially if *group_pattern* is not specified.  It is best to cache the results offline unless you really need to refresh them. This command is frequently disabled by NNTP server administrators. This elides the response code from the server.  If the response code is needed, use :meth:`descriptions`. This module defines the class :class:`NNTP` which implements the client side of the Network News Transfer Protocol.  It can be used to implement a news reader or poster, or automated news processors.  It is compatible with :rfc:`3977` as well as the older :rfc:`977` and :rfc:`2980`. This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. To post an article from a binary file (this assumes that the article has valid headers, and that you have right to post on the particular newsgroup):: Unless intentionally delayed, login is normally performed during the :class:`NNTP` object initialization and separately calling this function is unnecessary.  To force authentication to be delayed, you must not set *user* or *password* when creating the object, and must set *usenetrc* to False. Utility functions When connected, :class:`NNTP` and :class:`NNTP_SSL` objects support the following methods and attributes. ``=foo.bar``: Articles are filed in the ``foo.bar`` group instead. ``j``: Articles from peers are filed in the junk group instead. ``m``: The group is moderated and all postings must be approved. ``n``: No local postings are allowed, only articles from peers. ``x``: No local postings, and articles from peers are ignored. ``y``: Local postings and articles from peers are allowed. protocol the ``:bytes`` metadata: the number of bytes in the entire raw article (including headers and body) the ``:lines`` metadata: the number of lines in the article body the ``subject``, ``from``, ``date``, ``message-id`` and ``references`` headers Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 01:10+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç :** :source:`Lib/nntplib.py` å¢å äº *group_pattern*ã *usenetrc* ç°å¨é»è®¤ä¸º ``False``ã :mod:`nntplib` --- NNTP åè®®å®¢æ·ç«¯ :ref:`å¯ç¨æ§ <availability>`: é Emscriptenï¼é WASIã æè¿° NNTP æå¡å¨è½¯ä»¶åç§°åçæ¬çå­ç¬¦ä¸²ï¼å¦ææå¡å¨æªå£°ææ­¤ä¿¡æ¯åä¸º :const:`None`ã ææå½ä»¤é½ä¼å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``nntplib.putline``ï¼éå¸¦åæ° ``self`` å ``line``ï¼å¶ä¸­ ``line`` æ¯å³å°åéå°è¿ç¨ä¸»æºçå­èä¸²ã ä»£è¡¨æå¡å¨ææ¯æç NNTP åè®®çæ¬çæ´æ°ã å¨å®è·µä¸­ï¼è¿å¯¹å£°æéµå¾ª :rfc:`3977` çæå¡å¨åºä¸º ``2`` èå¯¹å¶ä»æå¡å¨åä¸º ``1``ã å±æ§ è§£ç æ å¤´å¼ï¼æ¢å¤ä»»ä½è¢«è½¬ä¹çé ASCII å­ç¬¦ã *header_str* å¿é¡»ä¸º :class:`str` å¯¹è±¡ã å°è¿åè¢«æ¢å¤çå¼ã æ¨èä½¿ç¨æ­¤å½æ°æ¥ä»¥äººç±»å¯è¯»çå½¢å¼æ¾ç¤ºæäºæ å¤´:: æ´¾çèªæ åå¼å¸¸ :exc:`Exception`ï¼è¿æ¯ :mod:`nntplib` æ¨¡åä¸­å¼åçææå¼å¸¸çåºç±»ã è¯¥ç±»çå®ä¾å·æä»¥ä¸å±æ§: å½ä»æå¡å¨æ¶å°ä¸æ¯ä»¥æ°å­ 1--5 å¼å¤´çç­å¤æ¶æå¼åçå¼å¸¸ã æ¶å° 400--499 èå´åçååºä»£ç æ¶æå¼åçå¼å¸¸ã æ¶å° 500--599 èå´åçååºä»£ç æ¶æå¼åçå¼å¸¸ã ä»æå¡å¨æ¶å°æå¤ç­å¤æ¶ï¼å°å¼åæ¬å¼å¸¸ã å½ååºæ°æ®ä¸­å­å¨éè¯¯æ¶æå¼åçå¼å¸¸ã è·ååä¸ªæ°é»ç» *group* çæè¿°ã å¦æå¹éå°ä¸ä¸ªä»¥ä¸çæ°é»ç»ï¼å¦æ 'group' æ¯ä¸ä¸ªçå®ç wildmat å­ç¬¦ä¸²ï¼ï¼åè¿åç¬¬ä¸ä¸ªå¹éç»æã å¦ææªå¹éå°ä»»ä½æ°é»ç»ï¼åè¿åç©ºå­ç¬¦ä¸²ã ä¸é¢æ¯æ­¤æ¨¡åçä¸¤ä¸ªç®åç¨æ³ç¤ºä¾ã ååºæä¸ªæ°é»ç»çä¸äºç»è®¡æ°æ®å¹¶æå°æè¿ 10 ç¯æç« çä¸»é¢:: å¦æ *flag* å·æå¶ä»å¼ï¼åæ°é»ç»çç¶æåºå½è¢«è§ä¸ºæªç¥ã å¦æ *timeout* åæ°è®¾ç½®ä¸º 0ï¼åå»ºéé»å¡å¥æ¥å­æ¶ï¼å®å°å¼å :class:`ValueError` æ¥é»æ­¢è¯¥æä½ã å¦ææ­¤æ¹æ³æ§è¡æåï¼å°è¿åæå¡å¨çååºã å¦ææå¡å¨æç»ååºï¼åä¼å¼å :class:`NNTPReplyError`ã å»ºè®®å¨æ å¤´å¼å¯è½åå«é ASCII å­ç¬¦çæ¶åå¯¹å¶ä½¿ç¨ :func:`decode_header` å½æ°:: ä»¥ä¸æ¹æ³ä¸­è®¸å¤é½å·²è¢«éååä¿®æ­£ï¼è¿ä½¿å¾å®ä»¬ä¸åä¸ 3.1 ä¸­çååæ¹æ³ç¸å¼å®¹ã ä»¥ä¸æ¹æ³ä¸­è®¸å¤é½æ¥åä¸ä¸ªå¯éçä»éå³é®å­åæ° *file*ã å½æä¾äº *file* åæ°æ¶ï¼å®å¿é¡»ä¸ºæå¼ç¨äºäºè¿å¶åå¥ç :term:`file object`ï¼æè¦åå¥çç£çæä»¶åç§°ã æ­¤ç±»æ¹æ³éåå°ææå¡å¨è¿åçä»»ææ°æ®ï¼é¤äºååºè¡åè¡¨ç¤ºç»æçç¹å·ï¼åå¥å°æä»¶ä¸­ï¼æ­¤ç±»æ¹æ³éå¸¸è¿åçä»»ä½è¡åè¡¨ãåç»æå¯¹è±¡é½å°ä¸ºç©ºå¼ã æ¹æ³ NNTP NNTP å¯¹è±¡ ç½ç»æ°é»ä¼ è¾åè®® è¯·æ³¨æ :rfc:`4642` ä¸åæ¨èä½¿ç¨ 563 ç«¯å£ç SSLï¼å»ºè®®æ¹ç¨ä¸ææè¿°ç STARTTLSã ä½æ¯ï¼æäºæå¡å¨åªæ¯æåèã è¯·æ³¨ææ­¤æä½å¯è½ä¸ä¼å¨ä¼ è¾éªè¯ä¿¡æ¯ä¹åç«å³å®æï¼åªè¦æå¯è½éªè¯é»è®¤ä¼å¨ :class:`NNTP` å¯¹è±¡åå§åæé´åçã è¯·åé :meth:`NNTP.login` äºè§£æå³å¦ä½å±è½æ­¤è¡ä¸ºçä¿¡æ¯ã ä½¿ç¨ ``POST`` å½ä»¤åå¸æç« ã *data* åæ°æ¯ä»¥äºè¿å¶è¯»åæ¨¡å¼æå¼ç :term:`file object`ï¼ææ¯ä»»æåå«å­èä¸²å¯¹è±¡çå¯è¿­ä»£å¯¹è±¡ (è¡¨ç¤ºè¦åå¸çæç« çåå§è¡æ°æ®)ã å®åºå½ä»£è¡¨ä¸ç¯éå½æ ¼å¼çæ°é»ç»æç« ï¼åå«æéçæ å¤´ã :meth:`post` æ¹æ³ä¼èªå¨å¯¹ä»¥ ``.`` æå¤´çè¡æ°æ®è¿è¡è½¬ä¹å¹¶æ·»å ç»æè¡ã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``nntplib.connect``ï¼éå¸¦åæ° ``self``, ``host``, ``port``ã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``nntplib.putline``ï¼éå¸¦åæ° ``self``, ``line``ã è¿åä¸ä¸ªæ°ç :class:`NNTP_SSL` å¯¹è±¡ï¼ä»£è¡¨ä¸ä¸ªå¯¹è¿è¡äºä¸»æº *host*ï¼å¨ç«¯å£ *port* ä¸çå¬ç NNTP æå¡å¨çè¿æ¥ã :class:`NNTP_SSL` å¯¹è±¡å·æä¸ :class:`NNTP` å¯¹è±¡ç¸åçæ¹æ³ã å¦æ *port* è¢«çç¥ï¼åä¼ä½¿ç¨ç«¯å£ 563 (NNTPS)ã *ssl_context* ä¹æ¯å¯éçï¼ä¸ä¸ºä¸ä¸ª :class:`~ssl.SSLContext` å¯¹è±¡ã è¯·éè¯» :ref:`ssl-security` æ¥äºè§£æä½³å®è·µã ææå¶ä»å½¢åçè¡ä¸ºé½ä¸ :class:`NNTP` çç¸åã è¿åä¸ä¸ªæ°ç :class:`NNTP` å¯¹è±¡ï¼ä»£è¡¨ä¸ä¸ªå¯¹è¿è¡äºä¸»æº *host*ï¼å¨ç«¯å£ *port* ä¸çå¬ç NNTP æå¡å¨çè¿æ¥ã å¯ä»¥ä¸ºå¥æ¥å­è¿æ¥æå®å¯éç *timeout*ã å¦ææä¾äºå¯éç *user* å *password*ï¼æèå¦æå¨ :file:`/.netrc` ä¸­å­å¨éåçå­è¯å¹¶ä¸å¯éçææ  *usenetrc* ä¸ºçå¼ï¼åä¼ä½¿ç¨ ``AUTHINFO USER`` å ``AUTHINFO PASS`` å½ä»¤å¨æå¡å¨ä¸æ è¯åè®¤è¯ç¨æ·ã å¦æå¯éçææ  *readermode* ä¸ºçå¼ï¼åä¼å¨æ§è¡è®¤è¯ä¹ååé ``mode reader`` å½ä»¤ã å¨æäºæ¶åå¦æä½ æ¯è¿æ¥æ¬å°æºå¨ä¸ç NNTP æå¡å¨å¹¶ä¸æ³è¦è°ç¨è¯»åèä¸å±å½ä»¤å¦ ``group`` é£ä¹è¿å¿é¡»ä½¿ç¨è¯»åèæ¨¡å¼ã å¦æä½ æ¶å°é¢æä¹å¤ç :exc:`NNTPPermanentError`ï¼ä½ å¯è½éè¦è®¾ç½® *readermode*ã :class:`NNTP` ç±»æ¯æä½¿ç¨ :keyword:`with` è¯­å¥æ¥æ æ¡ä»¶å°æ¶è´¹ :exc:`OSError` å¼å¸¸å¹¶å¨ç»ææ¶å³é­ NNTP è¿æ¥ï¼ä¾å¦: è¿åä¸ä¸ª ``(response, date)`` å¯¹ã *date* æ¯åå«æå¡å¨å½åæ¥æä¸æ¶é´ç :class:`~datetime.datetime` å¯¹è±¡ã è¿åä¸ä¸ª ``(response, overviews)`` å¯¹ã å¶ä¸­ *overviews* æ¯ä¸ä¸ªåå« ``(article_number, overview)`` åç»çåè¡¨ï¼æ¯ä¸ªåç»å¯¹åº *message_spec* æéå®çä¸ç¯æç« ã æ¯ä¸ª *overview* åæ¯åå«åæ ·æ°éæ¡ç®çå­å¸ï¼ä½å·ä½æ°éåå³äºæå¡å¨ã è¿äºæ¡ç®ææ¯ä¸ºæ¶æ¯æ å¤´ï¼å¯¹åºé®ä¸ºå°åçæ å¤´åç§°ï¼ææ¯ä¸º metadata é¡¹ï¼å¯¹åºé®ä¸ºä»¥ ``":"`` æå¤´ç metadata åç§°ï¼ã ä»¥ä¸æ¡ç®ä¼ç± NNTP è§èæè¿°æ¥ç¡®ä¿æä¾: è¿åæå¡å¨æå£°æç :rfc:`3977` åè½ï¼å¶å½¢å¼ä¸ºå°åè½åç§°æ å°å°ï¼å¯è½ä¸ºç©ºçï¼å¼åè¡¨ç :class:`dict` å®ä¾ã å¨ä¸è½è¯å« ``CAPABILITIES`` å½ä»¤çæ§å¼æå¡å¨ä¸ï¼ä¼è¿åä¸ä¸ªç©ºå­å¸ã è¿åæå¡å¨åéçæ¬¢è¿æ¶æ¯ï¼ä½ä¸ºè¿æ¥å¼å§çåå¤ãï¼è¯¥æ¶æ¯ææ¶åå«ä¸ç¨æ·æå³çåè´£å£°ææå¸®å©ä¿¡æ¯ãï¼ ä¸ :meth:`article()` ç±»ä¼¼ï¼ä½ä¼åé ``BODY`` å½ä»¤ã è¿åç *lines* (æåå¥å° *file*) å°åªåå«æ¶æ¯ä½ï¼ä¸åå«æ å¤´ã ä¸ :meth:`article()` ç±»ä¼¼ï¼ä½ä¼åé ``HEAD`` å½ä»¤ã è¿åç *lines* (æåå¥å° *file*) å°åªåå«æ¶æ¯æ å¤´ï¼ä¸åå«æ¶æ¯ä½ã åé ``AUTHINFO`` å½ä»¤å¹¶éå¸¦ç¨æ·ååå¯ç ã å¦æ *user* å *password* ä¸º ``None`` ä¸ *usenetrc* ä¸ºçå¼ï¼åä¼å¨å¯è½çæåµä¸ä½¿ç¨æ¥èª ``~/.netrc`` çå­è¯ã åé ``GROUP`` å½ä»¤ï¼å¶ä¸­ *name* ä¸ºæ°é»ç»åç§°ã è¯¥æ°é»ç»å¦æå­å¨ï¼åä¼è¢«éå®ä¸ºå½åæ°é»ç»ã è¿åä¸ä¸ªåç» ``(response, count, first, last, name)``ï¼å¶ä¸­ *count* æ¯è¯¥æ°é»ç»ä¸­ï¼ä¼°è®¡çï¼æç« æ°éï¼*first* æ¯æ°é»ç»ä¸­ç¬¬ä¸ç¯æç« çç¼å·ï¼*last* æ¯æ°é»ç»ä¸­æåä¸ç¯æç« çç¼å·ï¼è *name* æ¯æ°é»ç»åç§°ã åé ``HELP`` å½ä»¤ã è¿åä¸ä¸ª ``(response, list)`` å¯¹ï¼å¶ä¸­ *list* ä¸ºå¸®å©å­ç¬¦ä¸²åè¡¨ã åé ``LAST`` å½ä»¤ã è¿åä¸ :meth:`.stat` ç±»ä¼¼çç»æã åé ``LIST NEWSGROUPS`` å½ä»¤ï¼å¶ä¸­ *grouppattern* ä¸º :rfc:`3977` ä¸­è§å®ç wildmat å­ç¬¦ä¸²ï¼å®å®éä¸ä¸ DOS æ UNIX shell ééå­ç¬¦ä¸²ç¸åï¼ã è¿åä¸ä¸ª ``(response, descriptions)`` å¯¹ï¼å¶ä¸­ *descriptions* æ¯å°æ°é»ç»åç§°æ å°å°ææ¬æè¿°çå­å¸ã åé ``LIST`` æ ``LIST ACTIVE`` å½ä»¤ã è¿åä¸ä¸ª ``(response, list)`` å¯¹ï¼å¶ä¸­ *list* æ¯ä»£è¡¨æ­¤ NNTP æå¡å¨ä¸ææå¯ç¨æ°é»ç»çåç»åè¡¨ï¼å¹¶å¯éæ©å¹éæ¨¡å¼å­ç¬¦ä¸² *group_pattern*ã æ¯ä¸ªåç»çå½¢å¼ä¸º ``(group, last, first, flag)``ï¼å¶ä¸­ *group* ä¸ºæ°é»ç»åç§°ï¼*last* å *first* æ¯æåä¸ä¸ªåç¬¬ä¸ä¸ªæç« çç¼å·ï¼è *flag* éå¸¸ä¸ºä¸åå¼ä¹ä¸: åé ``NEWGROUPS`` å½ä»¤ã *date* åæ°åºä¸º :class:`datetime.date` æ :class:`datetime.datetime` å¯¹è±¡ã è¿åä¸ä¸ª ``(response, groups)`` å¯¹ï¼å¶ä¸­ *groups* æ¯ä»£è¡¨ç»å®i *date* ä»¥æ¥ææ°å»ºçæ°é»ç»ã ä½æ¯å¦ææä¾äº *file*ï¼å *groups* å°ä¸ºç©ºå¼ã åé ``NEWNEWS`` å½ä»¤ã è¿éï¼*group* æ¯æ°é»ç»åç§°æä¸º ``'*'``ï¼è *date* ä¸ :meth:`newgroups` ä¸­çå«ä¹ç¸åã è¿åä¸ä¸ª ``(response, articles)`` å¯¹ï¼å¶ä¸­ *articles* ä¸ºæ¶æ¯ ID åè¡¨ã åé ``NEXT`` å½ä»¤ã è¿åä¸ :meth:`.stat` ç±»ä¼¼çç»æã åé ``QUIT`` å½ä»¤å¹¶å³é­è¿æ¥ã ä¸æ¦æ­¤æ¹æ³è¢«è°ç¨ï¼NNTP å¯¹è±¡çå¶ä»æ¹æ³é½ä¸åºåè¢«è°ç¨ã åé ``SLAVE`` å½ä»¤ã è¿åæå¡å¨ç *ååº*ã åé ``STARTTLS`` å½ä»¤ã è¿å°å¨ NNTP è¿æ¥ä¸å¯ç¨å å¯ã *context* åæ°æ¯å¯éçä¸åºä¸º :class:`ssl.SSLContext` å¯¹è±¡ã è¯·éè¯» :ref:`ssl-security` äºè§£æä½³å®è·µã åé ``STAT`` å½ä»¤ï¼å¶ä¸­ *message_spec* ä¸ºæ¶æ¯ ID (åè£¹å¨ ``'<'`` å ``'>'`` ä¸­) æèå½åæ°é»ç»ä¸­çæç« ç¼å·ã å¦æ *message_spec* è¢«çç¥æä¸º :const:`None`ï¼åä¼éæ©å½åæ°é»ç»ä¸­çå½åæç« ã ååä¸ä¸ªä¸åç» ``(response, number, id)``ï¼å¶ä¸­ *number* ä¸ºæç« ç¼å·è *id* ä¸ºæ¶æ¯ IDã åé ``ARTICLE`` å½ä»¤ï¼å¶ä¸­ *message_spec* çå«ä¹ä¸ :meth:`.stat` ä¸­çç¸åã è¿åä¸ä¸ªåç» ``(response, info)``ï¼å¶ä¸­ *info* æ¯ä¸ä¸ª :class:`~collections.namedtuple`ï¼åå«ä¸ä¸ªå±æ§ *number*, *message_id* å *lines* (ææ­¤é¡ºåº)ã *number* æ¯æ°é»ç»ä¸­çæç« æ°é (æèå¦æè¯¥ä¿¡æ¯ä¸å¯ç¨åä¸º 0)ï¼*message_id* ä¸ºå­ç¬¦ä¸²å½¢å¼çæ¶æ¯ IDï¼è *lines* ä¸ºç±åæ¬æ å¤´åæ¶æ¯ä½çåå§æ¶æ¯çè¡ç»æçåè¡¨ (ä¸å¸¦æ«å°¾æ¢è¡ç¬¦)ã åé ``IHAVE`` å½ä»¤ã *message_id* ä¸ºè¦åç»æå¡å¨çæ¶æ¯ ID (åè£¹å¨ ``'<'`` å ``'>'`` ä¸­)ã *data* å½¢ååè¿åå¼ä¸ :meth:`post()` çä¸è´ã åé ``OVER`` å½ä»¤ï¼ææ¯æ§å¼æå¡å¨ä¸ç ``XOVER`` å½ä»¤ã *message_spec* å¯ä»¥æ¯è¡¨ç¤ºæ¶æ¯ ID çå­ç¬¦ä¸²ï¼ææ¯ææå½åæ°é»ç»åæç« èå´çæ°å­åç» ``(first, last)``ï¼ææ¯ææå½åæ°é»ç»åä» ``(first, None)`` *first* å°æåä¸ç¯æç« çåç»ï¼æèä¸º :const:`None` è¡¨ç¤ºéå®å½åæ°é»ç»åçå½åæç« ã åé ``XHDR`` å½ä»¤ã *hdr* åæ°æ¯æ å¤´å³é®å­ï¼ä¾å¦ ``'subject'``ã *str* åæ°çå½¢å¼åºä¸º ``'first-last'``ï¼å¶ä¸­ *first* å *last* æ¯è¦æç´¢çé¦ç¯åæ«ç¯æç« ç¼å·ã è¿åä¸ä¸ª ``(response, list)`` å¯¹ï¼å¶ä¸­ *list* æ¯ ``(id, text)`` å¯¹çåè¡¨ï¼å¶ä¸­ *id* æ¯æç« ç¼å·ï¼å­ç¬¦ä¸²ç±»åï¼è *text* æ¯è¯¥æç« çè¯·æ±æ å¤´ã å¦ææä¾äº *file* å½¢åï¼å ``XHDR`` å½ä»¤çè¾åºä¼ä¿å­å°æä»¶ä¸­ã å¦æ *file* ä¸ºå­ç¬¦ä¸²ï¼åæ­¤æ¹æ³å°æå¼æå®åç§°çæä»¶ï¼åå¶åå¥åå®¹å¹¶å°å¶å³é­ã å¦æ *file* ä¸º :term:`file object`ï¼åå°å¨è¯¥æä»¶å¯¹è±¡ä¸è°ç¨ :meth:`write` æ¹æ³æ¥ä¿å­å½ä»¤æè¾åºçè¡ä¿¡æ¯ã å¦ææä¾äº *file*ï¼åè¿åç *list* å°ä¸ºç©ºåè¡¨ã åé ``XOVER`` å½ä»¤ã *start* å *end* æ¯éå¶æéåæç« èå´çæç« ç¼å·ã è¿åå¼ä¸ :meth:`over()` çç¸åã æ¨èæ¹ç¨ :meth:`over()`ï¼å ä¸ºå®å°å¨å¯è½çæåµä¸èªå¨ä½¿ç¨æ´æ°ç ``OVER`` å½ä»¤ã è®¾ç½®å®ä¾çè°è¯çº§å«ã å®æ§å¶çæå°è°è¯è¾åºä¿¡æ¯çæ°éã é»è®¤å¼ ``0`` ä¸äº§çè°è¯è¾åºã å¼ ``1`` äº§çä¸­ç­æ°éçè°è¯è¾åºï¼éå¸¸æ¯ä¸ªè¯·æ±æååºåäº§çä¸è¡ã å¤§äºç­äº ``2`` çå¼äº§çæå¤çè°è¯è¾åºï¼å¨è¿æ¥ä¸åéåæ¥æ¶çæ¯ä¸è¡ä¿¡æ¯é½ä¼è¢«è®°å½ä¸æ¥ï¼åæ¬æ¶æ¯ææ¬ï¼ã æ·»å äºå¯¹ :keyword:`with` è¯­å¥çæ¯æã ä½ä¸ºå ä¹å¨é¨æ¹æ³æè¿ååç»çç¬¬ä¸é¡¹è¿åç *response* æ¯æå¡å¨çååºï¼ä»¥ä¸ä½æ°å­ä»£ç æå¤´çå­ç¬¦ä¸²ã å¦ææå¡å¨çååºæ¯æç¤ºéè¯¯ï¼åæ¹æ³å°å¼åä¸è¿°å¼å¸¸ä¹ä¸ã :mod:`nntplib` æ¨¡åå·²è¢«å¼ç¨ï¼è¯·åé :pep:`594` äºè§£è¯¦æï¼ã æ¬ç±»ç°å¨æ¯æä½¿ç¨ :attr:`ssl.SSLContext.check_hostname` å *æå¡å¨åç§°æç¤º* ï¼åé :data:`ssl.HAS_SNI`ï¼è¿è¡ä¸»æºåæ£æ¥ã ä»¥ä¸æ¯å¨ :rfc:`2980` ä¸­å®ä¹çå¯é NNTP æ©å±ã å¶ä¸­ä¸äºå·²è¢« :rfc:`3977` ä¸­çæ°å½ä»¤æåä»£ã æ­¤æ¹æ³ç°å¨æ¯æä½¿ç¨ :attr:`ssl.SSLContext.check_hostname` å *æå¡å¨åç§°æç¤º* (åè§ :data:`ssl.HAS_SNI`) è¿è¡ä¸»æºåæ£æ¥ã è¿ä¸ªæ¨¡åè¿å®ä¹äºä¸åå·¥å·å½æ°: æ­¤æ¨¡åæ¬èº«å®ä¹äºä»¥ä¸çç±»: å¯ç¨çæå¡å¨ååºï¼ä¸ºä¸ :class:`str` å¯¹è±¡ã æ¯ä¸ªæ¡ç®çå¼æèä¸ºå­ç¬¦ä¸²ï¼æèå¨æ²¡æå¼æ¶ä¸º :const:`None`ã æ­¤å½ä»¤å¯è½è¿åéå¸¸åºå¤§çç»æï¼ç¹å«æ¯å½æªææ *group_pattern* çæ¶åã æå¥½æ¯ç¦»çº¿ç¼å­å¶ç»æï¼é¤éä½ ç¡®å®éè¦å·æ°å®ä»¬ã æ­¤å½ä»¤ç»å¸¸ä¼è¢« NNTP æå¡å¨ç®¡çåç¦ç¨ã æ­¤æ¹æ³ç¥å»äºæ¥èªæå¡å¨çååºä»£ç ã å¦æéè¦ååºä»£ç ï¼è¯·ä½¿ç¨ :meth:`descriptions`ã æ­¤æ¨¡åå®ä¹äº :class:`NNTP` ç±»æ¥å®ç°ç½ç»æ°é»ä¼ è¾åè®®çå®¢æ·ç«¯ã å®å¯è¢«ç¨äºå®ç°ä¸ä¸ªæ°é»éè¯»æåå¸å¨ï¼ææ¯æ°é»èªå¨å¤çç¨åºã å®å¼å®¹äº :rfc:`3977` ä»¥åè¾æ§ç :rfc:`977` å :rfc:`2980`ã æ­¤æ¨¡åå¨ WebAssembly å¹³å° ``wasm32-emscripten`` å ``wasm32-wasi`` ä¸ä¸éç¨æä¸å¯ç¨ã è¯·åé :ref:`wasm-availability` äºè§£è¯¦æã è¦åºäºä¸ä¸ªäºè¿å¶æä»¶åå¸æç«  (åå®æç« åå«ææçæ å¤´ï¼å¹¶ä¸ä½ æå¨ç¹å®æ°é»ç»ä¸åå¸åå®¹çæé):: é¤éè¢«ææå»¶è¿ï¼ç»å½æä½éå¸¸ä¼å¨ :class:`NNTP` å¯¹è±¡åå§åæé´è¢«æ§è¡å èæ²¡æå¿è¦åç¬è°ç¨æ­¤å½æ°ã è¦å¼ºå¶å»¶è¿éªè¯ï¼ä½ å¨åå»ºè¯¥å¯¹è±¡æ¶ä¸è½è®¾ç½® *user* æ *password*ï¼å¹¶å¿é¡»å° *usenetrc* è®¾ä¸º Falseã å·¥å·å½æ° å½è¿æ¥æ¶ï¼:class:`NNTP` å :class:`NNTP_SSL` å¯¹è±¡æ¯æä»¥ä¸æ¹æ³åå±æ§ã ``=foo.bar``: æç« ä¼è¢«è½¬å¥ ``foo.bar`` åç»ã ``j``: æ¥èªç»åçæç« ä¼è¢«è½¬å¥åå¾åç»ã ``m``: æ°é»ç»åå°ç®¡å¶å èææåå¸å¿é¡»ç»è¿å®¡æ ¸ã ``n``: ä¸åè®¸æ¬å°åå¸ï¼åªåè®¸æ¥èªç»åçæç« ã ``x``: ä¸åè®¸æ¬å°åå¸ï¼èæ¥èªç»åçæç« ä¼è¢«å¿½ç¥ã ``y``: åè®¸æ¥èªç»åçæ¬å°åå¸åæç« ã åè®® ``:bytes`` metadata: æ´ä¸ªåå§æç« æ°æ®çå­èæ°ï¼åæ¬æ å¤´åæ¶æ¯ä½ï¼ ``:lines`` metadata: æç« æ¶æ¯ä½çè¡æ° ``subject``, ``from``, ``date``, ``message-id`` å ``references`` æ å¤´ 