��          �               �   (   �   1   &  �   X    %  �   >  �   �     �     �  J   �  9   �  (   6  f   _  �   �  �  \  &     7   D  �   |    <	  �   H
  �   �
     �     �  C   �  ,   �       i   6  �   �   **Source code:** :source:`Lib/binhex.py` :mod:`binhex` --- Encode and decode binhex4 files Convert a binary file with filename *input* to binhex file *output*. The *output* parameter can either be a filename or a file-like object (any object supporting a :meth:`write` and :meth:`close` method). Decode a binhex file *input*. *input* may be a filename or a file-like object supporting :meth:`read` and :meth:`close` methods. The resulting file is written to a file named *output*, unless the argument is ``None`` in which case the output filename is read from the binhex file. Exception raised when something can't be encoded using the binhex format (for example, a filename is too long to fit in the filename field), or when input is not properly encoded binhex data. If you code or decode textfiles on non-Macintosh platforms they will still use the old Macintosh newline convention (carriage-return as end of line). Module :mod:`binascii` Notes Support module containing ASCII-to-binary and binary-to-ASCII conversions. The :mod:`binhex` module defines the following functions: The following exception is also defined: There is an alternative, more powerful interface to the coder and decoder, see the source for details. This module encodes and decodes files in binhex4 format, a format allowing representation of Macintosh files in ASCII. Only the data fork is handled. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-11-05 16:26+0000
PO-Revision-Date: 2021-06-28 00:56+0000
Last-Translator: jaystone776 <1732865113@qq.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码:** :source:`Lib/binhex.py` :mod:`binhex` --- 对binhex4文件进行编码和解码 将带有文件名 *输入* 的二进制文件转换为binhex文件 *输出* 。输出参数可以是文件名或类文件对象（ :meth:`write` 和 :meth:`close` 方法的任何对象）。 解码binhex文件输入。  *输入* 可以是支持 :meth:`read` 和 :meth:`close` 方法的文件名或类文件对象。生成的文件将写入名为 *output* 的文件，除非参数为 ``None`` ，在这种情况下，从binhex文件中读取输出文件名。 当无法使用binhex格式编码某些内容时（例如，文件名太长而无法放入文件名字段中），或者输入未正确编码的binhex数据时，会引发异常。 如果您在非Macintosh平台上编码或解码文本文件，它们仍将使用旧的Macintosh换行符约定（回车符作为行尾）。 模块 :mod:`binascii` 备注 支持模块，包含ASCII到二进制和二进制到ASCII转换。 :mod:`binhex` 模块定义了以下功能： 还定义了以下异常： 还有一个替代的、功能更强大的编码器和解码器接口，详细信息请参见源代码。 此模块以binhe4格式对文件进行编码和解码，该格式允许Macintosh文件以ASCII格式表示。仅处理数据分支。 