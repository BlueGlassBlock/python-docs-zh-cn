��    .      �              �  ~   �     |  6   �     �     �     �          
     "     1     I     V     g     p     �  
   �     �     �     �     �     �     �     �  L   �     G     V  ,   c  $   �     �  :   �     	               *     3  
   ;     F     L     Q     Y     f     s     �     �     �  �  �  �   o  #   �  :   	     O	     `	     q	     �	     �	     �	     �	     �	     �	     �	     �	  	   �	  	   �	     	
  	   
     
     -
     4
     I
     Y
  K   _
     �
     �
  *   �
  !   �
       6   3     j     v     ~     �     �  
   �     �     �     �     �     �     �     �              :c:func:`PyNumber_Coerce`, :c:func:`PyNumber_CoerceEx`, :c:func:`PyMember_Get`, and :c:func:`PyMember_Set` C APIs are removed. :pep:`3118`: New Buffer API. :pep:`3120`: The default source encoding is now UTF-8. :ref:`pep-0370`. :ref:`pep-0371`. :ref:`pep-3129`. Author Build and C API Changes Changed Syntax Common Stumbling Blocks ConfigParser Guido van Rossum Integers Library Changes New Name New Syntax Note: Old Name Overview Of Syntax Changes Performance Porting To Python 3.0 Print Is A Function Queue Removed :c:macro:`METH_OLDARGS` and :c:macro:`WITH_CYCLE_GC` from the C API. Removed Syntax SocketServer Some well-known APIs no longer return lists: Views And Iterators Instead Of Lists What's New In Python 3.0 You can also customize the separator between items, e.g.:: _markupbase _winreg configparser copy_reg copyreg markupbase queue repr reprlib socketserver test.support test.test_support which produces: winreg you must now use:: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-29 13:04+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :c:func:`PyNumber_Coerce`, :c:func:`PyNumber_CoerceEx`, :c:func:`PyMember_Get`, and :c:func:`PyMember_Set` C API 已被移除。 :pep:`3118`: 新的缓冲区 API。 :pep:`3120`：现在默认的源码编码格式是UTF-8。 :ref:`pep-0370`. :ref:`pep-0371`. :ref:`pep-3129`. 作者 构建和 C API 的改变 语法变化 常见的绊脚石 ConfigParser Guido van Rossum 整数 库的修改 新名称 新语法 注意 旧名称 语法变化概述 性能 移植到 Python 3.0 Print 是函数 Queue 从 C API 中移除 :c:macro:`METH_OLDARGS` 和 :c:macro:`WITH_CYCLE_GC`。 移除的语法 SocketServer 某些知名的 API 将不再返回列表: 用视图和迭代器取代列表 Python 3.0 有什么新变化 你还可以自定义条目间的分隔符，例如 :: _markupbase _winreg configparser copy_reg copyreg markupbase queue repr reprlib socketserver test.support test.test_support 这将产生如下结果: winreg 你现在需要使用:: 