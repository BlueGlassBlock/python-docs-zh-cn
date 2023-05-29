Þ    /                      ®     E   ¼  K     C   N  -     )   À     ê  9     =   ?  8  }     ¶  +   Ã     ï  æ  û  l   â    O	  :   d
  D   
  D   ä
  Ü   )  P        W    h  ¹        9    ×  %  ð  a     
  x  Z    c   Þ  `   B  g   £  z     ð     ¼   w     4  +   È  Ê   ô  |   ¿    <  ¤   ?    ä     ç    ì     ø   ¿  !     Å"  C   V#  E   #  7   à#  -   $  -   F$     t$  8   $  =   Ë$  9  	%     C&  3   S&  
   &  Í  &  W   `(  Ü   ¸(  B   )  K   Ø)  K   $*  Ï   p*  ^   @+     +  ü   °+  ¬   ­,     Z-    ð-    /  Z   0  ö   o0  ¨  f1  i   5  b   y5  n   Ü5     K6     Ï6     o7     	8  $   8      À8  U   a9  É   ·9     :     ;     <     <     ">   *len* is the number of bytes to lock, *start* is the byte offset at which the lock starts, relative to *whence*, and *whence* is as with :func:`io.IOBase.seek`, specifically: :const:`0` -- relative to the start of the file (:data:`os.SEEK_SET`) :const:`1` -- relative to the current buffer position (:data:`os.SEEK_CUR`) :const:`2` -- relative to the end of the file (:data:`os.SEEK_END`) :const:`LOCK_EX` -- acquire an exclusive lock :const:`LOCK_SH` -- acquire a shared lock :const:`LOCK_UN` -- unlock :mod:`fcntl` --- The ``fcntl`` and ``ioctl`` system calls :ref:`Availability <availability>`: not Emscripten, not WASI. All functions in this module take a file descriptor *fd* as their first argument.  This can be an integer file descriptor, such as returned by ``sys.stdin.fileno()``, or an :class:`io.IOBase` object, such as ``sys.stdin`` itself, which provides a :meth:`~io.IOBase.fileno` that returns a genuine file descriptor. An example:: Examples (all on a SVR4 compliant system):: I/O control If *mutate_flag* is true (the default), then the buffer is (in effect) passed to the underlying :func:`ioctl` system call, the latter's return code is passed back to the calling Python, and the buffer's new contents reflect the action of the :func:`ioctl`.  This is a slight simplification, because if the supplied buffer is less than 1024 bytes long it is first copied into a static buffer 1024 bytes long which is then passed to :func:`ioctl` and copied back into the supplied buffer. If a mutable buffer is passed, then the behaviour is determined by the value of the *mutate_flag* parameter. If it is false, the buffer's mutability is ignored and behaviour is as for a read-only buffer, except that the 1024 byte limit mentioned above is avoided -- so long as the buffer you pass is at least as long as what the operating system wants to put there, things should work. If the :c:func:`fcntl` fails, an :exc:`OSError` is raised. If the :c:func:`flock` fails, an :exc:`OSError` exception is raised. If the :c:func:`ioctl` fails, an :exc:`OSError` exception is raised. If the locking flags :data:`~os.O_SHLOCK` and :data:`~os.O_EXLOCK` are present in the :mod:`os` module (on BSD only), the :func:`os.open` function provides an alternative to the :func:`lockf` and :func:`flock` functions. In all but the last case, behaviour is as for the :func:`~fcntl.fcntl` function. Module :mod:`os` Note that in the first example the return value variable *rv* will hold an integer value; in the second example it will hold a :class:`bytes` object.  The structure lay-out for the *lockdata* variable is system dependent --- therefore using the :func:`flock` call may be better. On FreeBSD, the fcntl module exposes the ``F_DUP2FD`` and ``F_DUP2FD_CLOEXEC`` constants, which allow to duplicate a file descriptor, the latter setting ``FD_CLOEXEC`` flag in addition. On Linux >= 2.6.11, the fcntl module exposes the ``F_GETPIPE_SZ`` and ``F_SETPIPE_SZ`` constants, which allow to check and modify a pipe's size respectively. On Linux >= 4.5, the :mod:`fcntl` module exposes the ``FICLONE`` and ``FICLONERANGE`` constants, which allow to share some data of one file with another file by reflinking on some filesystems (e.g., btrfs, OCFS2, and XFS). This behavior is commonly referred to as "copy-on-write". On macOS, the fcntl module exposes the ``F_GETPATH`` constant, which obtains the path of a file from a file descriptor. On Linux(>=3.15), the fcntl module exposes the ``F_OFD_GETLK``, ``F_OFD_SETLK`` and ``F_OFD_SETLKW`` constants, which are used when working with open file description locks. Operations in this module used to raise an :exc:`IOError` where they now raise an :exc:`OSError`. Perform the lock operation *operation* on file descriptor *fd* (file objects providing a :meth:`~io.IOBase.fileno` method are accepted as well). See the Unix manual :manpage:`flock(2)` for details.  (On some systems, this function is emulated using :c:func:`fcntl`.) Perform the operation *cmd* on file descriptor *fd* (file objects providing a :meth:`~io.IOBase.fileno` method are accepted as well).  The values used for *cmd* are operating system dependent, and are available as constants in the :mod:`fcntl` module, using the same names as used in the relevant C header files. The argument *arg* can either be an integer value, or a :class:`bytes` object. With an integer value, the return value of this function is the integer return value of the C :c:func:`fcntl` call.  When the argument is bytes it represents a binary structure, e.g. created by :func:`struct.pack`. The binary data is copied to a buffer whose address is passed to the C :c:func:`fcntl` call.  The return value after a successful call is the contents of the buffer, converted to a :class:`bytes` object. The length of the returned object will be the same as the length of the *arg* argument. This is limited to 1024 bytes. If the information returned in the buffer by the operating system is larger than 1024 bytes, this is most likely to result in a segmentation violation or a more subtle data corruption. Raises an :ref:`auditing event <auditing>` ``fcntl.fcntl`` with arguments ``fd``, ``cmd``, ``arg``. Raises an :ref:`auditing event <auditing>` ``fcntl.flock`` with arguments ``fd``, ``operation``. Raises an :ref:`auditing event <auditing>` ``fcntl.ioctl`` with arguments ``fd``, ``request``, ``arg``. Raises an :ref:`auditing event <auditing>` ``fcntl.lockf`` with arguments ``fd``, ``cmd``, ``len``, ``start``, ``whence``. The *request* parameter is limited to values that can fit in 32-bits. Additional constants of interest for use as the *request* argument can be found in the :mod:`termios` module, under the same names as used in the relevant C header files. The default for *start* is 0, which means to start at the beginning of the file. The default for *len* is 0 which means to lock to the end of the file.  The default for *whence* is also 0. The fcntl module now contains ``F_ADD_SEALS``, ``F_GET_SEALS``, and ``F_SEAL_*`` constants for sealing of :func:`os.memfd_create` file descriptors. The module defines the following functions: The parameter *arg* can be one of an integer, an object supporting the read-only buffer interface (like :class:`bytes`) or an object supporting the read-write buffer interface (like :class:`bytearray`). This function is identical to the :func:`~fcntl.fcntl` function, except that the argument handling is even more complicated. This is essentially a wrapper around the :func:`~fcntl.fcntl` locking calls. *fd* is the file descriptor (file objects providing a :meth:`~io.IOBase.fileno` method are accepted as well) of the file to lock or unlock, and *cmd* is one of the following values: This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. This module performs file control and I/O control on file descriptors. It is an interface to the :c:func:`fcntl` and :c:func:`ioctl` Unix routines.  For a complete description of these calls, see :manpage:`fcntl(2)` and :manpage:`ioctl(2)` Unix manual pages. UNIX When *cmd* is :const:`LOCK_SH` or :const:`LOCK_EX`, it can also be bitwise ORed with :const:`LOCK_NB` to avoid blocking on lock acquisition. If :const:`LOCK_NB` is used and the lock cannot be acquired, an :exc:`OSError` will be raised and the exception will have an *errno* attribute set to :const:`EACCES` or :const:`EAGAIN` (depending on the operating system; for portability, check for both values).  On at least some systems, :const:`LOCK_EX` can only be used if the file descriptor refers to a file opened for writing. file control Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 01:06+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 *len* æ¯è¦éå®çå­èæ°ï¼*start* æ¯èª *whence* å¼å§éå®çå­èåç§»éï¼*whence* ä¸ :func:`io.IOBase.seek` çå®ä¹ä¸æ ·ã :const:`0` ââ èªæä»¶èµ·å§ä½ç½®ï¼:data:`os.SEEK_SET`ï¼ã :const:`1` ââ èªç¼å²åºå½åä½ç½®ï¼ :data:`os.SEEK_CUR` ï¼ :const:`2`ââ èªæä»¶æ«å°¾ï¼:data:`os.SEEK_END`) :const:`LOCK_EX` ââ è·åä¸ä¸ªç¬å é :const:`LOCK_SH` ââ è·åä¸ä¸ªå±äº«é :const:`LOCK_UN` ââè§£é :mod:`fcntl` ââ ç³»ç»è°ç¨ ``fcntl`` å ``ioctl`` :ref:`å¯ç¨æ§ <availability>`: é Emscriptenï¼é WASIã æ¬æ¨¡åçææå½æ°é½æ¥åæä»¶æè¿°ç¬¦ *fd* ä½ä¸ºç¬¬ä¸ä¸ªåæ°ãå¯ä»¥æ¯ä¸ä¸ªæ´æ°å½¢å¼çæä»¶æè¿°ç¬¦ï¼æ¯å¦ ``sys.stdin.fileno()`` çè¿åç»æï¼æä¸º :class:`io.IOBase` å¯¹è±¡ï¼æ¯å¦ ``sys.stdin`` æä¾ä¸ä¸ª :meth:`~io.IOBase.fileno`ï¼å¯è¿åä¸ä¸ªçæ­£çæä»¶æè¿°ç¬¦ã ä¸¾ä¸ªä¾å­ï¼ ç¤ºä¾ï¼é½æ¯è¿è¡äºç¬¦å SVR4 çç³»ç»ï¼ï¼ I/O æ§å¶ å¦æ *mutate_flag* ä¸º Trueï¼é»è®¤å¼ï¼ï¼é£ä¹ç¼å²åºï¼å®éä¸ï¼ä¼ä¼ ç»åºå±ç ç³»ç»è°ç¨ :func:`ioctl` ï¼å¶è¿åä»£ç åä¼åä¼ ç»è°ç¨å®ç Pythonï¼èç¼å²åºçæ°æ°æ®ååæ äº :func:`ioctl` çè¿è¡ç»æãè¿éåäºä¸ç¹ç®åï¼å ä¸ºè¥æ¯ç»åºçç¼å²åºå°äº 1024 å­èï¼é¦åä¼è¢«å¤å¶å°ä¸ä¸ª 1024 å­èé¿çéæç¼å²åºåä¼ ç»  :func:`ioctl` ï¼ç¶åæç»æå¤å¶åç»åºçç¼å²åºå»ã å¦æä¼ å¥çæ¯ä¸ªå¯åç¼å²åºï¼é£ä¹è¡ä¸ºå°±ç± *mutate_flag* åæ°å³å®ã å¦æ *mutate_flag*  ä¸º Falseï¼ç¼å²åºçå¯åæ§å°è¢«å¿½ç¥ï¼è¡ä¸ºä¸åªè¯»ç¼å²åºä¸æ ·ï¼åªæ¯æ²¡æäºä¸è¿° 1024 å­èçä¸éââåªè¦ä¼ å¥çç¼å²åºè½å®¹çº³æä½ç³»ç»æ¾å¥çæ°æ®å³å¯ã å¦æ :c:func:`fcntl` è°ç¨å¤±è´¥ï¼ä¼è§¦å :exc:`OSError` ã å¦æ :c:func:`flock` è°ç¨å¤±è´¥ï¼å°±ä¼è§¦å :exc:`OSError` å¼å¸¸ã å¦æ :c:func:`ioctl` è°ç¨å¤±è´¥ï¼åä¼è§¦å :exc:`OSError` å¼å¸¸ã å¦æ :mod:`os` æ¨¡åä¸­å­å¨å éæ å¿ :data:`~os.O_SHLOCK` å :data:`~os.O_EXLOCK` ï¼ä»å¨BSDä¸ï¼ï¼é£ä¹ :func:`os.open` å½æ°æä¾äº :func:`lockf` å :func:`flock` å½æ°çæ¿ä»£æ¹æ¡ã é¤äºæåä¸ç§æåµï¼å¶ä»æåµä¸çè¡ä¸ºé½ä¸ :func:`~fcntl.fcntl` å½æ°ä¸æ ·ã æ¨¡å :mod:`os` æ³¨æï¼å¨ç¬¬ä¸ä¸ªä¾å­ä¸­ï¼è¿åå¼åé *rv* å°å­ææ´æ°ï¼å¨ç¬¬äºä¸ªä¾å­ä¸­ï¼è¯¥åéä¸­å°å­æä¸ä¸ª :class:`bytes` å¯¹è±¡ã*lockdata* åéçç»æå¸å±è§ç³»ç»èå®ââå æ­¤éç¨ :func:`flock` è°ç¨å¯è½ä¼æ´å¥½ã å¨ FreeBSD ä¸ï¼fcntl æ¨¡åä¼æ´é² ``F_DUP2FD`` å ``F_DUP2FD_CLOEXEC`` å¸¸éï¼å®ä»¬åè®¸å¤å¶æä»¶æè¿°ç¬¦ï¼åèè¿é¢å¤è®¾ç½®äº ``FD_CLOEXEC`` ææ ã å¨ Linux 2.6.11 ä»¥ä¸çæ¬ä¸­ï¼fcntl æ¨¡åæä¾äº ``F_GETPIPE_SZ`` å ``F_SETPIPE_SZ`` å¸¸éï¼åå«ç¨äºæ£æ¥åä¿®æ¹ç®¡éçå¤§å°ã å¨ Linux >= 4.5 ä¸ï¼:mod:`fcntl` æ¨¡åå°å¬å¼ ``FICLONE`` å ``FICLONERANGE`` å¸¸éï¼è¿åè®¸å¨æäºç³»ç»ä¸ï¼ä¾å¦ btrfs, OCFS2, å XFSï¼éè¿å°ä¸ä¸ªæä»¶å¼ç¨é¾æ¥å°å¦ä¸ä¸ªæä»¶æ¥å±äº«æäºæ°æ®ã æ­¤è¡ä¸ºéå¸¸è¢«ç§°ä¸ºâåå¥æ¶æ·è´âã å¨ macOS ä¸ï¼fcntl æ¨¡åæä¾äº ``F_GETPATH`` å¸¸éï¼ä»æä»¶æè¿°ç¬¦è·åæä»¶çè·¯å¾ã å¨ Linux(>=3.15) ä¸ï¼fcntl æ¨¡åæä¾äº ``F_OFD_GETLK``, ``F_OFD_SETLK`` å ``F_OFD_SETLKW`` å¸¸éï¼å®ä»¬å°å¨å¤çæå¼æä»¶æè¿°éæ¶è¢«ä½¿ç¨ã æ¬æ¨¡åçæä½ä»¥åè§¦åçæ¯ :exc:`IOError`ï¼ç°å¨åä¼è§¦å :exc:`OSError`ã å¨æä»¶æè¿°ç¬¦ *fd* ä¸æ§è¡å éæä½ *operation* (ä¹æ¥åè½æä¾ :meth:`~io.IOBase.fileno` æ¹æ³çæä»¶å¯¹è±¡)ã è¯¦è§ Unix æå  :manpage:`flock(2)`ã (å¨æäºç³»ç»ä¸­ï¼æ­¤å½æ°æ¯ç¨ :c:func:`fcntl` æ¨¡æåºæ¥çã) å¯¹æä»¶æè¿°ç¬¦ *fd* æ§è¡ *cmd* æä½ï¼è½å¤æä¾ :meth:`~io.IOBase.fileno` æ¹æ³çæä»¶å¯¹è±¡ä¹å¯ä»¥æ¥åï¼ã *cmd* å¯ç¨çå¼ä¸æä½ç³»ç»æå³ï¼å¨ :mod:`fcntl` æ¨¡åä¸­å¯ä½ä¸ºå¸¸éä½¿ç¨ï¼åç§°ä¸ç¸å³ C è¯­è¨å¤´æä»¶ä¸­çä¸æ ·ãåæ° *arg* å¯ä»¥æ¯æ´æ°æ :class:`bytes` å¯¹è±¡ãè¥ä¸ºæ´æ°å¼ï¼åæ¬å½æ°çè¿åå¼æ¯ C è¯­è¨  :c:func:`fcntl` è°ç¨çæ´æ°è¿åå¼ãè¥ä¸ºå­èä¸²ï¼åå¶ä»£è¡¨ä¸ä¸ªäºè¿å¶ç»æï¼æ¯å¦ç± :func:`struct.pack` åå»ºçæ°æ®ãè¯¥äºè¿å¶æ°æ®å°è¢«å¤å¶å°ä¸ä¸ªç¼å²åºï¼ç¼å²åºå°åä¼ ç» C è°ç¨ :c:func:`fcntl`ãè°ç¨æååçè¿åå¼ä½äºç¼å²åºåï¼è½¬æ¢ä¸ºä¸ä¸ª :class:`bytes` å¯¹è±¡ãè¿åçå¯¹è±¡é¿åº¦å°ä¸ *arg* åæ°çé¿åº¦ç¸åãä¸éä¸º 1024 å­èãå¦ææä½ç³»ç»å¨ç¼å²åºä¸­è¿åçä¿¡æ¯å¤§äº 1024 å­èï¼å¾å¯è½å¯¼è´åå­æ®µå²çªï¼ææ´ä¸ºä¸æå¯è§çæ°æ®éè¯¯ã å¼åä¸æ¡ :ref:`auditing äºä»¶ <auditing>` ``fcntl.fcntl``ï¼åæ°ä¸º ``fd`` ã``cmd``ã``arg``ã è§¦åä¸æ¡ :ref:`å®¡è®¡äºä»¶ <auditing>` ``fcntl.flock``ï¼åæ°ä¸º ``fd`` ã``operation``ã è§¦åä¸æ¡ :ref:`auditing äºä»¶ <auditing>` ``fcntl.ioctl``ï¼åæ°ä¸º ``fd`` ã``request`` ã``arg``ã è§¦åä¸æ¡ :ref:`å®¡è®¡äºä»¶ <auditing>` ``fcntl.lockf``ï¼åæ°ä¸º ``fd`` ã ``cmd``ã ``len``ã ``start``ã ``whence``ã *request* åæ°çä¸éæ¯ 32ä½ã:mod:`termios` æ¨¡åä¸­åå«äºå¯ç¨ä½ *request* åæ°å¶ä»å¸¸éï¼åç§°ä¸ç¸å³ C å¤´æä»¶ä¸­å®ä¹çç¸åã *start* çé»è®¤å¼ä¸º 0ï¼è¡¨ç¤ºä»æä»¶èµ·å§ä½ç½®å¼å§ã*len* çé»è®¤å¼æ¯ 0ï¼è¡¨ç¤ºå éè³æä»¶æ«å°¾ã *whence* çé»è®¤å¼ä¹æ¯ 0ã fcntl æ¨¡åç°å¨æäº ``F_ADD_SEALS`` ã``F_GET_SEALS``  å ``F_SEAL_*`` å¸¸éï¼ç¨äºæä»¶æè¿°ç¬¦ :func:`os.memfd_create` çå°è£ã è¿ä¸ªæ¨¡åå®ä¹äºä»¥ä¸å½æ°ï¼ åæ° *arg* å¯ä¸ºæ´æ°ãæ¯æåªè¯»ç¼å²åºæ¥å£çå¯¹è±¡ï¼å¦ :class:`bytes` ï¼ææ¯æè¯»åç¼å²åºæ¥å£çå¯¹è±¡ï¼å¦ :class:`bytearray` ï¼ã æ¬å½æ°ä¸ :func:`~fcntl.fcntl` å½æ°ç¸åï¼åªæ¯åæ°çå¤çæ´å å¤æã æ¬è´¨ä¸æ¯å¯¹ :func:`~fcntl.fcntl` å éè°ç¨çå°è£ã*fd* æ¯è¦å è§£éçæä»¶æè¿°ç¬¦ï¼ä¹æ¥åè½æä¾ :meth:`~io.IOBase.fileno` æ¹æ³çæä»¶å¯¹è±¡ï¼ï¼*cmd* æ¯ä»¥ä¸å¼ä¹ä¸ï¼ æ­¤æ¨¡åå¨ WebAssembly å¹³å° ``wasm32-emscripten`` å ``wasm32-wasi`` ä¸ä¸éç¨æä¸å¯ç¨ã è¯·åé :ref:`wasm-availability` äºè§£è¯¦æã æ¬æ¨¡ååºäºæä»¶æè¿°ç¬¦æ¥è¿è¡æä»¶æ§å¶å I/O æ§å¶ãå®æ¯ Unix ç³»ç»è°ç¨  :c:func:`fcntl` å :c:func:`ioctl` çæ¥å£ãå³äºè¿äºè°ç¨çå®æ´æè¿°ï¼è¯·åé Unix æåç :manpage:`fcntl(2)` å :manpage:`ioctl(2)` é¡µé¢ã UNIX å¦æ *cmd* ä¸º :const:`LOCK_SH` æ :const:`LOCK_EX`ï¼åè¿å¯ä»¥ä¸ :const:`LOCK_NB` è¿è¡æä½æè¿ç®ï¼ä»¥é¿åå¨è·åéæ¶åºç°é»å¡ã å¦æç¨äº :const:`LOCK_NB`ï¼æ æ³è·åéæ¶å°è§¦å :exc:`OSError`ï¼æ­¤å¼å¸¸ç *errno* å±æ§å°è¢«è®¾ä¸º :const:`EACCES` æ :const:`EAGAIN` (è§æä½ç³»ç»èå®ï¼ä¸ºäºä¿è¯å¯ç§»æ¤æ§ï¼è¯·æ£æ¥è¿ä¸¤ä¸ªå¼)ã è³å°å¨æäºç³»ç»ä¸ï¼åªæå½æä»¶æè¿°ç¬¦æåéè¦åå¥èæå¼çæä»¶æ¶ï¼æå¯ä»¥ä½¿ç¨ :const:`LOCK_EX`ã æä»¶æ§å¶ 