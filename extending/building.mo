��          T               �   �   �        �  :  ]  �     :  .   �  �  �  �   �     @  �  R     �  �   �	  !   �
   A C extension for CPython is a shared library (e.g. a ``.so`` file on Linux, ``.pyd`` on Windows), which exports an *initialization function*. Building C and C++ Extensions For modules with ASCII-only names, the function must be named ``PyInit_<modulename>``, with ``<modulename>`` replaced by the name of the module. When using :ref:`multi-phase-initialization`, non-ASCII module names are allowed. In this case, the initialization function name is ``PyInitU_<modulename>``, with ``<modulename>`` encoded using Python's *punycode* encoding with hyphens replaced by underscores. In Python:: It is possible to export multiple modules from a single shared library by defining multiple initialization functions. However, importing them requires using symbolic links or a custom importer, because by default only the function corresponding to the filename is found. See the *"Multiple modules in one library"* section in :pep:`489` for details. It returns either a fully initialized module, or a :c:type:`PyModuleDef` instance. See :ref:`initializing-modules` for details. The initialization function has the signature: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 00:51+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 一个CPython的C扩展是一个共享库(例如一个Linux上的 ``.so`` ，或者Windows上的 ``.pyd`` )，其会导出一个 *初始化函数* 。 构建C/C++扩展 对于仅有ASCII编码的模块名，函数必须是 ``PyInit_<modulename>`` ，将 ``<modulename>`` 替换为模块的名字。当使用 :ref:`multi-phase-initialization` 时，允许使用非ASCII编码的模块名。此时初始化函数的名字是 ``PyInitU_<modulename>`` ，而 ``<modulename>`` 需要用Python的 *punycode* 编码，连字号需替换为下划线。在Python里:: 可以在一个动态库里导出多个模块，通过定义多个初始化函数。而导入他们需要符号链接或自定义导入器，因为缺省时只有对应了文件名的函数才会被发现。查看 *"一个库里的多模块"* 章节，在 :pep:`489` 了解更多细节。 该函数返回完整初始化过的模块，或一个 :c:type:`PyModuleDef` 实例。 请查看 :ref:`initializing-modules` 了解详情。 初始化函数的声明如下： 