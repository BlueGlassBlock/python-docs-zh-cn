Þ    n                    ü  -   ý      +     L     k  <     =   Ä  î     +   ñ  =   	     [	     û	  â   
  þ   d  a   c  #   Å  r   é  y   \  -   Ö  å    Ó   ê     ¾    W     ç  :   ~  D   ¹    þ  b       y  #     ®   %  5   Ô  4   
  1   ?  ë   q  M   ]     «  l   ´  M   !    o       ë     H   v     ¿     Ö     ê  h   ÿ  W   h  9   À  s   ú  :   n  ù  ©    £"  R  &%     y'  ë   (  A   ò(  $   4)  `   Y)  Ç   º)  G   *  6   Ê*  o   +  b   q+  C   Ô+  m   ,  !   ,  (   ¨,  /   Ñ,  ,  -  l   ..  l   .  ¨   /  û   ±/     ­0  !  G1  q   i2  x   Û2     T3  _   t3  	  Ô3  b   Þ4  /  A5  ª   q6  ^   7  ^   {7  k   Ú7  }   F8  ]   Ä8  )   "9  7   L9  9   9  Y   ¾9  3   :  *   L:     w:  Ö   ;  Â   é;  @   ¬<    í<  Ò   >  ¤   Ù>  ,   ~?    «?  .  9A  U   hB     ¾B     ÜB     ãB     ìB  ¿  ûB  -   »D     éD  +   	E      5E  =   VE  3   E  Û   ÈE  +   ¤F  =   ÐF     G     G  Ó   H  Ø   íH  l   ÆI  '   3J  y   [J  s   ÕJ  1   IK  ²  {K  ¬   .N     ÛN  n  \O     ËP  3   UQ  9   Q  ÿ   ÃQ  K   ÃR  U  S     eT     T  6   U  6   VU  2   U  ´   ÀU  _   uV     ÕV  ]   ÜV  L   :W  þ   W     X  à   X  Q   lY     ¾Y     ÔY     çY  j   ûY  R   fZ  0   ¹Z  h   êZ  6   S[  û  [  r  ^  L  ù`     Fc  ä   Ïc  ?   ´d  '   ôd  W   e  Ú   te  H   Of  @   f  q   Ùf  ]   Kg  7   ©g  W   ág  !   9h  0   [h  &   h  +  ³h  Z   ßi  S   :j     j  ý   k     l    £l  ^   §m  r   n  !   yn  Q   n  ú   ín  U   èo  7  >p     vq  O   ÿq  P   Or  [    r  y   ür  O   vs  !   Æs  0   ès  2   t  O   Lt  %   t     Ât     Þt  Ç   }u  Â   Ev  9   w    Bw  °   ^x     y  $   ¨y  h  Íy  (  6{  F   _|     ¦|     Á|     È|     Ï|   **Source code:** :source:`Lib/http/client.py` *blocksize* parameter was added. *body* can now be an iterable. *source_address* was added. *source_address*, *context* and *check_hostname* were added. :class:`HTTPConnection` instances have the following methods: :meth:`parse_headers` does not parse the start-line of a HTTP message; it only parses the ``Name: value`` lines. The file has to be ready to read these field lines, so the first line should already be consumed before calling the function. :mod:`http.client` --- HTTP protocol client :ref:`Availability <availability>`: not Emscripten, not WASI. A :class:`http.client.HTTPMessage` instance containing the response headers.  :class:`http.client.HTTPMessage` is a subclass of :class:`email.message.Message`. A debugging hook.  If :attr:`debuglevel` is greater than zero, messages will be printed to stdout as the response is read and parsed. A subclass of :class:`HTTPConnection` that uses SSL for communication with secure servers.  Default port is ``443``.  If *context* is specified, it must be a :class:`ssl.SSLContext` instance describing the various SSL options. A subclass of :exc:`ConnectionResetError` and :exc:`BadStatusLine`.  Raised by :meth:`HTTPConnection.getresponse` when the attempt to read the response results in no data read from the connection, indicating that the remote end has closed the connection. A subclass of :exc:`HTTPException`, raised if a port is given and is either non-numeric or empty. A subclass of :exc:`HTTPException`. A subclass of :exc:`HTTPException`.  Raised if a server responds with a HTTP status code that we don't understand. A subclass of :exc:`HTTPException`.  Raised if an excessively long line is received in the HTTP protocol from the server. A subclass of :exc:`ImproperConnectionState`. An :class:`HTTPConnection` instance represents one transaction with an HTTP server.  It should be instantiated by passing it a host and optional port number.  If no port number is passed, the port is extracted from the host string if it has the form ``host:port``, else the default HTTP port (80) is used.  If the optional *timeout* parameter is given, blocking operations (like connection attempts) will timeout after that many seconds (if it is not given, the global default timeout setting is used). The optional *source_address* parameter may be a tuple of a (host, port) to use as the source address the HTTP connection is made from. The optional *blocksize* parameter sets the buffer size in bytes for sending a file-like message body. An :class:`HTTPResponse` instance wraps the HTTP response from the server.  It provides access to the request headers and the entity body.  The response is an iterable object and can be used in a with statement. An :class:`http.client.HTTPMessage` instance holds the headers from an HTTP response.  It is implemented using the :class:`email.message.Message` class. As HTTP/1.1 is used for HTTP CONNECT tunnelling request, `as per the RFC <https://datatracker.ietf.org/doc/html/rfc7231#section-4.3.6>`_, a HTTP ``Host:`` header must be provided, matching the authority-form of the request target provided as the destination for the CONNECT request. If a HTTP ``Host:`` header is not provided via the headers argument, one is generated and transmitted automatically. As an alternative to using the :meth:`request` method described above, you can also send your request step by step, by using the four functions below. Buffer size in bytes for sending a file-like message body. Chunked encoding support.  The *encode_chunked* parameter was added. Chunked transfer encoding has been added to the HTTP protocol version 1.1.  Unless the HTTP server is known to handle HTTP 1.1, the caller must either specify the Content-Length, or must pass a :class:`str` or bytes-like object that is not also a file as the body representation. Class whose instances are returned upon successful connection.  Not instantiated directly by user. Client side HTTP ``PUT`` requests are very similar to ``POST`` requests. The difference lies only on the server side where HTTP servers will allow resources to be created via ``PUT`` requests. It should be noted that custom HTTP methods are also handled in :class:`urllib.request.Request` by setting the appropriate method attribute. Here is an example session that uses the ``PUT`` method:: Close the connection to the server. Connect to the server specified when the object was created.  By default, this is called automatically when making a request if the client does not already have a connection. Deprecated in favor of :attr:`~HTTPResponse.headers`. Deprecated in favor of :attr:`~HTTPResponse.status`. Deprecated in favor of :attr:`~HTTPResponse.url`. Due to the chunked encoding specification, empty chunks yielded by an iterator body will be ignored by the chunk-encoder. This is to avoid premature termination of the read of the request by the target server due to malformed encoding. Example: ``http.client.responses[http.client.NOT_FOUND]`` is ``'Not Found'``. Examples For example, the following calls all create instances that connect to the server at the same host and port:: For example, to perform a ``GET`` request to ``https://docs.python.org/3/``:: For example, to tunnel through a HTTPS proxy server running locally on port 8080, we would pass the address of the proxy to the :class:`HTTPSConnection` constructor, and the address of the host that we eventually want to reach to the :meth:`~HTTPConnection.set_tunnel` method:: HTTP HTTP CONNECT tunnelling requests use protocol HTTP/1.1, upgraded from protocol HTTP/1.0. ``Host:`` HTTP headers are mandatory for HTTP/1.1, so one will be automatically generated and transmitted if not provided in the headers argument. HTTP protocol version used by server.  10 for HTTP/1.0, 11 for HTTP/1.1. HTTPConnection Objects HTTPMessage Objects HTTPResponse Objects HTTPS support is only available if Python was compiled with SSL support (through the :mod:`ssl` module). Headers of the response in the form of an :class:`email.message.EmailMessage` instance. Here is an example session that uses the ``GET`` method:: Here is an example session that uses the ``HEAD`` method.  Note that the ``HEAD`` method never returns any data. :: Here is an example session that uses the ``POST`` method:: If *body* is specified, the specified data is sent after the headers are finished.  It may be a :class:`str`, a :term:`bytes-like object`, an open :term:`file object`, or an iterable of :class:`bytes`.  If *body* is a string, it is encoded as ISO-8859-1, the default for HTTP.  If it is a bytes-like object, the bytes are sent as is.  If it is a :term:`file object`, the contents of the file is sent; this file object should support at least the ``read()`` method.  If the file object is an instance of :class:`io.TextIOBase`, the data returned by the ``read()`` method will be encoded as ISO-8859-1, otherwise the data returned by ``read()`` is sent as is.  If *body* is an iterable, the elements of the iterable are sent as is until the iterable is exhausted. If *encode_chunked* is ``True``, the result of each iteration of *message_body* will be chunk-encoded as specified in :rfc:`7230`, Section 3.3.1.  How the data is encoded is dependent on the type of *message_body*.  If *message_body* implements the :ref:`buffer interface <bufferobjects>` the encoding will result in a single chunk. If *message_body* is a :class:`collections.abc.Iterable`, each iteration of *message_body* will result in a chunk.  If *message_body* is a :term:`file object`, each call to ``.read()`` will result in a chunk. The method automatically signals the end of the chunk-encoded data immediately after *message_body*. If *headers* contains neither Content-Length nor Transfer-Encoding, but there is a request body, one of those header fields will be added automatically.  If *body* is ``None``, the Content-Length header is set to ``0`` for methods that expect a body (``PUT``, ``POST``, and ``PATCH``).  If *body* is a string or a bytes-like object that is not also a :term:`file <file object>`, the Content-Length header is set to its length.  Any other type of *body* (files and iterables in general) will be chunk-encoded, and the Transfer-Encoding header will automatically be set instead of Content-Length. If a :exc:`ConnectionError` or subclass is raised, the :class:`HTTPConnection` object will be ready to reconnect when a new request is sent. If neither Content-Length nor Transfer-Encoding are set in *headers*, file and iterable *body* objects are now chunk-encoded. The *encode_chunked* argument was added. No attempt is made to determine the Content-Length for file objects. If the CONNECT request was not sent, the method returns ``None``. Is ``True`` if the stream is closed. Note that you must have read the whole response before you can send a new request to the server. Parse the headers from a file pointer *fp* representing a HTTP request/response. The file has to be a :class:`BufferedIOBase` reader (i.e. not text) and must provide a valid :rfc:`2822` style header. Please read :ref:`ssl-security` for more information on best practices. Previously, :exc:`BadStatusLine`\ ``('')`` was raised. Raises an :ref:`auditing event <auditing>` ``http.client.connect`` with arguments ``self``, ``host``, ``port``. Raises an :ref:`auditing event <auditing>` ``http.client.send`` with arguments ``self``, ``data``. Reads and returns the response body, or up to the next *amt* bytes. Reads up to the next len(b) bytes of the response body into the buffer *b*. Returns the number of bytes read. Reason phrase returned by server. Return a list of (header, value) tuples. Return the ``fileno`` of the underlying socket. Return the value of the header *name*, or *default* if there is no header matching *name*.  If there is more than one  header with the name *name*, return all of the values joined by ', '.  If *default* is any iterable other than a single string, its elements are similarly returned joined by commas. Returns a dictionary with the headers of the response received from the proxy server to the CONNECT request. See :ref:`http-status-codes` for a list of HTTP status codes that are available in this module as constants. Send a blank line to the server, signalling the end of the headers. The optional *message_body* argument can be used to pass a message body associated with the request. Send an :rfc:`822`\ -style header to the server.  It sends a line to the server consisting of the header, a colon and a space, and the first argument.  If more arguments are given, continuation lines are sent, each consisting of a tab and an argument. Send data to the server.  This should be used directly only after the :meth:`endheaders` method has been called and before :meth:`getresponse` is called. Set the debugging level.  The default debug level is ``0``, meaning no debugging output is printed.  Any value greater than ``0`` will cause all currently defined debug output to be printed to stdout.  The ``debuglevel`` is passed to any new :class:`HTTPResponse` objects that are created. Set the host and the port for HTTP Connect Tunnelling. This allows running the connection through a proxy server. Should be called after a request is sent to get the response from the server. Returns an :class:`HTTPResponse` instance. Status code returned by server. The  *strict* parameter was removed. HTTP 0.9-style "Simple Responses" are no longer supported. The *encode_chunked* argument is only relevant if Transfer-Encoding is specified in *headers*.  If *encode_chunked* is ``False``, the HTTPConnection object assumes that all encoding is handled by the calling code.  If it is ``True``, the body will be chunk-encoded. The *headers* argument should be a mapping of extra HTTP headers to send with the CONNECT request. The *headers* argument should be a mapping of extra HTTP headers to send with the request. A :rfc:`Host header <2616#section-14.23>` must be provided to conform with :rfc:`RFC 2616 Â§5.1.2 <2616#section-5.1.2>` (unless connecting to an HTTP proxy server or using the ``OPTIONS`` or ``CONNECT`` methods). The *host* and *port* arguments specify the endpoint of the tunneled connection (i.e. the address included in the CONNECT request, *not* the address of the proxy server). The *strict* parameter was removed. HTTP 0.9 style "Simple Responses" are no longer supported. The *strict* parameter was removed. HTTP 0.9-style "Simple Responses" are no longer supported. The :class:`io.BufferedIOBase` interface is now implemented and all of its reader operations are supported. The `Requests package <https://requests.readthedocs.io/en/latest/>`_ is recommended for a higher-level HTTP client interface. The base class of the other exceptions in this module.  It is a subclass of :exc:`Exception`. The constants defined in this module are: The default port for the HTTP protocol (always ``80``). The default port for the HTTPS protocol (always ``443``). The deprecated *key_file*, *cert_file* and *check_hostname* parameters have been removed. The following exceptions are raised as appropriate: The module provides the following classes: This class now enables TLS 1.3 :attr:`ssl.SSLContext.post_handshake_auth` for the default *context* or when *cert_file* is passed with a custom *context*. This class now performs all the necessary certificate and hostname checks by default. To revert to the previous, unverified, behavior :func:`ssl._create_unverified_context` can be passed to the *context* parameter. This class now sends an ALPN extension with protocol indicator ``http/1.1`` when no *context* is given. Custom *context* should set ALPN protocols with :meth:`~ssl.SSLContext.set_alpn_protocol`. This dictionary maps the HTTP 1.1 status codes to the W3C names. This function returns an instance of :class:`http.client.HTTPMessage` that holds the header fields, but no payload (the same as :attr:`HTTPResponse.msg` and :attr:`http.server.BaseHTTPRequestHandler.headers`). After returning, the file pointer *fp* is ready to read the HTTP body. This module defines classes that implement the client side of the HTTP and HTTPS protocols.  It is normally not used directly --- the module :mod:`urllib.request` uses it to handle URLs that use HTTP and HTTPS. This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. This module provides the following function: This should be the first call after the connection to the server has been made. It sends a line to the server consisting of the *method* string, the *url* string, and the HTTP version (``HTTP/1.1``).  To disable automatic sending of ``Host:`` or ``Accept-Encoding:`` headers (for example to accept additional content encodings), specify *skip_host* or *skip_accept_encoding* with non-False values. This will send a request to the server using the HTTP request method *method* and the request URI *url*. The provided *url* must be an absolute path to conform with :rfc:`RFC 2616 Â§5.1.2 <2616#section-5.1.2>` (unless connecting to an HTTP proxy server or using the ``OPTIONS`` or ``CONNECT`` methods). URL of the resource retrieved, commonly used to determine if a redirect was followed. http.client (standard module) module protocol urllib.request Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 01:07+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç ï¼** :source:`Lib/http/client.py` æ·»å äº *blocksize* åæ°ã *body* ç°å¨å¯ä»¥æ¯å¯è¿­ä»£å¯¹è±¡äºã æ·»å äº*source_address* åæ° æ·»å äº *source_address*, *context* å *check_hostname*ã :class:`HTTPConnection` å®ä¾æ¥æä»¥ä¸æ¹æ³ï¼ :meth:`parse_headers` ä¸ä¼è§£æ HTTP æ¶æ¯çå¼å§è¡ï¼åªä¼è§£æå ``Name: value`` è¡ãæä»¶å¿é¡»ä¸ºè¯»åè¿äºå­æ®µåå¥½åå¤ï¼æä»¥å¨è°ç¨è¯¥å½æ°ä¹åï¼ç¬¬ä¸è¡åºè¯¥å·²ç»è¢«è¯»åè¿äºã :mod:`http.client` --- HTTP åè®®å®¢æ·ç«¯ :ref:`å¯ç¨æ§ <availability>`: é Emscriptenï¼é WASIã åå«ååºå¤´ç :class:`http.client.HTTPMessage` å®ä¾ã:class:`http.client.HTTPMessage` æ¯ :class:`email.message` çå­ç±»ã ä¸ä¸ªè°è¯é©å­ãå¦æ :attr:`debuglevel` å¤§äºé¶ï¼ç¶æä¿¡æ¯å°å¨è¯»ååè§£æååºæ°æ®æ¶æå°è¾åºå° stdoutã :class:`HTTPConnection` çå­ç±»ï¼ä½¿ç¨ SSL ä¸å®å¨æå¡å¨è¿è¡éä¿¡ã é»è®¤ç«¯å£ä¸º ``443``ã å¦ææå®äº *context*ï¼å®å¿é¡»ä¸ºä¸ä¸ªæè¿° SSL åéé¡¹ç :class:`ssl.SSLContext` å®ä¾ã :exc:`ConnectionResetError` å :exc:`BadStatusLine` çä¸ä¸ªå­ç±»ã å½å°è¯è¯»åååºæ¶çç»ææ¯æªä»è¿æ¥è¯»åå°æ°æ®æ¶ç± :meth:`HTTPConnection.getresponse` å¼åï¼è¡¨æè¿ç«¯å·²å³é­è¿æ¥ã :exc:`HTTPException` çä¸ä¸ªå­ç±»ï¼å¦æç»åºäºä¸ä¸ªéæ°å­æä¸ºç©ºå¼çç«¯å£å°±ä¼è¢«å¼åã :exc:`HTTPException` çä¸ä¸ªå­ç±»ã :exc:`HTTPException` çä¸ä¸ªå­ç±»ã å¦ææå¡å¨åé¦äºä¸ä¸ªæä»¬ä¸çè§£ç HTTP ç¶æç å°±ä¼è¢«å¼åã :exc:`HTTPException` çä¸ä¸ªå­ç±»ã å¦æå¨ HTTP åè®®ä¸­ä»æå¡å¨æ¥æ¶å°è¿é¿çè¡å°±ä¼è¢«å¼åã :exc:`ImproperConnectionState` çä¸ä¸ªå­ç±»ã :class:`HTTPConnection` çå®ä¾ä»£è¡¨ä¸ HTTP æå¡å¨çä¸ä¸ªè¿æ¥äºå¡ã å®å¨å®ä¾åæ¶åºå½ä¼ å¥ä¸ä¸ªä¸»æºåå¯éçç«¯å£å·ã è¥æªä¼ å¥ç«¯å£å·ï¼åå¦æä¸»æºå­ç¬¦ä¸²çå½¢å¼ä¸º ``host:port`` åä¼ä»ä¸­æåç«¯å£ï¼å¦åå°ä½¿ç¨é»è®¤ç HTTP ç«¯å£ï¼80ï¼ã å¦æç»åºäºå¯éç *timeout* å½¢åï¼åé»å¡æä½ï¼å¦è¿æ¥å°è¯ï¼å°å¨æå®çç§æ°ä¹åè¶æ¶ï¼å¦ææªç»åºï¼åä½¿ç¨å¨å±é»è®¤è¶æ¶è®¾ç½®ï¼ã å¯éç *source_address* å½¢åå¯ä»¥æ¯ä¸ä¸ª (host, port) åç»ï¼ç¨ä½è¿è¡ HTTP è¿æ¥çæºå°åã å¯éç *blocksize* å½¢åä»¥å­èä¸ºåä½è®¾ç½®ç¼å²åºçå¤§å°ï¼ç¨æ¥åéæä»¶ç±»æ¶æ¯ä½ã :class:`HTTPResponse` å®ä¾å°è£äºæ¥èªæå¡å¨ç HTTP ååºãéè¿å®å¯ä»¥è®¿é®è¯·æ±å¤´åååºä½ãååºæ¯å¯è¿­ä»£å¯¹è±¡ï¼å¯å¨ with è¯­å¥ä¸­ä½¿ç¨ã :class:`http.client.HTTPMessage` çå®ä¾å­æ HTTP ååºçå¤´é¨ä¿¡æ¯ãå©ç¨ :class:`email.message.Message` ç±»å®ç°ã å¨ HTTP/1.1 è¢«ç¨äº HTTP CONNECT é§éè¯·æ±æ¶ï¼`æ ¹æ®ç¸åºç RFC <https://datatracker.ietf.org/doc/html/rfc7231#section-4.3.6>`_ï¼å¿é¡»æä¾ä¸ä¸ª HTTP ``Host:`` æ å¤´ï¼ä»¥å¹éä½ä¸º CONNECT è¯·æ±çç®æ æä¾çè¯·æ±ç®æ  authority-formã å¦ææªéè¿ headers åæ°æä¾ HTTP ``Host:`` æ å¤´ï¼åä¼èªå¨çæå¹¶ä¼ éä¸ä¸ªæ å¤´ã ä½ä¸ºå¯¹ä½¿ç¨ä¸è¿° :meth:`request` æ¹æ³çæ¿ä»£åï¼ä½ ä¹å¯ä»¥éè¿ä½¿ç¨ä¸é¢çåä¸ªå½æ°ï¼åæ­¥éª¤åéè¯·çè¯·æ±ã ç¨äºåéæä»¶ç±»æ¶æ¯ä½çç¼å²åºå¤§å°ã æ¯æååç¼ç ãå å¥äº *encode_chunked* åæ°ã HTTP åè®®å¨ 1.1 çä¸­æ·»å äºåä¼ è¾ç¼ç ãé¤éæç¡®ç¥é HTTP æå¡å¨å¯ä»¥å¤ç HTTP 1.1ï¼è°ç¨èè¦ä¹å¿é¡»æå® Content-Lengthï¼è¦ä¹å¿é¡»ä¼ å¥ :class:`str` æå­èç±»å¯¹è±¡ï¼æ³¨æè¯¥å¯¹è±¡ä¸è½æ¯è¡¨è¾¾ body çæä»¶ã å¨æåè¿æ¥åè¿åç±»çå®ä¾ï¼èä¸æ¯ç±ç¨æ·ç´æ¥å®ä¾åã å®¢æ·ç«¯ HTTP ``PUT`` è¯·æ±ä¸ ``POST`` è¯·æ±éå¸¸ç¸ä¼¼ã åºå«ä»å¨äºæå¡å¨ç«¯ HTTP æå¡å¨å°åè®¸éè¿ ``PUT`` è¯·æ±åå»ºèµæºã åºè¯¥æ³¨æèªå®ä¹ç HTTP æ¹æ³ä¹å¯ä»¥å¨ :class:`urllib.request.Request` ä¸­éè¿è®¾ç½®éå½çæ¹æ³å±æ§æ¥è¿è¡å¤çã ä¸é¢æ¯ä¸ä¸ªä½¿ç¨ ``PUT`` æ¹æ³çä¼è¯ç¤ºä¾:: å³é­å°æå¡å¨çè¿æ¥ã å½å¯¹è±¡è¢«åå»ºåè¿æ¥å°æå®çæå¡å¨ã é»è®¤æåµä¸ï¼å¦æå®¢æ·ç«¯è¿æªå»ºç«è¿æ¥ï¼æ­¤å½æ°ä¼å¨åéè¯·æ±æ¶èªå¨è¢«è°ç¨ã å·²å¼ç¨ï¼å»ºè®®ç¨ :attr:`~HTTPResponse.headers`ã å·²å¼ç¨ï¼å»ºè®®ç¨ :attr:`~HTTPResponse.status` ã å·²å¼ç¨ï¼å»ºè®®ç¨ :attr:`~HTTPResponse.url`ã ç±äºååç¼ç çè§èè¦æ±ï¼è¿­ä»£å¨æ¬èº«äº§ççç©ºåå°è¢«ååç¼ç å¨å¿½ç¥ãè¿æ¯ä¸ºäºé¿åç®æ æå¡å¨å éè¯¯ç¼ç èè¿æ©ç»æ­¢å¯¹è¯·æ±çè¯»åã ä¾å¦ï¼``http.client.responses[http.client.NOT_FOUND]`` æ¯ ``'NOT FOUND`` ï¼æªåç°ï¼ã ä¾å­ ä¸¾ä¸ªä¾å­ï¼ä»¥ä¸è°ç¨é½æ¯åå»ºè¿æ¥å°åä¸ä¸»æºåç«¯å£çæå¡å¨çå®ä¾ï¼ ä¾å¦ï¼è¦å¯¹ ``https://docs.python.org/3/`` æ§è¡ä¸ä¸ª ``GET`` è¯·æ±:: ä¾å¦ï¼è¦éè¿ä¸ä¸ªè¿è¡äºæ¬æº 8080 ç«¯å£ç HTTPS ä»£çæå¡å¨é§éï¼æä»¬åºå½å :class:`HTTPSConnection` æé å¨ä¼ å¥ä»£ççå°åï¼å¹¶å°æä»¬æç»æ³è¦è®¿é®çä¸»æºå°åä¼ ç» :meth:`~HTTPConnection.set_tunnel` æ¹æ³:: HTTP HTTP CONNECT é§éè¯·æ±ä½¿ç¨ HTTP/1.1 åè®®ï¼å®æ¯ä» HTTP/1.0 åè®®åçº§èæ¥ã ``Host:`` HTTP æ å¤´æ¯ HTTP/1.1 æå¿éçï¼å æ­¤å¦ææªå¨ headers åæ°ä¸­æä¾åä¼èªå¨çæå¹¶ä¼ éä¸ä¸ªæ å¤´ã æå¡å¨éç¨ç HTTP åè®®çæ¬ã10 ä»£è¡¨ HTTP/1.0ï¼11 ä»£è¡¨ HTTP/1.1ã HTTPConnection å¯¹è±¡ HTTPMessage å¯¹è±¡ HTTPResponse å¯¹è±¡ HTTPS æ¯æä»å¨ç¼è¯ Python æ¶å¯ç¨äº SSL æ¯æçæåµä¸ï¼éè¿ :mod:`ssl` æ¨¡åï¼å¯ç¨ã ååºçå¤´é¨ä¿¡æ¯ï¼å½¢å¼ä¸º :class:`email.message.EmailMessage` çå®ä¾ã ä¸é¢æ¯ä½¿ç¨ ``GET`` æ¹æ³çä¼è¯ç¤ºä¾ï¼ ä»¥ä¸æ¯ä½¿ç¨ ``HEAD`` æ¹æ³çä¼è¯ç¤ºä¾ã è¯·æ³¨æï¼``HEAD`` æ¹æ³ä»ä¸è¿åä»»ä½æ°æ®ã ä¸é¢æ¯ä¸ä¸ªä½¿ç¨ ``POST`` æ¹æ³çä¼è¯ç¤ºä¾:: å¦æç»å® *body*ï¼é£ä¹ç»å®çæ°æ®ä¼å¨ä¿¡æ¯å¤´å®æä¹ååéãå®å¯è½æ¯ä¸ä¸ª :class:`å­ç¬¦ä¸²`ï¼ä¸ä¸ª :term:`bytes-like object`ï¼ä¸ä¸ªæå¼ç :term:`file object`ï¼æè :class:`bytes` è¿­ä»£å¨ãå¦æ *body* æ¯å­ç¬¦ä¸²ï¼å®ä¼æ HTTP é»è®¤ç ISO-8859-1 ç¼ç ãå¦ææ¯ä¸ä¸ªå­èç±»å¯¹è±¡ï¼å®ä¼æåæ ·åéãå¦ææ¯ :term:`file object`ï¼æä»¶çåå®¹ä¼è¢«åéï¼è¿ä¸ªæä»¶å¯¹è±¡åºè¯¥è³å°æ¯æ ``read()`` æ¹æ³ãå¦æè¿ä¸ªæä»¶å¯¹è±¡æ¯ä¸ä¸ª :class:`io.TextIOBase` å®ä¾ï¼ç± ``read()`` æ¹æ³è¿åçæ°æ®ä¼æ ISO-8859-1 ç¼ç ï¼å¦åç± ``read()`` æ¹æ³è¿åçæ°æ®ä¼æåæ ·åéãå¦æ *body* æ¯ä¸ä¸ªè¿­ä»£å¨ï¼è¿­ä»£å¨ä¸­çåç´ ä¼è¢«åéï¼ç´å°è¿­ä»£å¨èå°½ã å¦æ *encode_chunked* ä¸º ``True``ï¼åå¯¹ *message_body* çæ¯æ¬¡è¿­ä»£ç»æå°ä¾ç§ :rfc:`7230` 3.3.1 èçè§èè¿è¡ååç¼ç ãæ°æ®å¦ä½ç¼ç åå³äº *message_body* çç±»åã å¦æ *message_body* å®ç°äº :ref:`buffer æ¥å£ <bufferobjects>`ï¼ç¼ç å°çæä¸ä¸ªæ°æ®åãå¦æ *message_body* æ¯  :class:`collections.abc.Iterable`ï¼å *message_body* çæ¯æ¬¡è¿­ä»£é½ä¼äº§çä¸ä¸ªåã å¦æ *message_body* ä¸º  :term:`file object`ï¼é£ä¹æ¯æ¬¡è°ç¨ ``.read()`` é½ä¼äº§çä¸ä¸ªæ°æ®åãå¨ *message_body* ç»æåï¼æ¬æ¹æ³ç«å³ä¼èªå¨æ è®°ååç¼ç æ°æ®çç»æã å¦æ *headers* æ¢ä¸åå« Content-Length ä¹æ²¡æ Transfer-Encodingï¼ä½å­å¨è¯·æ±æ­£æï¼é£ä¹è¿äºå¤´å­æ®µä¸­çä¸ä¸ªä¼èªå¨è®¾å®ãå¦æ *body* æ¯ ``None``ï¼é£ä¹å¯¹äºè¦æ±æ­£æçæ¹æ³ (``PUT``ï¼``POST``ï¼å ``PATCH``)ï¼Content-Length å¤´ä¼è¢«è®¾ä¸º ``0``ãå¦æ *body* æ¯å­ç¬¦ä¸²æèç±»ä¼¼å­èçå¯¹è±¡ï¼å¹¶ä¸ä¹ä¸æ¯ :term:`æä»¶<file object>`ï¼Content-Length å¤´ä¼è®¾ä¸ºæ­£æçé¿åº¦ãä»»ä½å¶ä»ç±»åç *body* ï¼ä¸è¬æ¯æä»¶æè¿­ä»£å¨ï¼ä¼æåç¼ç ï¼è¿æ¶ä¼èªå¨è®¾å® Transfer-Encoding å¤´ä»¥ä»£æ¿ Content-Lengthã å¦æå¼åäº :exc:`ConnectionError` æå¶å­ç±»ï¼ :class:`HTTPConnection` å¯¹è±¡å°å¨åéæ°çè¯·æ±æ¶åå¤å¥½éæ°è¿æ¥ã å¦æ Content-Length å Transfer-Encoding é½æ²¡æå¨ *headers* ä¸­è®¾ç½®ï¼æä»¶åå¯è¿­ä»£ç *body* å¯¹è±¡ç°å¨ä¼æåç¼ç ãæ·»å äº *encode_chunked* åæ°ãä¸ä¼å°è¯å»ç¡®å®æä»¶å¯¹è±¡ç Content-Lengthã å¦ææªåé CONNECT è¯·æ±ï¼è¯¥æ¹æ³å°è¿å ``None``ã å¦ææµè¢«å³é­ï¼åä¸º ``True``ã è¯·æ³¨æä½ å¿é¡»å¨è¯»åäºæ´ä¸ªååºä¹åæè½åæå¡å¨åéæ°çè¯·æ±ã ä»æä»¶æé *fp* ä¸­è§£æå¤´é¨ä¿¡æ¯ï¼è¯¥æä»¶ä»£è¡¨ HTTP è¯·æ±/ååºãè¯¥æä»¶å¿é¡»æ¯ :class:`BufferedIOBase`  reader å¯¹è±¡ï¼å³ä¸æ¯ææ¬ï¼ï¼å¹¶ä¸å¿é¡»æä¾ç¬¦å :rfc:`2822` æ ¼å¼çå¤´é¨ã è¯·åé :ref:`ssl-security` äºè§£æå³æä½³å®è·µçæ´å¤ä¿¡æ¯ã å¨æ­¤ä¹åå¼åçå¼å¸¸ä¸º :exc:`BadStatusLine`\ ``('')``ã è§¦å :ref:`é³é¢äºä»¶<auditing>` ``http.client.connect`` ï¼å¸¦æ ``self`` ã``host`` ã``port`` åæ°ã è§¦å :ref:`é³é¢äºä»¶ <auditing>` ``http.client.send``ï¼åæ°ä¸º ``self``ã``data``ã è¯»åå¹¶è¿åååºä½ï¼æåç»­ *amt* ä¸ªå­èã è¯»åååºä½çåç»­ len(b) ä¸ªå­èå°ç¼å²åº *b*ãè¿åè¯»åçå­èæ°ã æå¡å¨è¿åçåå ç­è¯­ã è¿å  (header, value) åç»ææçåè¡¨ã è¿ååºå±å¥æ¥å­ç ``fileno``ã è¿åæ å¤´ *name* çå¼ï¼æèå¦ææ²¡æå¹é *name* çæ å¤´åè¿å *default*ã å¦æåä¸º *name* çæ å¤´ä¸æ­¢ä¸ä¸ªï¼åè¿åä»¥ ', ' è¿æ¥çææå¼ã å¦æ *default* æ¯ä»»ä½ä¸ä¸ºåä¸ªå­ç¬¦ä¸²çå¯è¿­ä»£å¯¹è±¡ï¼åå¶åç´ åæ ·ä¼ä»¥éå·è¿æ¥çå½¢å¼è¿åã è¿åä¸ä¸ªç±ä»ä»£çæå¡å¨æ¥æ¶çååºæ å¤´æ å°å° CONNECT è¯·æ±çå­å¸ã æ¬æ¨¡åä¸­å¯ç¨ç HTTP ç¶æç å¸¸éå¯ä»¥åè§ :ref:`http-status-codes` ã åæå¡å¨åéä¸ä¸ªç©ºè¡ï¼è¡¨ç¤ºå¤´é¨æä»¶ç»æãå¯éç *message_body* åæ°å¯ç¨äºä¼ å¥ä¸ä¸ªä¸è¯·æ±ç¸å³çæ¶æ¯ä½ã åæå¡å¨åéä¸ä¸ª :rfc:`822` æ ¼å¼çå¤´é¨ãå°åæå¡å¨åéä¸è¡ç±å¤´ãåå·åç©ºæ ¼ä»¥åç¬¬ä¸ä¸ªåæ°ç»æçæ°æ®ã å¦æè¿ç»åºäºå¶ä»åæ°ï¼å°å¨åç»­è¡ä¸­åéï¼æ¯è¡ç±ä¸ä¸ªå¶è¡¨ç¬¦åä¸ä¸ªåæ°ç»æã åéæ°æ®å°æå¡å¨ãæ¬å½æ°åªåºå¨è°ç¨ :meth:`endheaders` æ¹æ³ä¹åä¸è°ç¨  :meth:`getresponse` ä¹åç´æ¥è°ç¨ã è®¾ç½®è°è¯ç­çº§ã é»è®¤çè°è¯ç­çº§ä¸º ``0``ï¼æå³çä¸ä¼æå°è°è¯è¾åºã ä»»ä½å¤§äº ``0`` çå¼å°ä½¿å¾ææå½åå®ä¹çè°è¯è¾åºè¢«æå°å° stdoutã ``debuglevel`` ä¼è¢«ä¼ ç»ä»»ä½æ°åå»ºç :class:`HTTPResponse` å¯¹è±¡ã ä¸º HTTP è¿æ¥é§éè®¾ç½®ä¸»æºåç«¯å£ã è¿å°åè®¸éè¿ä»£çæå¡å¨è¿è¡è¿æ¥ã åºå½å¨åéä¸ä¸ªè¯·æ±ä»æå¡å¨è·åååºæ¶è¢«è°ç¨ã è¿åä¸ä¸ª :class:`HTTPResponse` çå®ä¾ã ç±æå¡å¨è¿åçç¶æç ã ç§»é¤äº *strict* å½¢åã ä¸åæ¯æ HTTP 0.9 é£æ ¼çâç®åååºâã å¨ *headers* ä¸­æå® Transfer-Encoding æ¶ï¼ *encode_chunked* æ¯å¯ä¸ç¸å³çåæ°ãå¦æ *encode_chunked* ä¸º ``False``ï¼HTTPConnection å¯¹è±¡ä¼åå®ææçç¼ç é½ç±è°ç¨ä»£ç å¤çãå¦æä¸º ``True``ï¼æ­£æä¼æåç¼ç ã *headers* åæ°åºä¸ºä¸ä¸ªé CONNECT è¯·æ±åéçé¢å¤ HTTP æ å¤´çæ å°ã *headers* åæ°åºä¸ºç±è¦ä¸è¯·æ±ä¸ååéçé¢å¤ HTTP æ å¤´ç»æçæ å°ã å¿é¡»æä¾ä¸ä¸ª :rfc:`ä¸»æºæ å¤´ <2616#section-14.23>` ä»¥ç¬¦å :rfc:`RFC 2616 Â§5.1.2 <2616#section-5.1.2>` è§èï¼é¤éæ¯è¿æ¥å°ä¸ä¸ª HTTP ä»£çæå¡å¨æèä½¿ç¨ ``OPTIONS`` æ ``CONNECT`` æ¹æ³ï¼ã *host* å *port* åæ°ææé§éè¿æ¥çç«¯ç¹ï¼å³ CONNECT è¯·æ±æåå«çå°åï¼è *ä¸æ¯* ä»£çæå¡å¨çå°åï¼ã å é¤äº *strict* åæ°ï¼ä¸åæ¯æHTTP 0.9 é£æ ¼çâç®åååºâã å é¤äº *strict* åæ°ï¼ä¸åæ¯æ HTTP 0.9 é£æ ¼çâç®åååºâã ç°å¨å·²å®ç°äº :class:`io.BufferedIOBase` æ¥å£ï¼å¹¶ä¸æ¯æææçè¯»åæä½ã å¯¹äºæ´é«å±çº§ç HTTP å®¢æ·ç«¯æ¥å£ï¼å»ºè®®ä½¿ç¨ `Requests å <https://requests.readthedocs.io/en/latest/>`_ã æ­¤æ¨¡åä¸­å¶ä»å¼å¸¸çåºç±»ã å®æ¯ :exc:`Exception` çä¸ä¸ªå­ç±»ã æ­¤æ¨¡åä¸­å®ä¹çå¸¸éä¸ºï¼ HTTP åè®®é»è®¤çç«¯å£å· (æ»æ¯ ``80``)ã HTTPS åè®®é»è®¤çç«¯å£å· (æ»æ¯ ``443``)ã å·²å¼ç¨ç *key_file*, *cert_file* å *check_hostname* å½¢åå·²è¢«ç§»é¤ã ä¸åå¼å¸¸å¯ä»¥éå½å°è¢«å¼å: è¯¥æ¨¡åæ¯æä»¥ä¸ç±»ï¼ è¯¥ç±»ç°å¨å¯¹äºé»è®¤ç *context* æå¨ä¼ å¥ *cert_file* å¹¶éå¸¦èªå®ä¹ *context* æ¶ä¼å¯ç¨ TLS 1.3 :attr:`ssl.SSLContext.post_handshake_auth`ã ç®åè¿ä¸ªç±»å¨é»è®¤æåµä¸ä¼æ§è¡ææå¿è¦çè¯ä¹¦åä¸»æºæ£æ¥ã è¦åå¤å°ååçééªè¯è¡ä¸ºï¼å¯ä»¥å° :func:`ssl._create_unverified_context` ä¼ éç» *context* åæ°ã ç°å¨ï¼è¥æªç»åº *context*ï¼åä¼åéä¸ä¸ªå¸¦æåè®®æç¤ºå¨ ``http/1.1`` çALPN æ©å±ãèªå®ä¹ *context* åºç¨ :meth:`~ssl.SSLContext.set_alpn_protocol` è®¾ç½® ALPN åè®®ã è¿ä¸ªå­å¸æ HTTP 1.1 ç¶æç æ å°å° W3C åç§°ã è¯¥å½æ°è¿å :class:`http.client.HTTPMessage` çå®ä¾ï¼å¸¦æå¤´é¨åä¸ªå­æ®µï¼ä½ä¸å¸¦æ­£ææ°æ®ï¼ä¸ :attr:`HTTPResponse.msg` å :attr:`http.server.BaseHTTPRequestHandler.headers` ä¸æ ·ï¼ãè¿åä¹åï¼æä»¶æé *fp* å·²ä¸ºè¯»å HTTP æ­£æåå¥½åå¤äºã è¿ä¸ªæ¨¡åå®ä¹äºå®ç° HTTP å HTTPS åè®®å®¢æ·ç«¯çç±»ã å®éå¸¸ä¸ç´æ¥ä½¿ç¨ --- æ¨¡å :mod:`urllib.request` ä¼ç¨å®æ¥å¤çä½¿ç¨ HTTP å HTTPS ç URLã æ­¤æ¨¡åå¨ WebAssembly å¹³å° ``wasm32-emscripten`` å ``wasm32-wasi`` ä¸ä¸éç¨æä¸å¯ç¨ã è¯·åé :ref:`wasm-availability` äºè§£è¯¦æã è¿ä¸ªæ¨¡åå®ä¹äºä»¥ä¸å½æ°ï¼ åºä¸ºè¿æ¥æå¡å¨ä¹åé¦åè°ç¨çå½æ°ãå°åæå¡å¨åéä¸è¡æ°æ®ï¼åå« *method* å­ç¬¦ä¸²ã*url* å­ç¬¦ä¸²å HTTP çæ¬ï¼``HTTP/1.1``ï¼ãè¥è¦ç¦æ­¢èªå¨åé ``Host:`` æ ``Accept-Encoding:`` å¤´é¨ä¿¡æ¯ï¼æ¯å¦éè¦æ¥åå¶ä»ç¼ç æ ¼å¼çåå®¹ï¼ï¼è¯·å° *skip_host* æ *skip_accept_encoding* è®¾ä¸ºé False å¼ã è¿å°ä½¿ç¨ HTTP è¯·æ±æ¹æ³ *method* åè¯·æ± URI *url* å°æå¡å¨åéä¸ä¸ªè¯·æ±ã ææä¾ç *url* å¿é¡»æ¯ç¬¦å :rfc:`RFC 2616 Â§5.1.2 <2616#section-5.1.2>` è§èçç»å¯¹è·¯å¾ï¼é¤éæ¯è¿æ¥å°ä¸ä¸ª HTTP ä»£çæå¡å¨æèä½¿ç¨ ``OPTIONS`` æ ``CONNECT`` æ¹æ³ï¼ã å·²è¯»åèµæºç URLï¼éå¸¸ç¨äºç¡®å®æ¯å¦è¿è¡äºéå®åã http.client (æ åæ¨¡å) module åè®® urllib.request 