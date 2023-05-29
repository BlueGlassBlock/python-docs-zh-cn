��    T      �              \  "   ]  /   �  2   �  k   �  f   O  �   �  z   \  ;   �  0     8   D  5   }  7   �  7   �  C   #	  2   g	  2   �	  2   �	  G    
  ;   H
  X   �
     �
     �
  i    s  v     �     �     	  ;     /   N  ,   ~  C   �     �       #     o  ;     �     �  |  �     U  �   n  @   5     v     �     �     �     �     �     �       1   3  5   e  3   �  :   �  .   
  +   9  V   e  {   �  <   8     u     �     �     �  �  �     �  ?   �  (   �  :        >     ^  �   x  .   U  >   �  9   �  ;   �  _   9    �  i   �          %     >  X  W  f   �      !  �  *!  !   �"  0   #  8   =#  l   v#  S   �#  �   7$  �   �$  8   O%  ,   �%  .   �%  .   �%  3   &  (   G&  /   p&  3   �&  3   �&  3   '  A   <'  A   ~'  Z   �'     (     9(    @(    \)     ^+     e+     +  4   �+  '   �+  /   �+  <   ,     X,     e,  $   },  ,  �,     �-     �-  �  �-     �/  �   �/  A   80     z0     �0     �0     �0     �0     �0     �0     1  *   11  0   \1  ;   �1  :   �1  )   2  #   .2  U   R2  {   �2  8   $3     ]3     |3     �3     �3  8  �3     	5  /   5     K5  +   h5     �5     �5  �   �5  !   j6  =   �6  1   �6  E   �6  P   B7  �   �7  ^   g8  !   �8     �8     9  �  !9  f   ;     l;   (Contributed by Gregory P. Smith.) (Contributed by Mark Dickinson; :issue:`4258`.) (Contributed by Victor Stinner in :issue:`23404`.) :func:`~sysconfig.get_config_var` returns variables from Python's Makefile and the :file:`pyconfig.h` file. :func:`~sysconfig.get_config_vars` returns a dictionary containing all of the configuration variables. :func:`~sysconfig.get_path` returns the configured path for a particular type of module: the standard library, site-specific modules, platform-specific modules, etc. :func:`~sysconfig.is_python_build` returns true if you're running a binary from a Python source tree, and false otherwise. :pep:`3106` - Revamping dict.keys(), .values() and .items() :pep:`3137` - Immutable Bytes and Mutable Buffer :pep:`372` - Adding an ordered dictionary to collections :pep:`378` - Format Specifier for Thousands Separator :pep:`389` - argparse - New Command Line Parsing Module :pep:`391` - Dictionary-Based Configuration For Logging :pep:`453` -- Explicit bootstrapping of pip in Python installations :pep:`466` related features added in Python 2.7.7: :pep:`466` related features added in Python 2.7.8: :pep:`466` related features added in Python 2.7.9: A new version of the :mod:`io` library, rewritten in C for performance. A partial list of 3.1 features that were backported to 2.7: A small subset of the :mod:`importlib` module, `described below <#importlib-section>`__. A.M. Kuchling (amk at amk.ca) Acknowledgements As noted above, the 2.7 release has a much longer period of maintenance when compared to earlier 2.x versions. Python 2.7 is currently expected to remain supported by the core development team (receiving security updates and other bug fixes) until at least 2020 (10 years after its initial release, compared to the more typical support period of 18--24 months). As the Python 2.7 standard library ages, making effective use of the Python Package Index (either directly or via a redistributor) becomes more important for Python 2 users. In addition to a wide variety of third party packages for various tasks, the available packages include backports of new modules and features from the Python 3 standard library that are compatible with Python 2, as well as various tools and libraries that can make it easier to migrate to Python 3. The `Python Packaging User Guide <https://packaging.python.org>`__ provides guidance on downloading and installing software from the Python Package Index. Author Build and C API Changes Capsules Changes to Python's build process and to the C API include: Changes to the Handling of Deprecation Warnings Contributed by George Sakkis; :issue:`3135`. Dictionary and set comprehensions (``{i: i*2 for i in range(3)}``). Documentation Changes For C extensions: For applications that embed Python: For projects wishing to migrate from Python 2 to Python 3, or for library and framework developers wishing to support users on both Python 2 and Python 3, there are a variety of tools and guides available to help decide on a suitable approach and manage some of the technical details involved. The recommended starting point is the :ref:`pyporting-howto` HOWTO guide. Here are some examples:: Here's an example:: However, while there is a large common subset between Python 2.7 and Python 3, and many of the changes involved in migrating to that common subset, or directly to Python 3, can be safely automated, some other changes (notably those associated with Unicode handling) may require careful consideration, and preferably robust automated regression test suites, to migrate effectively. In the standard library: Much as Python 2.6 incorporated features from Python 3.0, version 2.7 incorporates some of the new features in Python 3.1.  The 2.x series continues to provide tools for migrating to the 3.x series. Multiple context managers in a single :keyword:`with` statement. New and Improved Modules New module: importlib New module: sysconfig Optimizations Other Changes and Fixes Other Language Changes PEP 3106: Dictionary Views PEP 3137: The memoryview Object PEP 378: Format Specifier for Thousands Separator PEP 466: Network Security Enhancements for Python 2.7 PEP 477: Backport ensurepip (PEP 453) to Python 2.7 PEP 493: HTTPS verification migration tools for Python 2.7 PEP written and implemented by Steven Bethard. PEP written and implemented by Vinay Sajip. PEP written by Armin Ronacher and Raymond Hettinger; implemented by Raymond Hettinger. PEP written by Donald Stufft and Nick Coghlan, implemented by Donald Stufft, Nick Coghlan, Martin von Löwis and Ned Deily. PEP written by Raymond Hettinger; implemented by Eric Smith. Port-Specific Changes: FreeBSD Port-Specific Changes: Mac OS X Port-Specific Changes: Windows Porting to Python 2.7 Python 2.7 is the last major release in the 2.x series, as the Python maintainers have shifted the focus of their new feature development efforts to the Python 3.x series. This means that while Python 2 continues to receive bug fixes, and to be updated to build correctly on new hardware and versions of supported operated systems, there will be no new full feature releases for the language or standard library. Python 3.1 Features Some key consequences of the long-term significance of 2.7 are: Some of the functions in the module are: Some smaller changes made to the core Python language are: The :class:`memoryview` object. The Future for Python 2.x The author would like to thank the following people for offering suggestions, corrections and assistance with various drafts of this article: Nick Coghlan, Philip Jenvey, Ryan Lovett, R. David Murray, Hugh Secker-Walker. The documentation page of the argparse module. The new ``","`` format specifier described in :ref:`pep-0378`. The ordered-dictionary type described in :ref:`pep-0372`. The syntax for set literals (``{1,2,3}`` is a mutable set). This article explains the new features in Python 2.7.  Python 2.7 was released on July 3, 2010. This means that Python 2.7 will remain in place for a long time, providing a stable and supported base platform for production systems that have not yet been ported to Python 3. The full expected lifecycle of the Python 2.7 series is detailed in :pep:`373`. This section lists previously described changes and other bugfixes that may require changes to your code: Updated module: ElementTree 1.3 Updated module: unittest What's New in Python 2.7 While the preferred approach to enhancing Python 2 is now the publication of new packages on the Python Package Index, this approach doesn't necessarily work in all cases, especially those related to network security. In exceptional cases that cannot be handled adequately by publishing new or updated packages on PyPI, the Python Enhancement Proposal process may be used to make the case for adding new features directly to the Python 2 standard library. Any such additions, and the maintenance releases where they were added, will be noted in the :ref:`py27-maintenance-enhancements` section below. https://web.archive.org/web/20210619163128/http://www.voidspace.org.uk/python/articles/unittest2.shtml is equivalent to:: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 01:51+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 （由 Gregory P. Smith 贡献） （由 Mark Dickinson在 :issue:`4258` 贡献） （由 Victor Stinner 在 :issue:`23404` 中贡献。） :func:`~sysconfig.get_config_var` 返回来自 Python 的 Makefile 和 :file:`pyconfig.h` 文件的变量。 :func:`~sysconfig.get_config_vars` 返回一个包含所有配置变量的字典。 :func:`~sysconfig.get_path` 返回特定模块类型的配置路径：标准库、站点专属模块、平台专属模块等等。 :func:`~sysconfig.is_python_build` 会在你从 Python 源码树运行二进制可执行文件时返回真值，而在其他情况下返回假值。 :pep:`3106` - 改造 dict.keys(), .values() 和 .items() :pep:`3137` - 不变字节和可变缓冲区 :pep:`372` - 将有序词典添加到集合中 :pep:`378` - 千位分隔符的格式说明符 :pep:`389` - argparse - 新的命令行解析模块 :pep:`391` - 基于字典的日志配置 :pep:`453` -- Python安装中pip的显式引导 :pep:`466` Python 2.7.7 中添加的相关功能： :pep:`466` Python 2.7.8 中添加的相关功能： :pep:`466` Python 2.7.9 中添加的相关功能： 一个 :mod:`io` 库的新版本，用 C 重写以提升性能。 3.1 功能的部分列表，这些功能已反向移植到 2.7： :mod:`importlib` 模块的一个较小子集，`described below <#importlib-section>`__。 A.M. Kuchling (amk at amk.ca) 致谢 如上所述，与早期的2.x版本相比，2.7版本的维护时间更长。目前，预计核心开发团队将继续支持Python 2.7（接收安全更新和其他错误修复），直到至少2020年（首次发布后10年，相比之下，通常的支持期为18--24个月）。 随着 Python 2.7 标准库的老化，有效地利用 Python 包索引（直接或通过重新分发者）对 Python 2 用户来说变得更加重要。除了各种任务的第三方包之外，可用的包还包括与 Python 2 兼容的 Python 3 标准库中的新模块和功能的后端移植，以及各种工具和库，这些工具和库可以让用户更容易迁移到 Python 3。 `Python 包用户指南 <https://packaging.python.org>`__ 提供了从 Python 包索引的下载和安装软件的指导。 作者 构建和 C API 的改变 Capsule 对象 针对 Python 构建过程和 C API 的改变包括: 对于弃用警告处理方式的改变 由 Georg Sakkis 在 :issue:`3135` 中贡献。 字典与集合推导式 (``{i: i*2 for i in range(3)}``)。 文档更改 对于C 扩展模块： 对于嵌入Python的应用程序： 对于希望从 Python2 迁移到 Python3 的项目，或者对于希望同时支持 Python2 和 Python3 用户的库和框架开发人员，可以使用各种工具和指南来帮助决定合适的方法并管理所涉及的一些技术细节。建议从 :ref:`pyporting-howto` 操作指南开始。 这是一些例子:: 以下是为示例代码:: 然而，尽管在 Python 2.7 和 Python 3 之间有一个很大的公共子集，并且迁移到该公共子集或直接迁移到 Python 3 所涉及的许多更改可以安全地自动化完成。但是一些其他更改（特别是那些与Unicode处理相关的更改）可能需要仔细考虑，并且最好用自动化回归测试套件进行健壮性测试，以便有效地迁移。 在标准库中: 就像 Python2.6 集成了 Python3.0 的特性一样，2.7版也集成了 Python3.1 中的一些新特性。2.x 系列继续提供迁移到3.x系列的工具。 单个 :keyword:`with` 语句中使用多个上下文管理器。 新增和改进的模块 新模块：importlib 新模块：sysconfig 性能优化 其他的改变和修正 其他语言特性修改 PEP 3106: 字典视图 PEP 3137: memoryview 对象 PEP 378: 千位分隔符的格式说明符 PEP 466: 针对 Python 2.7 的网络安全加固 PEP 477: 将 ensurepip (PEP 453) 向下移植到 Python 2.7 PEP 493：适用于Python 2.7 的 HTTPS 验证迁移工具 PEP 由 Steven Bethard 撰写并实现。 PEP 由 Vinay Sajip 撰写并实现 PEP 由 Armin Ronacher 和 Raymond Hettinger 撰写，由 Raymond Hettinger 实现。 PEP 由Donald Stufft 和 Nick Coghlan 撰写，由 Donald Stufft，Nick Coghlan，Martin von Löwis 和 Ned Deily 实现。 PEP 由 Raymond Hettinger 撰写，由 Eric Smith 实现 特定于 FreeBSD 的更改： 特定于 Mac OS X 的更改： 特定于 Windows 的更改： 移植到 Python 2.7 Python 2.7 是 2.x 系列中的最后一个主版本，因为Python 维护人员已将新功能开发工作的重点转移到了 Python 3.x 系列中。这意味着，尽管 Python 2 会继续修复bug并更新，以便在新的硬件和支持操作系统版本上正确构建，但不会有新的功能发布。 Python 3.1 特性 长期保留 2.7 版的的一些关键后果： 该模块中的部分函数: 对Python 语言核心进行的小改动： :class:`memoryview` 对象。 Python 2.x的未来 作者要感谢以下人员为本文的各种草案提供建议，更正和帮助： Nick Coghlan, Philip Jenvey, Ryan Lovett, R. David Murray, Hugh Secker-Walker. argparse 模块的文档页面。 :ref:`pep-0378` 所描述的新的 ``","`` 格式说明符。 :ref:`pep-0372` 所描述的有序字典类型。 用于集合字面值的语法 (``{1,2,3}`` 是一个可变集合)。 本文介绍了Python 2.7 的新功能。 Python 2.7 于2010年7月3日发布。 这意味着 Python2.7 将长期保留，为尚未移植到 Python 3 的生产系统提供一个稳定且受支持的基础平台。Python 2.7系列的预期完整生命周期在 :pep:`373` 中有详细介绍。 本节列出了先前描述的改变以及可能需要修改你的代码的其他问题修正: 更新的模块：ElementTree 1.3 更新的模块：unittest Python 2.7 有什么新变化 虽然现在增强 Python 2 的首选方法是在Python包索引上发布新包，但这种方法不一定适用于所有情况，尤其是与网络安全相关的情况。在一些特殊情况下，如果在PyPI上发布新的或更新的包无法得到充分的处理，则可以使用Python增强建议过程来提出直接在Python 2标准库中添加新功能。任何此类添加及其添加的维护版本将在下面的 :ref:`py27-maintenance-enhancements` 部分中注明。 https://web.archive.org/web/20210619163128/http://www.voidspace.org.uk/python/articles/unittest2.shtml 相当于:: 