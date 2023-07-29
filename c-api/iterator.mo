��    	      d               �      �   [  �       �   2  ]   �  \   4  �   �  �     �  �     z  :  �    �  �   �	  g   Y
  f   �
  y   (  �   �   Iterator Objects Python provides two general-purpose iterator objects.  The first, a sequence iterator, works with an arbitrary sequence supporting the :meth:`~object.__getitem__` method.  The second works with a callable object and a sentinel value, calling the callable for each item in the sequence, and ending the iteration when the sentinel value is returned. Return a new iterator.  The first parameter, *callable*, can be any Python callable object that can be called with no parameters; each call to it should return the next item in the iteration.  When *callable* returns a value equal to *sentinel*, the iteration will be terminated. Return an iterator that works with a general sequence object, *seq*.  The iteration ends when the sequence raises :exc:`IndexError` for the subscripting operation. Return true if the type of *op* is :c:data:`PyCallIter_Type`.  This function always succeeds. Return true if the type of *op* is :c:data:`PySeqIter_Type`.  This function always succeeds. Type object for iterator objects returned by :c:func:`PyCallIter_New` and the two-argument form of the :func:`iter` built-in function. Type object for iterator objects returned by :c:func:`PySeqIter_New` and the one-argument form of the :func:`iter` built-in function for built-in sequence types. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-29 02:08+0000
PO-Revision-Date: 2021-06-28 00:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 迭代器对象 Python 提供了两个通用迭代器对象。 第一个是序列迭代器，它可与支持 :meth:`~object.__getitem__` 方法的任意序列一起使用。 第二个迭代器使用一个可调用对象和一个哨兵值，为序列中的每个项目调用可调用对象，并在返回哨兵值时结束迭代。 返回一个新的迭代器。 第一个参数 *callable* 可以是任何可以在没有参数的情况下调用的 Python 可调用对象；每次调用都应该返回迭代中的下一个项目。 当 *callable* 返回等于 *sentinel* 的值时，迭代将终止。 返回一个与常规序列对象一起使用的迭代器 *seq*。 当序列订阅操作引发 :exc:`IndexError` 时，迭代结束。 如果 *op* 的类型为 :c:data:`PyCallIter_Type` 则返回真值。 此函数总是会成功执行。 如果 *op* 的类型为 :c:data:`PySeqIter_Type` 则返回真值。 此函数总是会成功执行。 由函数 :c:func:`PyCallIter_New` 和 :func:`iter` 内置函数的双参数形式返回的迭代器对象类型对象。 :c:func:`PySeqIter_New` 返回迭代器对象的类型对象和内置序列类型内置函数 :func:`iter` 的单参数形式。 