��    	      d               �   %   �   )   �   I   �   �   G  %   �     �  V     6   c  �  �  %   Z  !   �  I   �  �   �     �     �  J   �  )      **Source code:** :source:`Lib/tty.py` :mod:`tty` --- Terminal control functions Because it requires the :mod:`termios` module, it will work only on Unix. Convert the tty attribute list *mode*, which is a list like the one returned by :func:`termios.tcgetattr`, to that of a tty in raw mode. Low-level terminal control interface. Module :mod:`termios` The :mod:`tty` module defines functions for putting the tty into cbreak and raw modes. The :mod:`tty` module defines the following functions: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **Source code:** :source:`Lib/tty.py` :mod:`tty` --- 终端控制功能 因为它需要 :mod:`termios` 模块，所以只能在 Unix 上运行。 操作 tty 属性列表 *mode*，它是一个与 :func:`termios.tcgetattr` 的返回值类似的列表，将其转换为原始模式 tty 的属性列表。 低级终端控制接口。 模块 :mod:`termios` :mod:`tty` 模块定义了将 tty 放入 cbreak 和 raw 模式的函数。 :mod:`tty` 模块定义了以下函数： 