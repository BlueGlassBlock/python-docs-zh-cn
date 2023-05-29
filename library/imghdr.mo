��    *      l              �  (   �  0   �  �     #   �  	     	   #     -     C  !   P     r     �     �     �     �     �     �  
   �  �   
  (   �  8     Y   =  f   �  b   �  s   a     �  
   �     �  `   �  	   V  	   `  	   j  
   t  	     	   �  	   �  	   �  
   �  	   �  
   �  
   �  	   �  �  �  %   �
  $   �
  �   �
  (   �  
   �     �     �     �  #        &     5     K     d     z     �     �     �  �   �  #   �  ,   �  D   �  j   )  I   �  r   �     Q     U     a  `   p  	   �  	   �  	   �  
   �  	   �  	     	     	     
   "  	   -  
   7  
   B  	   M   **Source code:** :source:`Lib/imghdr.py` :mod:`imghdr` --- Determine the type of an image A list of functions performing the individual tests.  Each function takes two arguments: the byte-stream and an open file-like object. When :func:`what` is called with a byte-stream, the file-like object will be ``None``. Accepts a :term:`path-like object`. BMP files Example:: GIF 87a and 89a Files Image format JPEG data in JFIF or Exif formats OpenEXR Files Portable Bitmap Files Portable Graymap Files Portable Network Graphics Portable Pixmap Files SGI ImgLib Files Sun Raster Files TIFF Files Test the image data contained in the file named *file* and return a string describing the image type.  If *h* is provided, the *file* argument is ignored and *h* is assumed to contain the byte stream to test. The *exr* and *webp* formats were added. The :mod:`imghdr` module defines the following function: The :mod:`imghdr` module determines the type of image contained in a file or byte stream. The :mod:`imghdr` module is deprecated (see :pep:`PEP 594 <594#imghdr>` for details and alternatives). The following image types are recognized, as listed below with the return value from :func:`what`: The test function should return a string describing the image type if the test succeeded, or ``None`` if it failed. Value WebP files X Bitmap Files You can extend the list of file types :mod:`imghdr` can recognize by appending to this variable: ``'bmp'`` ``'exr'`` ``'gif'`` ``'jpeg'`` ``'pbm'`` ``'pgm'`` ``'png'`` ``'ppm'`` ``'rast'`` ``'rgb'`` ``'tiff'`` ``'webp'`` ``'xbm'`` Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 01:08+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码** :source:`Lib/imghdr.py` :mod:`imghdr` --- 推测图像类型 执行单个测试的函数列表。每个函数都有两个参数：字节流和类似开放文件的对象。当 :func:`what` 用字节流调用时，类文件对象将是 ``None``。 接受一个 :term:`path-like object`。 BMP 文件 示例:: GIF 87a 和 89a 文件 图像格式 JFIF 或 Exif 格式的 JPEG 数据 OpenEXR 文件 便携式位图文件 便携式灰度图文件 便携式网络图像 便携式像素表文件 SGI 图像库文件 Sun 光栅文件 TIFF 文件 测试包含在名为 *file* 的文件中的图像数据并返回描述该图像类型的字符串。 如果提供了 *h*，则 *file* 参数会被忽略并且 *h* 会被视为包含要测试的字节流。 *exr* 和 *webp* 格式被添加。 :mod:`imghdr` 模块定义了以下类型： :mod:`imghdr` 模块推测文件或字节流中的图像的类型。 :mod:`imghdr` 模块已被弃用（请参阅 :pep:`PEP 594 <594#imghdr>` 了解详情及其替代品）。 接下来的图像类型是可识别的，返回值来自 :func:`what`： 如果测试成功，这个测试函数应当返回一个描述图像类型的字符串，否则返回 ``None``。 值 WebP 文件 X 位图文件 你可以扩展此 :mod:`imghdr` 可以被追加的这个变量识别的文件格式的列表： ``'bmp'`` ``'exr'`` ``'gif'`` ``'jpeg'`` ``'pbm'`` ``'pgm'`` ``'png'`` ``'ppm'`` ``'rast'`` ``'rgb'`` ``'tiff'`` ``'webp'`` ``'xbm'`` 