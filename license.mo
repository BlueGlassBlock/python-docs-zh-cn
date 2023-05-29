��    Y      �              �     �     �     �     �     �     �  	   �  	   �     �  	   �            	                  !     '     5     :     ?     H  �   M     0     M  5   U  +   �  
   �     �  '   �     �  2   �     &     8     E     W  C  g     �	     �	  �   �	  �  �
  7   �     �     �     �     �  *   �  d       s     �     �  	   �     �  �   �  �   v  <   *  n   g  >   �  �     Q   �  �   �  h   �  <     7   O  4   �  ?   �  �   �  �   �  I   t  �  �  �   E  e   �  5  >  �   t          '     ;     V  F   [     �     �     �     �     �     �     �  
   �     �     �  �  �     �     �     �     �     �     �  	   �  	   �     �  	   �     �       	                       #     1     6     ;     G  �   L          $  )   ,  -   V  
   �     �  )   �     �  0   �     �                 "  #     F      Y   �   l   �  .!     �"     #     #  	   $#     .#  ,   2#  W   _#    �#     �$     �$  	   �$  	   �$  �   �$  �   �%  8   X&  [   �&  .   �&     '  ?   �'  �   �'  X   �(  ,   �(  '   )  $   6)  /   [)  �   �)  �   *  G   �*  m  +  ~   ~,  D   �,    B-  x   ^.     �.     �.     
