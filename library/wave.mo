��    ,      |              �  &   �  (     �   -  F   !  #   h  |   �  .   	  �   8  a   �  l        �  1   �  �   �     i     y  J   �  %   �  �   �     }	  A   �	  D   �	     
     6
     U
  =   q
  }   �
  /   -     ]     x  �   �  "   W  |   z  D   �  w   <     �     4  L   F     �  �   �  1   �     �     �     �  �  �  $   �  &   �      B     *   P  9   {  2   �  a   �  V   J  �   �  �   2  '     �   4     �     �  H     !   L  t   n     �  3   �  ?   *     j     �     �  "   �  C   �  $        A     ^  �   q  "     o   7  1   �  U   �  E   /     u  E   �     �  �   �  +   �     �     �     �   **Source code:** :source:`Lib/wave.py` :mod:`wave` --- Read and write WAV files A *mode* of ``'rb'`` returns a :class:`Wave_read` object, while a *mode* of ``'wb'`` returns a :class:`Wave_write` object.  If *mode* is omitted and a file-like object is passed as *file*, ``file.mode`` is used as the default value for *mode*. A non-integral input to this method is rounded to the nearest integer. Added support for unseekable files. An error raised when something is impossible because it violates the WAV specification or hits an implementation deficiency. Any :term:`bytes-like object` is now accepted. Close the stream if it was opened by :mod:`wave`, and make the instance unusable.  This is called automatically on object collection. Human-readable version of :meth:`getcomptype`. Usually ``'not compressed'`` parallels ``'NONE'``. If *file* is a string, open the file by that name, otherwise treat it as a file-like object.  *mode* can be: Make sure *nframes* is correct, and close the file if it was opened by :mod:`wave`.  This method is called upon object collection.  It will raise an exception if the output stream is not seekable and *nframes* does not match the number of frames actually written. Note that it does not allow read/write WAV files. Note that it is invalid to set any parameters after calling :meth:`writeframes` or :meth:`writeframesraw`, and any attempt to do so will raise :exc:`wave.Error`. Raise an error. Read only mode. Reads and returns at most *n* frames of audio, as a :class:`bytes` object. Return current file pointer position. Return current position in the file, with the same disclaimer for the :meth:`Wave_read.tell` and :meth:`Wave_read.setpos` methods. Returns ``None``. Returns compression type (``'NONE'`` is the only supported type). Returns number of audio channels (``1`` for mono, ``2`` for stereo). Returns number of audio frames. Returns sample width in bytes. Returns sampling frequency. Rewind the file pointer to the beginning of the audio stream. Set the compression type and description. At the moment, only compression type ``NONE`` is supported, meaning no compression. Set the file pointer to the specified position. Set the frame rate to *n*. Set the number of channels. Set the number of frames to *n*.  This will be changed later if the number of frames actually written is different (this update attempt will raise an error if the output stream is not seekable). Set the sample width to *n* bytes. Support for ``WAVE_FORMAT_EXTENSIBLE`` headers was added, provided that the extended format is ``KSDATAFORMAT_SUBTYPE_PCM``. The :mod:`wave` module defines the following function and exception: The following two methods are defined for compatibility with the :mod:`aifc` module, and don't do anything interesting. The following two methods define a term "position" which is compatible between them, and is otherwise implementation dependent. Wave_read Objects Wave_read objects, as returned by :func:`.open`, have the following methods: Wave_write Objects Write audio frames and make sure *nframes* is correct.  It will raise an error if the output stream is not seekable and the total number of frames that have been written after *data* has been written does not match the previously set value for *nframes*. Write audio frames, without correcting *nframes*. Write only mode. ``'rb'`` ``'wb'`` Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-02 14:12+0000
PO-Revision-Date: 2021-06-28 01:17+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码:** :source:`Lib/wave.py` :mod:`wave` --- 读写WAV格式文件  *mode* 设为 ``'rb'`` 时返回一个 :class:`Wave_read` 对象，而 *mode* 设为 ``'wb'`` 时返回一个 :class:`Wave_write` 对象。如果省略 *mode* 并指定 *file* 来传入一个文件类对象，则 ``file.mode`` 会被用作 *mode* 的默认值。 对此方法的非整数输入会被舍入到最接近的整数。 添加了对不可搜索文件的支持。 当不符合WAV格式或无法操作时引发的错误。 现在可接受任意 :term:`bytes-like object`。 关闭 :mod:`wave` 打开的数据流并使对象不可用。当对象销毁时会自动调用。 :meth:`getcomptype` 的通俗版本。使用 ``'not compressed'`` 代替 ``'NONE'``。 如果 *file* 是一个字符串，打开对应文件名的文件。否则就把它作为文件类对象来处理。*mode* 可以为以下值： 确保 *nframes* 是正确的，并在文件被 :mod:`wave` 打开时关闭它。 此方法会在对象收集时被调用。 如果输出流不可查找且 *nframes* 与实际写入的帧数不匹配时引发异常。 注意不支持同时读写WAV文件。 注意在调用 :meth:`writeframes` 或 :meth:`writeframesraw` 之后再设置任何格式参数是无效的，而且任何这样的尝试将引发 :exc:`wave.Error`。 引发错误异常。 只读模式。 读取并返回以 :class:`bytes` 对象表示的最多 *n* 帧音频。 返回当前文件指针位置。 返回当前文件指针，其指针含义和 :meth:`Wave_read.tell` 以及 :meth:`Wave_read.setpos` 是一致的。 返回 ``None``。 返回压缩类型（只支持 ``'NONE'`` 类型） 返回声道数量（``1`` 为单声道，``2`` 为立体声） 返回音频总帧数。 返回采样字节长度。 返回采样频率。 重置文件指针至音频开头. 设置压缩格式。目前只支持 ``NONE`` 即无压缩格式。 设置文件指针到指定位置。 设置采样频率为 *n*。 设置声道数。 设置总帧数为 *n*。 如果与之后实际写入的帧数不一致此值将会被更改（ 如果输出流不可查找则此更改尝试将引发错误）。 设置采样字节长度为 *n*。 增加了对 ``WAVE_FORMAT_EXTENSIBLE`` 标头的支持，要求扩展格式为 ``KSDATAFORMAT_SUBTYPE_PCM``。 :mod:`wave` 模块定义了以下函数和异常: 后面两个方法是为了和 :mod:`aifc` 保持兼容，实际不做任何事情。 以下两个方法都使用指针，具体实现由其底层决定。 Wave_read对象 由 :func:`.open` 返回的 Wave_read 对象，有以下几种方法: Wave_write 对象 写入音频帧并确保 *nframes* 是正确的。 如果输出流不可查找且在 *data* 被写入之后写入的总帧数与之前设定的 *nframes* 值不匹配将会引发错误。 写入音频数据但不更新 *nframes*。 只写模式。 ``'rb'`` ``'wb'`` 