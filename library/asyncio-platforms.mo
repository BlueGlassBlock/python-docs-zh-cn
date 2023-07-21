Þ          ä               ¬     ­  9   8  9   r  w   ¬  W   $  ~   |  Y   û     U     ò  @      *   A  E   l     ²  k  4                 1  R   O  Ä   ¢  °   g	    
     6     >     D  ¿  R       +     +   Ç  z   ó  R   n     Á  T   I          4  8   A  #   z  N        í  X  q  x   Ê     C     P  H   j  §   ³     [  í   á     Ï     ×     Ý   **Source code:** :source:`Lib/asyncio/proactor_events.py`, :source:`Lib/asyncio/windows_events.py`, :source:`Lib/asyncio/windows_utils.py` :class:`ProactorEventLoop` has the following limitations: :class:`SelectorEventLoop` has the following limitations: :class:`~selectors.SelectSelector` is used to wait on socket events: it supports sockets and is limited to 512 sockets. :meth:`loop.add_reader` and :meth:`loop.add_writer` cannot be used to monitor file I/O. :meth:`loop.add_reader` and :meth:`loop.add_writer` only accept socket handles (e.g. pipe file descriptors are not supported). :meth:`loop.add_signal_handler` and :meth:`loop.remove_signal_handler` are not supported. :ref:`Subprocesses <asyncio-subprocess>` are not supported, i.e. :meth:`loop.subprocess_exec` and :meth:`loop.subprocess_shell` methods are not implemented. All Platforms All event loops on Windows do not support the following methods: Modern macOS versions are fully supported. On Windows, :class:`ProactorEventLoop` is now the default event loop. On Windows, the default event loop :class:`ProactorEventLoop` supports subprocesses, whereas :class:`SelectorEventLoop` does not. On macOS 10.6, 10.7 and 10.8, the default event loop uses :class:`selectors.KqueueSelector`, which does not support character devices on these versions.  The :class:`SelectorEventLoop` can be manually configured to use :class:`~selectors.SelectSelector` or :class:`~selectors.PollSelector` to support character devices on these older versions of macOS.  Example:: Pipes are not supported, so the :meth:`loop.connect_read_pipe` and :meth:`loop.connect_write_pipe` methods are not implemented. Platform Support Subprocess Support on Windows The :meth:`loop.add_reader` and :meth:`loop.add_writer` methods are not supported. The :meth:`policy.set_child_watcher() <AbstractEventLoopPolicy.set_child_watcher>` function is also not supported, as :class:`ProactorEventLoop` has a different mechanism to watch child processes. The :mod:`asyncio` module is designed to be portable, but some platforms have subtle differences and limitations due to the platforms' underlying architecture and capabilities. The resolution of the monotonic clock on Windows is usually around 15.6 milliseconds.  The best resolution is 0.5 milliseconds. The resolution depends on the hardware (availability of `HPET <https://en.wikipedia.org/wiki/High_Precision_Event_Timer>`_) and on the Windows configuration. Windows macOS macOS <= 10.8 Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 00:55+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç :** :source:`Lib/asyncio/proactor_events.py`, :source:`Lib/asyncio/windows_events.py`, :source:`Lib/asyncio/windows_utils.py` :class:`ProactorEventLoop` æä¸åéå¶: :class:`SelectorEventLoop` æä¸åéå¶: :class:`~selectors.SelectSelector` åªè¢«ç¨äºç­å¾å¥æ¥å­äºä»¶ï¼å®æ¯æå¥æ¥å­ä¸æå¤æ¯æ512ä¸ªå¥æ¥å­ã :meth:`loop.add_reader` å :meth:`loop.add_writer` ä¸è½ç¨æ¥çè§æä»¶I/Oã :meth:`loop.add_reader` å :meth:`loop.add_writer` åªæ¥åå¥æ¥å­å¤çåè°å½æ°(å¦ç®¡éãæä»¶æè¿°ç¬¦ç­é½ä¸æ¯æ)ã ä¸æ¯æ :meth:`loop.add_signal_handler` å :meth:`loop.remove_signal_handler` ã ä¸æ¯æ :ref:`Subprocesses <asyncio-subprocess>` ï¼ä¹å°±æ¯  :meth:`loop.subprocess_exec` å :meth:`loop.subprocess_shell` æ¹æ³æ²¡æå®ç°ã ææå¹³å° Windowsä¸çææäºä»¶å¾ªç¯é½ä¸æ¯æä»¥ä¸æ¹æ³: å®æ´æ¯ææµè¡çmacOSçæ¬ã å¨ Windows ä¸ï¼:class:`ProactorEventLoop` ç°å¨æ¯é»è®¤çäºä»¶å¾ªç¯ã å¨ Windows ä¸ï¼é»è®¤çäºä»¶å¾ªç¯ :class:`ProactorEventLoop` æ¯æå­è¿ç¨ï¼è :class:`SelectorEventLoop` åä¸æ¯æã å¨ macOS 10.6, 10.7 å 10.8 ä¸ï¼é»è®¤çäºä»¶å¾ªç¯ä½¿ç¨ :class:`selectors.KqueueSelector`ï¼å¨è¿äºçæ¬ä¸å®å¹¶ä¸æ¯æå­ç¬¦è®¾å¤ã å¯ä»¥æå·¥éç½® :class:`SelectorEventLoop` æ¥ä½¿ç¨ :class:`~selectors.SelectSelector` æ :class:`~selectors.PollSelector` ä»¥å¨è¿äºè¾èçæ¬ç macOS ä¸æ¯æå­ç¬¦è®¾å¤ã ä¾å¦:: å ä¸ºä¸æ¯æç®¡éï¼æä»¥  :meth:`loop.connect_read_pipe` å :meth:`loop.connect_write_pipe` æ¹æ³æ²¡æå®ç°ã å¹³å°æ¯æ Windowsçå­è¿ç¨æ¯æ ä¸æ¯æ  :meth:`loop.add_reader` å :meth:`loop.add_writer` æ¹æ³ã ä¹ä¸æ¯æ :meth:`policy.set_child_watcher() <AbstractEventLoopPolicy.set_child_watcher>` å½æ°ï¼:class:`ProactorEventLoop` æä¸åçæºå¶æ¥çè§å­è¿ç¨ã :mod:`asyncio` æ¨¡åè¢«è®¾è®¡ä¸ºå¯ç§»æ¤ç,ä½ç±äºå¹³å°çåºå±æ¶æååè½ï¼ä¸äºå¹³å°å­å¨ç»å¾®çå·®å¼åéå¶ã éå¸¸ Windows ä¸åè°æ¶éçåè¾¨ççº¦ä¸º 15.6 æ¯«ç§ã æä½³åè¾¨çæ¯ 0.5 æ¯«ç§ã åè¾¨çä¾èµäºå·ä½çç¡¬ä»¶ (`HPET <https://en.wikipedia.org/wiki/High_Precision_Event_Timer>`_ çå¯ç¨æ§) å Windows çè®¾ç½®ã Windows macOS macOS <= 10.8 