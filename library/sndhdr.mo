��    &      L              |  (   }     �  .   �  �   �     �     �     �  "   �       �   1  �   �     �  
   �  ,   �     �            f   3  �  �  ~   �
  s        v           �  
   �  
   �  
   �     �  
   �     �  
   �     �     �  	     	               �  ,  %   �       -   ,  �   Z               #  "   ;     ^  �   x  �   0     �  
   �  '   �          $     8  j   K  y  �  o   0  r   �                   
   A  
   L  
   W     b  
   k     v  
        �     �  	   �  	   �     �     �   **Source code:** :source:`Lib/sndhdr.py` 8-Bit Sampled Voice Files :mod:`sndhdr` --- Determine type of sound file A list of functions performing the individual tests.  Each function takes two arguments: the byte-stream and an open file-like object. When :func:`what` is called with a byte-stream, the file-like object will be ``None``. A-LAW Au Files Audio Interchange Files Compressed Audio Interchange Files Creative Labs Audio Files Determines the type of sound data stored in a file based on the file  header. The name of the file is given by *filename*.  This function returns a namedtuple as described above on success, or ``None``. Determines the type of sound data stored in the file *filename* using :func:`whathdr`.  If it succeeds, returns a namedtuple as described above, otherwise ``None`` is returned. Example: HCOM Files Result changed from a tuple to a namedtuple. Signed Byte Audio Data Files Sndtool Sound Files Sound header format The :mod:`sndhdr` module is deprecated (see :pep:`PEP 594 <594#sndhdr>` for details and alternatives). The :mod:`sndhdr` provides utility functions which attempt to determine the type of sound data which is in a file.  When these functions are able to determine what type of sound data is stored in a file, they return a :func:`~collections.namedtuple`, containing five attributes: (``filetype``, ``framerate``, ``nchannels``, ``nframes``, ``sampwidth``). The value for *type* indicates the data type and will be one of the strings ``'aifc'``, ``'aiff'``, ``'au'``, ``'hcom'``, ``'sndr'``, ``'sndt'``, ``'voc'``, ``'wav'``, ``'8svx'``, ``'sb'``, ``'ub'``, or ``'ul'``.  The *sampling_rate* will be either the actual value or ``0`` if unknown or difficult to decode.  Similarly, *channels* will be either the number of channels or ``0`` if it cannot be determined or if the value is difficult to decode.  The value for *frames* will be either the number of frames or ``-1``.  The last item in the tuple, *bits_per_sample*, will either be the sample size in bits or ``'A'`` for A-LAW or ``'U'`` for u-LAW. The following sound header types are recognized, as listed below with the return value from :func:`whathdr`: and :func:`what`: The test function should return a string describing the image type if the test succeeded, or ``None`` if it failed. UB Files Value Waveform Audio File Format Files ``'8svx'`` ``'aifc'`` ``'aiff'`` ``'au'`` ``'hcom'`` ``'sb'`` ``'sndt'`` ``'ub'`` ``'ul'`` ``'voc'`` ``'wav'`` u-LAW uLAW Audio Files Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:13+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码** :source:`Lib/sndhdr.py` 8-Bit Sampled Voice Files :mod:`sndhdr` --- 推测声音文件的类型 执行单个测试的函数列表。每个函数都有两个参数：字节流和类似开放文件的对象。当 :func:`what` 用字节流调用时，类文件对象将是 ``None``。 A-LAW Au Files Audio Interchange Files Compressed Audio Interchange Files Creative Labs Audio Files 基于文件头推测存储在文件中的声音数据类型。文件名由 *filename* 给出。这个函数在成功时返回上述命名元组，或者在失败时返回 ``None``。 使用 :func:`whathdr` 推测存储在 *filename* 文件中的声音数据的类型。如果成功，返回上述的命名元组，否则返回 ``None``。 示例: HCOM Files 将结果从元组改为命名元组。 Signed Byte Audio Data Files Sndtool Sound Files 音频标头格式 :mod:`sndhdr` 模块已被弃用（请参阅 :pep:`PEP 594 <594#sndhdr>` 了解详情及其替代品）。 :mod:`sndhdr` 提供了企图猜测文件中的声音数据类型的功能函数。当这些函数可以推测出存储在文件中的声音数据的类型是，它们返回一个 :func:`collections.namedtuple`，包含了五种属性：（``filetype``, ``framerate``, ``nchannels``, ``nframes``, ``sampwidth``）。这些 *type* 的值表示数据的类型，会是以下字符串之一： ``'aifc'``, ``'aiff'``, ``'au'``, ``'hcom'``, ``'sndr'``, ``'sndt'``, ``'voc'``, ``'wav'``, ``'8svx'``, ``'sb'``, ``'ub'``, or ``'ul'`` 。 *sampling_rate* 可能是实际值或者当未知或者难以解码时的 ``0``。类似的， *channels* 也会返回实际值或者在无法推测或者难以解码时返回 ``0``。 *frames* 则是实际值或 ``-1``。 元组的最后一项， *bits_per_sample* 将会为比特表示的 sample 大小或者 A-LAW 时为 ``'A'``， u-LAW 时为 ``'U'``。 下列音频标头类型是可识别的，带有如下来自 :func:`whathdr` 的返回值: 以及 :func:`what`: 如果测试成功，这个测试函数应当返回一个描述图像类型的字符串，否则返回 ``None``。 UB Files 值 Waveform Audio File Format Files ``'8svx'`` ``'aifc'`` ``'aiff'`` ``'au'`` ``'hcom'`` ``'sb'`` ``'sndt'`` ``'ub'`` ``'ul'`` ``'voc'`` ``'wav'`` u-LAW uLAW Audio Files 