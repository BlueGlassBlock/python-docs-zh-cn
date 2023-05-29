��          t               �   .   �   U   �   B   R  �   �  �   R  J   �  |   8  U   �      "  (  �  K  .     Q   :  9   �  �   �  �   v	  6   �	  w   /
  R   �
  �   �
    �   **Source code:** :source:`Lib/urllib/error.py` :exc:`URLError` has been made a subclass of :exc:`OSError` instead of :exc:`IOError`. :mod:`urllib.error` --- Exception classes raised by urllib.request An HTTP status code as defined in :rfc:`2616`.  This numeric value corresponds to a value found in the dictionary of codes as found in :attr:`http.server.BaseHTTPRequestHandler.responses`. The :mod:`urllib.error` module defines the exception classes for exceptions raised by :mod:`urllib.request`.  The base exception class is :exc:`URLError`. The following exceptions are raised by :mod:`urllib.error` as appropriate: The handlers raise this exception (or derived exceptions) when they run into a problem.  It is a subclass of :exc:`OSError`. The reason for this error.  It can be a message string or another exception instance. This exception is raised when the :func:`~urllib.request.urlretrieve` function detects that the amount of the downloaded data is less than the expected amount (given by the *Content-Length* header).  The :attr:`content` attribute stores the downloaded (and supposedly truncated) data. Though being an exception (a subclass of :exc:`URLError`), an :exc:`HTTPError` can also function as a non-exceptional file-like return value (the same thing that :func:`~urllib.request.urlopen` returns).  This is useful when handling exotic HTTP errors, such as requests for authentication. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码：** :source:`Lib/urllib/error.py` :exc:`URLError` 已被设为 :exc:`OSError` 而不是 :exc:`IOError` 的子类。 :mod:`urllib.error` --- urllib.request 引发的异常类 一个 HTTP 状态码，具体定义见 :rfc:`2616`。 这个数字的值对应于存放在 :attr:`http.server.BaseHTTPRequestHandler.responses` 代码字典中的某个值。 :mod:`urllib.error` 模块为 :mod:`urllib.request` 所引发的异常定义了异常类。 基础异常类是 :exc:`URLError`。 下列异常会被 :mod:`urllib.error` 按需引发： 处理程序在遇到问题时会引发此异常（或其派生的异常）。 它是 :exc:`OSError` 的一个子类。 此错误的原因。 它可以是一个消息字符串或另一个异常实例。 此异常会在 :func:`~urllib.request.urlretrieve` 函数检测到已下载的数据量小于期待的数据量（由 *Content-Length* 头给定）时被引发。 :attr:`content` 属性中将存放已下载（可能被截断）的数据。 虽然是一个异常（:exc:`URLError` 的一个子类），:exc:`HTTPError` 也可以作为一个非异常的文件类返回值（与 :func:`~urllib.request.urlopen` 返所回的对象相同）。 这适用于处理特殊 HTTP 错误例如作为认证请求的时候。 