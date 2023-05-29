��          �                         4     F     W  �   k     $     4     B  �  S  M   �  -  J     x     �     �     �  �  �     X     k     x     �  s   �     	          #  �  0  ?   �	  �   �	     �
     �
     �
     	   Concrete Objects Layer Container Objects Function Objects Fundamental Objects Generic operations on sequence objects were discussed in the previous chapter; this section deals with the specific kinds of sequence objects that are intrinsic to the Python language. Numeric Objects Other Objects Sequence Objects The functions in this chapter are specific to certain Python object types. Passing them an object of the wrong type is not a good idea; if you receive an object from a Python program and you are not sure that it has the right type, you must perform a type check first; for example, to check that an object is a dictionary, use :c:func:`PyDict_Check`.  The chapter is structured like the "family tree" of Python object types. This section describes Python type objects and the singleton object ``None``. While the functions described in this chapter carefully check the type of the objects which are passed in, many of them do not check for ``NULL`` being passed instead of a valid object.  Allowing ``NULL`` to be passed in can cause memory access violations and immediate termination of the interpreter. mapping numeric object sequence Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 具体的对象层 容器对象 Function 对象 基本对象 序列对象的一般操作在前一章中讨论过;本节介绍Python语言固有的特定类型的序列对象。 数值对象 其他对象 序列对象 本章中的函数特定于某些 Python 对象类型。 将错误类型的对象传递给它们并不是一个好主意；如果您从 Python 程序接收到一个对象，但不确定它是否具有正确的类型，则必须首先执行类型检查；例如，要检查对象是否为字典，请使用 :c:func:`PyDict_Check`。 本章的结构类似于 Python 对象类型的“家族树”。 本节描述Python类型对象和单一实例对象 象None。 虽然本章所描述的函数会仔细检查传入对象的类型，但是其中许多函数不会检查传入的对象是否为 ``NULL``。 允许传入 ``NULL`` 可能导致内存访问冲突和解释器的立即终止。 mapping -- 映射 数字 object -- 对象 sequence 