/     !/  F   (/     o/     w/     }/     �/     �/     �/     �/  
   �/     �/     �/   0.9.0 thru 1.2 1.2 1.3 thru 1.5.2 1.5.2 1.6 1.6.1 1991-1995 1995-1999 2.0 2.0+1.6.1 2.0.1 2.1 2.1+2.0.1 2.1.1 2.1.2 2.1.3 2.2 and above 2000 2001 2001-now 2002 All Python releases are Open Source (see https://opensource.org/ for the Open Source Definition). Historically, most, but not all, Python releases have also been GPL-compatible; the table below summarizes the various releases. Asynchronous socket services Audioop BEOPEN PYTHON OPEN SOURCE LICENSE AGREEMENT VERSION 1 BEOPEN.COM LICENSE AGREEMENT FOR PYTHON 2.0 BeOpen.com CNRI CNRI LICENSE AGREEMENT FOR PYTHON 1.6.1 CWI CWI LICENSE AGREEMENT FOR PYTHON 0.9.0 THROUGH 1.2 Cookie management Derived from Execution tracing GPL compatible? GPL-compatible doesn't mean that we're distributing Python under the GPL.  All Python licenses, unlike the GPL, let you distribute a modified version without making your changes open source. The GPL-compatible licenses make it possible to combine Python with other software that is released under the GPL; the others don't. History and License History of the software In 1995, Guido continued his work on Python at the Corporation for National Research Initiatives (CNRI, see https://www.cnri.reston.va.us/) in Reston, Virginia where he released several versions of the software. In May 2000, Guido and the Python core development team moved to BeOpen.com to form the BeOpen PythonLabs team.  In October of the same year, the PythonLabs team moved to Digital Creations (now Zope Corporation; see https://www.zope.org/).  In 2001, the Python Software Foundation (PSF, see https://www.python.org/psf/) was formed, a non-profit organization created specifically to own Python-related Intellectual Property.  Zope Corporation is a sponsoring member of the PSF. Licenses and Acknowledgements for Incorporated Software Mersenne Twister OpenSSL Owner PSF PSF LICENSE AGREEMENT FOR PYTHON |release| Python software and documentation are licensed under the :ref:`PSF License Agreement <PSF-license>`. Python was created in the early 1990s by Guido van Rossum at Stichting Mathematisch Centrum (CWI, see https://www.cwi.nl/) in the Netherlands as a successor of a language called ABC.  Guido remains Python's principal author, although it includes many contributions from others. Release Select kqueue SipHash24 Sockets Some software incorporated into Python is under different licenses. The licenses are listed with code falling under that license. See :ref:`OtherLicenses` for an incomplete list of these licenses. Starting with Python 3.8.6, examples, recipes, and other code in the documentation are dual licensed under the PSF License Agreement and the :ref:`Zero-Clause BSD license <BSD0>`. Terms and conditions for accessing or otherwise using Python Thanks to the many outside volunteers who have worked under Guido's direction to make these releases possible. The :mod:`http.cookies` module contains the following notice:: The :mod:`pyexpat` extension is built using an included copy of the expat sources unless the build is configured ``--with-system-expat``:: The :mod:`select` module contains the following notice for the kqueue interface:: The :mod:`socket` module uses the functions, :func:`getaddrinfo`, and :func:`getnameinfo`, which are coded in separate source files from the WIDE Project, https://www.wide.ad.jp/. :: The :mod:`test.support.asynchat` and :mod:`test.support.asyncore` modules contain the following notice:: The :mod:`test_epoll` module contains the following notice:: The :mod:`trace` module contains the following notice:: The :mod:`uu` module contains the following notice:: The :mod:`xmlrpc.client` module contains the following notice:: The :mod:`zlib` extension is built using an included copy of the zlib sources if the zlib version found on the system is too old to be used for the build:: The C14N 2.0 test suite in the :mod:`test` package (``Lib/test/xmltestdata/c14n-20/``) was retrieved from the W3C website at https://www.w3.org/TR/xml-c14n2-testcases/ and is distributed under the 3-clause BSD license:: The audioop module uses the code base in g771.c file of the SoX project:: The file :file:`Python/dtoa.c`, which supplies C functions dtoa and strtod for conversion of C doubles to and from strings, is derived from the file of the same name by David M. Gay, currently available from https://web.archive.org/web/20220517033456/http://www.netlib.org/fp/dtoa.c. The original file, as retrieved on March 16, 2009, contains the following copyright and licensing notice:: The file :file:`Python/pyhash.c` contains Marek Majkowski' implementation of Dan Bernstein's SipHash24 algorithm. It contains the following note:: The implementation of the hash table used by the :mod:`tracemalloc` is based on the cfuhash project:: The modules :mod:`hashlib`, :mod:`posix`, :mod:`ssl`, :mod:`crypt` use the OpenSSL library for added performance if made available by the operating system. Additionally, the Windows and macOS installers for Python may include a copy of the OpenSSL libraries, so we include a copy of the OpenSSL license here:: This section is an incomplete, but growing list of licenses and acknowledgements for third-party software incorporated in the Python distribution. UUencode and UUdecode functions W3C C14N test suite XML Remote Procedure Calls Year ZERO-CLAUSE BSD LICENSE FOR CODE IN THE PYTHON |release| DOCUMENTATION cfuhash expat libffi libmpdec n/a no strtod and dtoa test_epoll yes zlib Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 00:47+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 0.9.0 至 1.2 1.2 1.3 至 1.5.2 1.5.2 1.6 1.6.1 1991-1995 1995-1999 2.0 2.0+1.6.1 2.0.1 2.1 2.1+2.0.1 2.1.1 2.1.2 2.1.3 2.2 及更高 2000 2001 2001 至今 2002 所有的 Python 版本都是开源的（有关开源的定义参阅 https://opensource.org/ ）。历史上，绝大多数 Python 版本是 GPL 兼容的；下表总结了各个版本情况。 异步套接字服务 audioop BEOPEN PYTHON 开源许可协议第 1 版 用于 PYTHON 2.0 的 BEOPEN.COM 许可协议 BeOpen.com CNRI 用于 PYTHON 1.6.1 的 CNRI 许可协议 CWI 用于 PYTHON 0.9.0 至 1.2 的 CWI 许可协议 Cookie 管理 源自 执行追踪 GPL 兼容？ GPL 兼容并不意味着 Python 在 GPL 下发布。与 GPL 不同，所有 Python 许可证都允许您分发修改后的版本，而无需开源所做的更改。GPL 兼容的许可证使得 Python 可以与其它在 GPL 下发布的软件结合使用；但其它的许可证则不行。 历史和许可证 该软件的历史 1995 年，Guido 在弗吉尼亚州的国家创新研究公司（CNRI，见 https://www.cnri.reston.va.us/ ）继续他在 Python 上的工作，并在那里发布了该软件的多个版本。 2000 年五月，Guido 和 Python 核心开发团队转到 BeOpen.com 并组建了 BeOpen PythonLabs 团队。 同年十月，PythonLabs 团队转到 Digital Creations (现为 Zope 公司；见 https://www.zope.org/)。 2001 年，Python 软件基金会 (PSF，见 https://www.python.org/psf/) 成立，这是一个专为拥有 Python 相关知识产权而创建的非营利组织。 Zope 公司现在是 Python 软件基金会的赞助成员。 收录软件的许可与鸣谢 Mersenne Twister OpenSSL 所有者 PSF 用于 PYTHON |release| 的 PSF 许可协议 Python 软件和文档的使用许可均基于 :ref:`PSF 许可协议 <PSF-license>`。 Python 由荷兰数学和计算机科学研究学会（CWI，见 https://www.cwi.nl/ ）的 Guido van Rossum 于 1990 年代初设计，作为一门叫做 ABC 的语言的替代品。尽管 Python 包含了许多来自其他人的贡献，Guido 仍是其主要作者。 发布版本 Select kqueue SipHash24 套接字 某些包含在 Python 中的软件基于不同的许可。这些许可会与相应许可之下的代码一同列出。有关这些许可的不完整列表请参阅 :ref:`OtherLicenses`。 从 Python 3.8.6 开始，文档中的示例、操作指导和其他代码采用的是 PSF 许可协议和 :ref:`零条款 BSD 许可 <BSD0>` 的双重使用许可。 获取或以其他方式使用 Python 的条款和条件 感谢众多在 Guido 指导下工作的外部志愿者，使得这些发布成为可能。 :mod:`http.cookies` 模块包含以下声明:: 除非使用 ``--with-system-expat`` 配置了构建，否则 :mod:`pyexpat` 扩展都是用包含 expat源的拷贝构建的:: :mod:`select` 模块关于 kqueue 的接口包含以下声明:: :mod:`socket` 模块使用了 :func:`getaddrinfo` 和 :func:`getnameinfo` 等函数，它们的代码位于 WIDE 项目的不同源文件中 https://www.wide.ad.jp/ 。 :: :mod:`test.support.asynchat` 和 :mod:`test.support.asyncore` 模块包含以下声明:: :mod:`test_epoll` 模块包含以下声明:: :mod:`trace` 模块包含以下声明:: :mod:`uu` 模块包含以下声明:: :mod:`xmlrpc.client` 模块包含以下声明:: 如果系统上找到的zlib版本太旧而无法用于构建，则使用包含 zlib源代码的拷贝来构建 :mod:`zlib` 扩展:: :mod:`test` 包中的 C14N 2.0 测试集 (``Lib/test/xmltestdata/c14n-20/``) 提取自 W3C 网站 https://www.w3.org/TR/xml-c14n2-testcases/ 并根据 3 条款版 BSD 许可证发行: audioop 模块使用 SoX 项目的 g771.c 文件中的代码为基础:: :file:`Python/dtoa.c` 文件提供了 C 函数 dtoa 和 strtod，用于 C 双精度数值和字符串之间的转换，它派生自由 David M. Gay 编写的同名文件。 目前该文件可在 https://web.archive.org/web/20220517033456/http://www.netlib.org/fp/dtoa.c 访问。 在 2009 年 3 月 16 日 检索到的原始文件包含以下版权和许可声明:: :file:`Python/pyhash.c` 文件包含 Marek Majkowski' 对 Dan Bernstein 的SipHash24 算法的实现。它包含以下声明:: :mod:`tracemalloc` 使用的哈希表的实现基于 cfuhash项目:: 如果操作系统可用，则 :mod:`hashlib`、:mod:`posix`、:mod:`ssl`、:mod:`crypt` 模块使用 OpenSSL 库来提高性能。此外，适用于 Python 的 Windows 和 macoS 安装程序可能包括 OpenSSL 库的拷贝，所以在此处也列出了 OpenSSL 许可证的拷贝:: 本节是Python发行版中收录的第三方软件的许可和致谢清单，该清单是不完整且不断增长的。 UUencode 与 UUdecode 函数 W3C C14N 测试套件 XML 远程过程调用 年份 ZERO-CLAUSE BSD LICENSE FOR CODE IN THE PYTHON |release| DOCUMENTATION cfuhash expat libffi libmpdec n/a 否 strtod 和 dtoa test_epoll 是 zlib 