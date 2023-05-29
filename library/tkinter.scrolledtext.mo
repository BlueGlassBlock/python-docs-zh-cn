��          \               �   6   �   4   �   R   	    \  :   |     �  3  �  �    6   �  2   �  <   '  �   d  *   c     �    �   **Source code:** :source:`Lib/tkinter/scrolledtext.py` :mod:`tkinter.scrolledtext` --- Scrolled Text Widget Should more specific control be necessary, the following attributes are available: The :mod:`tkinter.scrolledtext` module provides a class of the same name which implements a basic text widget which has a vertical scroll bar configured to do the "right thing."  Using the :class:`ScrolledText` class is a lot easier than setting up a text widget and scroll bar directly. The frame which surrounds the text and scroll bar widgets. The scroll bar widget. The text widget and scrollbar are packed together in a :class:`Frame`, and the methods of the :class:`Grid` and :class:`Pack` geometry managers are acquired from the :class:`Frame` object.  This allows the :class:`ScrolledText` widget to be used directly to achieve most normal geometry management behavior. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:15+0000
Last-Translator: Makdon <makdon@makdon.me>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码：** :source:`Lib/tkinter/scrolledtext.py` :mod:`tkinter.scrolledtext` --- 滚动文字控件 如果需要更具体的控制，可以使用以下属性： :mod:`tkinter.scrolledtext` 模块提供了一个同名的类，实现了带有垂直滚动条并被配置为可以“正常运作”的文本控件 。 使用 :class:`ScrolledText` 类会比直接配置一个文本控件附加滚动条要简单得多。 围绕文本和滚动条控件的框架。 滚动条控件。 文本控件与滚动条打包在一个 :class:`Frame` 中， :class:`Grid` 方法和 :class:`Pack` 方法的布局管理器从 :class:`Frame` 对象中获得。这允许 :class:`ScrolledText` 控件可以直接用于实现大多数正常的布局管理行为。 