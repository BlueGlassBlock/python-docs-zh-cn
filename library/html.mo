��    	      d               �   /   �   /   �   A     1   O  S  �  g  �  '   =  1   e  �  �  ,   J  )   w  J   �  +   �      Y  0  !   �	  (   �	   **Source code:** :source:`Lib/html/__init__.py` :mod:`html.entities` -- HTML entity definitions :mod:`html.parser` -- HTML/XHTML parser with lenient parsing mode :mod:`html` --- HyperText Markup Language support Convert all named and numeric character references (e.g. ``&gt;``, ``&#62;``, ``&#x3e;``) in the string *s* to the corresponding Unicode characters.  This function uses the rules defined by the HTML 5 standard for both valid and invalid character references, and the :data:`list of HTML 5 named character references <html.entities.html5>`. Convert the characters ``&``, ``<`` and ``>`` in string *s* to HTML-safe sequences.  Use this if you need to display text that might contain such characters in HTML.  If the optional flag *quote* is true, the characters (``"``) and (``'``) are also translated; this helps for inclusion in an HTML attribute value delimited by quotes, as in ``<a href="...">``. Submodules in the ``html`` package are: This module defines utilities to manipulate HTML. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:07+0000
Last-Translator: Bryan不可思议, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源码：** :source:`Lib/html/__init__.py` :mod:`html.entities` -- HTML 实体定义 :mod:`html.parser` —— 具有宽松解析模式的HTML / XHTML解析器 :mod:`html` --- 超文本标记语言支持 将字符串 *s* 中的所有命名和数字字符引用 (例如 ``&gt;``, ``&#62;``, ``&#x3e;``) 转换为相应的Unicode字符。 此函数使用HTML 5标准为有效和无效字符引用定义的规则，以及 :data:`HTML 5 命名字符引用列表 <html.entities.html5>`。 将字符串 *s* 中的字符 ``&`` 、 ``<`` 和 ``>`` 转换为安全的HTML序列。 如果需要在 HTML 中显示可能包含此类字符的文本，请使用此选项。 如果可选的标志 *quote* 为真值，则字符 (``"``) 和 (``'``) 也被转换；这有助于包含在由引号分隔的 HTML 属性中，如 ``<a href="...">``。 ``html`` 包中的子模块是： 该模块定义了操作HTML的工具。 