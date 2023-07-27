��                        �  &  �  �     �  �  L   �  2   �  �    r   �  �     	  �  �   �	  �  �
  �   �  �     X  �  �   �  N  �  �        �  �   �  �  �  �   9  �   �  �   I      d    �   |          %  �  4  N  �  �   C  �  �  /   �     �  �    j   �   �   !    �!  �   �"  �  �#  �   1%  �   �%  &  W&  �   ~'  0  @(  �   q)     *  �   *  �  �*  u   [,  �   �,  �   [-  �   .  Q  �.  |   10  	   �0     �0   :dfn:`Representation error` refers to the fact that some (most, actually) decimal fractions cannot be represented exactly as binary (base 2) fractions. This is the chief reason why Python (or Perl, C, C++, Java, Fortran, and many others) often won't display the exact decimal number you expect. Another form of exact arithmetic is supported by the :mod:`fractions` module which implements arithmetic based on rational numbers (so the numbers like 1/3 can be represented exactly). As that says near the end, "there are no easy answers."  Still, don't be unduly wary of floating-point!  The errors in Python float operations are inherited from the floating-point hardware, and on most machines are on the order of no more than 1 part in 2\*\*53 per operation.  That's more than adequate for most tasks, but you do need to keep in mind that it's not decimal arithmetic and that every float operation can suffer a new rounding error. Dividing both the numerator and denominator by two reduces the fraction to:: Floating Point Arithmetic:  Issues and Limitations Floating-point numbers are represented in computer hardware as base 2 (binary) fractions.  For example, the **decimal** fraction ``0.625`` has value 6/10 + 2/100 + 5/1000, and in the same way the **binary** fraction ``0.101`` has value 1/2 + 0/4 + 1/8. These two fractions have identical values, the only real difference being that the first is written in base 10 fractional notation, and the second in base 2. For more pleasant output, you may wish to use string formatting to produce a limited number of significant digits: For use cases which require exact decimal representation, try using the :mod:`decimal` module which implements decimal arithmetic suitable for accounting applications and high-precision applications. Historically, the Python prompt and built-in :func:`repr` function would choose the one with 17 significant digits, ``0.10000000000000001``.   Starting with Python 3.1, Python (on most systems) is now able to choose the shortest of these and simply display ``0.1``. In the same way, no matter how many base 2 digits you're willing to use, the decimal value 0.1 cannot be represented exactly as a base 2 fraction.  In base 2, 1/10 is the infinitely repeating fraction :: Interestingly, there are many different decimal numbers that share the same nearest approximate binary fraction.  For example, the numbers ``0.1`` and ``0.10000000000000001`` and ``0.1000000000000000055511151231257827021181583404541015625`` are all approximated by ``3602879701896397 / 2 ** 55``.  Since all of these decimal values share the same approximation, any one of them could be displayed while still preserving the invariant ``eval(repr(x)) == x``. It's important to realize that this is, in a real sense, an illusion: you're simply rounding the *display* of the true machine value. Just remember, even though the printed result looks like the exact value of 1/10, the actual stored value is the nearest representable binary fraction. Many users are not aware of the approximation because of the way values are displayed.  Python only prints a decimal approximation to the true decimal value of the binary approximation stored by the machine.  On most machines, if Python were to print the true decimal value of the binary approximation stored for 0.1, it would have to display:: Note that since we rounded up, this is actually a little bit larger than 1/10; if we had not rounded up, the quotient would have been a little bit smaller than 1/10.  But in no case can it be *exactly* 1/10! Note that this is in the very nature of binary floating-point: this is not a bug in Python, and it is not a bug in your code either.  You'll see the same kind of thing in all languages that support your hardware's floating-point arithmetic (although some languages may not *display* the difference by default, or in all output modes). One illusion may beget another.  For example, since 0.1 is not exactly 1/10, summing three values of 0.1 may not yield exactly 0.3, either: Representation Error Since the representation is exact, it is useful for reliably porting values across different versions of Python (platform independence) and exchanging data with other languages that support the same format (such as Java and C99). Stop at any finite number of bits, and you get an approximation.  On most machines today, floats are approximated using a binary fraction with the numerator using the first 53 bits starting with the most significant bit and with the denominator as a power of two.  In the case of 1/10, the binary fraction is ``3602879701896397 / 2 ** 55`` which is close to but not exactly equal to the true value of 1/10. That is more digits than most people find useful, so Python keeps the number of digits manageable by displaying a rounded value instead: The problem is easier to understand at first in base 10.  Consider the fraction 1/3.  You can approximate that as a base 10 fraction:: This section explains the "0.1" example in detail, and shows how you can perform an exact analysis of cases like this yourself.  Basic familiarity with binary floating-point representation is assumed. Unfortunately, most decimal fractions cannot be represented exactly as binary fractions.  A consequence is that, in general, the decimal floating-point numbers you enter are only approximated by the binary floating-point numbers actually stored in the machine. While pathological cases do exist, for most casual use of floating-point arithmetic you'll see the result you expect in the end if you simply round the display of your final results to the number of decimal digits you expect. :func:`str` usually suffices, and for finer control see the :meth:`str.format` method's format specifiers in :ref:`formatstrings`. and so on.  No matter how many digits you're willing to write down, the result will never be exactly 1/3, but will be an increasingly better approximation of 1/3. as :: or, better, :: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 01:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :dfn:`表示性错误` 是指某些（其实是大多数）十进制小数无法以二进制（以 2 为基数的计数制）精确表示这一事实造成的错误。 这就是为什么 Python（或者 Perl、C、C++、Java、Fortran 以及许多其他语言）经常不会显示你所期待的精确十进制数值的主要原因。 另一种形式的精确运算由 :mod:`fractions` 模块提供支持，该模块实现了基于有理数的算术运算（因此可以精确表示像 1/3 这样的数值）。 正如那篇文章的结尾所言，“对此问题并无简单的答案。” 但是也不必过于担心浮点数的问题！ Python 浮点运算中的错误是从浮点运算硬件继承而来，而在大多数机器上每次浮点运算得到的 2\*\*53 数码位都会被作为 1 个整体来处理。 这对大多数任务来说都已足够，但你确实需要记住它并非十进制算术，且每次浮点运算都可能会导致新的舍入错误。 分子和分母都除以二则结果小数为:: 浮点算术：争议和限制 浮点数在计算机硬件中是以基数为 2 (二进制) 的小数来表示的。 例如，**十进制** 小数 ``0.625`` 的值为 6/10 + 2/100 + 5/1000，而同样的 **二进制** 小数 ``0.101`` 的值为 1/2 + 0/4 + 1/8。 这两个小数具有相同的值，唯一的区别在于第一个写成了基数为 10 的小数形式，而第二个则写成的基数为 2 的小数形式。 想要更美观的输出，你可能会希望使用字符串格式化来产生限定长度的有效位数: 对于需要精确十进制表示的使用场景，请尝试使用 :mod:`decimal` 模块，该模块实现了适合会计应用和高精度应用的十进制运算。 在历史上，Python 提示符和内置的 :func:`repr` 函数会选择具有 17 位有效数字的来显示，即 ``0.10000000000000001``。 从 Python 3.1 开始，Python（在大多数系统上）现在能够选择这些表示中最短的并简单地显示 ``0.1`` 。 同样的道理，无论你使用多少位以 2 为基数的数码，十进制的 0.1 都无法精确地表示为一个以 2 为基数的小数。 在以 2 为基数的情况下， 1/10 是一个无限循环小数 :: 有趣的是，有许多不同的十进制数共享相同的最接近的近似二进制小数。例如， ``0.1`` 、 ``0.10000000000000001`` 、 ``0.1000000000000000055511151231257827021181583404541015625`` 全都近似于 ``3602879701896397 / 2 ** 55`` 。由于所有这些十进制值都具有相同的近似值，因此可以显示其中任何一个，同时仍然保留不变的 ``eval(repr(x)) == x`` 。 必须重点了解的是，这在实际上只是一个假象：你只是将真正的机器码值进行了舍入操作再 *显示* 而已。 牢记，即使输出的结果看起来好像就是 1/10 的精确值，实际储存的值只是最接近 1/10 的计算机可表示的二进制分数。 由于值的显示方式大多数用户都不会意识到这个差异的存在。 Python 只会打印计算机中存储的二进制值的十进制近似值。 在大部分计算机中，如果 Python 要把 0.1 的二进制值对应的准确的十进制值打印出来，将会显示成这样:: 请注意由于我们做了向上舍入，这个结果实际上略大于 1/10；如果我们没有向上舍入，则商将会略小于 1/10。 但无论如何它都不会是 *精确的* 1/10！ 请注意这种情况是二进制浮点数的本质特性：它不是 Python 的错误，也不是你代码中的错误。 你会在所有支持你的硬件中的浮点运算的语言中发现同样的情况（虽然某些语言在默认状态或所有输出模块下都不会 *显示* 这种差异）。 一个假象还可能导致另一个假象。 例如，由于这个 0.1 并非真正的 1/10，将三个 0.1 的值相加也无法恰好得到 0.3: 表示性错误 由于这种表示法是精确的，它适用于跨越不同版本（平台无关）的 Python 移植数值，以及与支持相同格式的其他语言（例如 Java 和 C99）交换数据. 在任何一个位置停下，你都只能得到一个近似值。因此，在今天的大部分架构上，浮点数都只能近似地使用二进制小数表示，对应分数的分子使用每 8 字节的前 53 位表示，分母则表示为 2 的幂次。在 1/10 这个例子中，相应的二进制分数是 ``3602879701896397 / 2 ** 55`` ，它很接近 1/10 ，但并不是 1/10 。 这比大多数人认为有用的数位更多，因此 Python 通过改为显示舍入值来保留可管理的数位: 用十进制来理解这个问题显得更加容易一些。考虑分数 1/3 。我们可以得到它在十进制下的一个近似值 :: 本小节将详细解释 "0.1" 的例子，并说明你可以怎样亲自对此类情况进行精确分析。 假定前提是已基本熟悉二进制浮点表示法。 不幸的是，大多数的十进制小数都不能精确地表示为二进制小数。这导致在大多数情况下，你输入的十进制浮点数都只能近似地以二进制浮点数形式储存在计算机中。 虽然病态的情况确实存在，但对于大多数正常的浮点运算使用来说，你只需简单地将最终显示的结果舍入为你期望的十进制数值即可得到你期望的结果。 :func:`str` 通常已足够，对于更精度的控制可参看 :ref:`formatstrings` 中 :meth:`str.format` 方法的格式描述符。 以此类推。结果是无论你写下多少的数字，它都永远不会等于 1/3 ，只是更加更加地接近 1/3 。 写为 :: 或者，更近似的，:: 