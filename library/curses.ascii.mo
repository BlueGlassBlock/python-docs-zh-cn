��    F      L              |     }  .   �  6   �  �   �     �  !   �  (   �  	                  #  6   3  t   j  >   �  A     [   `  ]   �  J     ?   e  j   �  X   	  )   i	  %   �	  B   �	  9   �	  [   6
     �
     �
  )   �
     �
     �
     �
     �
       ,   *     W     ^  	   m     w  	   �     �     �     �  �   �  �   t  '     �  ;  z     >   �  w   �  &   @  (   g     �  #   �     �  
   �     �     �  �   �  d   �  ~   #  Z   �  �   �     �     �     �     �  	   �     �  �       �  ,   �  4   �  �   3     �  !   �  -        ?  	   F     P     W  :   ^  d   �  4   �  7   3  K   k  R   �  F   
  4   Q  `   �  L   �  "   4  "   W  =   z  7   �  R   �  %   C     i  (   p     �     �     �     �     �  )   �                    &     3     :     A     H  �   U  �   �  %   �  �  �  p   Y  9   �  c          h   !   �      �      �      �      �      �   	   �   �   �   Q   �!  l   �!  C   g"     �"     +#     ;#     K#     e#     ~#     �#   ! (exclamation) **Source code:** :source:`Lib/curses/ascii.py` :mod:`curses.ascii` --- Utilities for ASCII characters A 33-element string array that contains the ASCII mnemonics for the thirty-two ASCII control characters from 0 (NUL) to 0x1f (US), in order, plus the mnemonic ``SP`` for the space character. Acknowledgement Alias for :const:`LF`: "New line" Alias for :const:`TAB`: "Horizontal tab" Backspace Bell Cancel Carriage return Checks for ASCII any printable character except space. Checks for ASCII white-space characters; space, line feed, carriage return, form feed, horizontal tab, vertical tab. Checks for a character value that fits in the 7-bit ASCII set. Checks for a non-ASCII character (ordinal values 0x80 and above). Checks for an ASCII alphabetic character; it is equivalent to ``isupper(c) or islower(c)``. Checks for an ASCII alphanumeric character; it is equivalent to ``isalpha(c) or isdigit(c)``. Checks for an ASCII control character (in the range 0x00 to 0x1f or 0x7f). Checks for an ASCII control character (ordinal values 0 to 31). Checks for an ASCII decimal digit, ``'0'`` through ``'9'``.  This is equivalent to ``c in string.digits``. Checks for an ASCII hexadecimal digit.  This is equivalent to ``c in string.hexdigits``. Checks for an ASCII lower-case character. Checks for an ASCII uppercase letter. Checks for an ASCII whitespace character; space or horizontal tab. Checks for any ASCII printable character including space. Checks for any printable ASCII character which is not a space or an alphanumeric character. Data-link escape Delete Device control 2, block-mode flow control Device control 4 End of medium End of text End of transmission End transmission block Enquiry, goes with :const:`ACK` flow control Escape File separator Form feed Group separator Line feed Meaning Name Negative acknowledgement Note that all these functions check ordinal bit values derived from the character of the string you pass in; they do not actually know anything about the host machine's character encoding. Note that many of these have little practical significance in modern usage.  The mnemonics derive from teleprinter conventions that predate digital computers. Record separator, block-mode terminator Return a string representation of the ASCII character *c*.  If *c* is printable, this string is the character itself.  If the character is a control character (0x00--0x1f) the string consists of a caret (``'^'``) followed by the corresponding uppercase letter. If the character is an ASCII delete (0x7f) the string is ``'^?'``.  If the character has its meta bit (0x80) set, the meta bit is stripped, the preceding rules applied, and ``'!'`` prepended to the result. Return the 8-bit character corresponding to the given ASCII character (the character bit value is bitwise-ored with 0x80). Return the ASCII value corresponding to the low 7 bits of *c*. Return the control character corresponding to the given character (the character bit value is bitwise-anded with 0x1f). Shift-in, resume default character set Shift-out, begin alternate character set Space Start of heading, console interrupt Start of text Substitute Synchronous idle Tab The :mod:`curses.ascii` module supplies name constants for ASCII characters and functions to test membership in various ASCII character classes.  The constants supplied are names for control characters as follows: The following function takes either a single-character string or integer value; it returns a string. The following two functions take either a single-character string or integer byte value; they return a value of the same type. The module supplies the following functions, patterned on those in the standard C library: These functions accept either integers or single-character strings; when the argument is a string, it is first converted using the built-in function :func:`ord`. Unit separator Vertical tab XOFF, for flow control XON, for flow control ^ (caret) in curses module Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:03+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 ! (感叹号) **源代码:** :source:`Lib/curses/ascii.py` :mod:`curses.ascii` --- 用于 ASCII 字符的工具 一个 33 元素的字符串数据，其中按从 0 (NUL) 到 0x1f (US) 的顺序包含了三十二个 ASCII 控制字符的 ASCII 助记符，另加空格符的助记符 ``SP``。 确认 :const:`LF` 的别名： "新行" :const:`TAB` 的别名： "水平制表符” 退格 蜂鸣器 取消 回车 检测任意 ASCII 可打印字符，不包括空白符。 检测 ASCII 空白字符；包括空格，换行，回车，进纸，水平制表和垂直制表。 检测字符值是否在 7 位 ASCII 集范围内。 检测非 ASCII 字符（码位值 0x80 及以上）。 检测 ASCII 字母类字符；它等价于 ``isupper(c) or islower(c)``。 检测 ASCII 字母数字类字符；它等价于 ``isalpha(c) 或 isdigit(c)``。 检测 ASCII 控制字符（在 0x00 到 0x1f 或 0x7f 范围内）。 检测 ASCII 控制字符（码位值 0 至 31）。 检测 ASCII 十进制数码，即 ``'0'`` 至 ``'9'``。 它等价于 ``c in string.digits``。 检测 ASCII 十六进制数码。 这等价于 ``c in string.hexdigits``。 检测 ASCII 小写字母字符。 检测 ASCII 大写字母字符。 检测 ASCII 空白字符；包括空格或水平制表符。 检测任意 ASCII 可打印字符，包括空白符。 检测任意 ASCII 可打印字符，不包括空白符或字母数字类字符。 Data-link escape，数据链接转义 删除 Device control 2，块模式流程控制 设备控制4 媒体结束 文本结束 传输结束 末端传输块 查询，附带 :const:`ACK` 流量控制 退出 文件分隔符 换页 组分隔符 换行 含意 名称 否定确认 请注意所有这些函数都是检测根据你传入的字符串的字符所生成的码位值；它们实际上完全不会知晓本机的字符编码格式。 请注意其中有许多在现今已经没有实际作用。 这些助记符是来源于数字计算机之前的电传打印机规范。 Record separator，块模式终止符 返回 ASCII 字符 *c* 的字符串表示形式。 如果 *c* 是可打印字符，则字符串为字符本身。 如果该字符是控制字符 (0x00--0x1f) 则字符串由一个插入符 (``'^'``) 加相应的大写字母组成。 如果该字符是 ASCII 删除符 (0x7f) 则字符串为 ``'^?'``。 如果该字符设置了元比特位 (0x80)，元比特位会被去除，应用以上规则后将在结果之前添加 ``'!'``。 返回对应于给定 ASCII 字符的 8 比特位字符（字符比特值会与 0x80 进行按位或运算）。 返回对应于 *c* 的下个 7 比特位的 ASCII 值。 返回对应于给定字符的控制字符（字符比特值会与 0x1f 进行按位与运算）。 Shift-in，恢复默认字符集 Shift-out，开始替换字符集 空格 标题开始，控制台中断 文本开始 替换 同步空闲 制表符 :mod:`curses.ascii` 模块提供了一些 ASCII 字符的名称常量以及在各种 ASCII 字符类中执行成员检测的函数。 所提供的控制字符常量如下: 以下函数接受单字符字符串或整数值；它会返回一个字符串。 以下两个函数接受单字符字符串或整数形式的字节值；它们会返回相同类型的值。 此模块提供了下列函数，对应于标准 C 库中的函数: 这些函数接受整数或单字符字符串；当参数为字符串时，会先使用内置函数 :func:`ord` 进行转换。 单位分隔符 垂直制表符 XOFF，用于流程控制 XON，用于流程控制 ^ (脱字号) 在 curses 模块中 