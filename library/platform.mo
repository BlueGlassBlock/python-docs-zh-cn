Þ    <      ü              Ü  *   Ý  :     .   C  E   r  Â   ¸  J  {     Æ  5   Õ  U     	   a  Í   k  P  9  ¨   	  B  3
  õ   v     l     z  ä     ²   o  v   "  |          r   ª       9  ±  n   ë  k   Z  A   Æ  i     È   r  h   ;  B   ¤  D   ç  ~   ,  D   «  å   ð  ­   Ö  ]     "  â  4     B   :  N   }     Ì  j   N  |   ¹  z   6     ±  |   J  R   Ç  <     "  W     z  w   
  ä        g   é   v      `!     ~!     !  ¿  !  *   ^#  6   #  0   À#  6   ñ#  ¶   ($  9  ß$  	   &  +   #&  P   O&      &  Î   ©&  ;  x'  ­   ´(  :  b)  Õ   *  
   s+     ~+  Ó   +  ¯   _,  f   -  l   v-     ã-  g   o.     ×.  :  n/  n   ©0  n   1  9   1  ^   Á1  °    2  W   Ñ2  =   )3  @   g3  s   ¨3  D   4  Ó   a4     55  c   Ò5  	  66  <   @7  J   }7  R   È7     8  e   8  y   9  y   ~9     ø9  ]   :  H   ð:  @   9;  ÿ   z;     z<  e   =  Ç   l=     4>  ä   @>     %?     <?     J?   **Source code:** :source:`Lib/platform.py` :attr:`processor` is resolved late instead of immediately. :attr:`processor` is resolved late, on demand. :mod:`platform` ---  Access to underlying platform's identifying data An empty string is returned if the value cannot be determined. Note that many platforms do not provide this information or simply return the same value as for :func:`machine`.  NetBSD does this. As a hint: *ptype* is ``'Uniprocessor Free'`` on single processor NT machines and ``'Multiprocessor Free'`` on multi processor machines. The *'Free'* refers to the OS version being free of debugging code. It could also state *'Checked'* which means the OS version uses debugging code, i.e. code that checks arguments, ranges, etc. Cross Platform Entries which cannot be determined are set to ``''``. Entries which cannot be determined are set to ``''``.  All tuple entries are strings. Example:: Fairly portable uname interface. Returns a :func:`~collections.namedtuple` containing six attributes: :attr:`system`, :attr:`node`, :attr:`release`, :attr:`version`, :attr:`machine`, and :attr:`processor`. Get additional version information from the Windows Registry and return a tuple ``(release, version, csd, ptype)`` referring to OS release, version number, CSD level (service pack) and OS type (multi/single processor). Values which cannot be determined are set to the defaults given as parameters (which all default to an empty string). Get macOS version information and return it as tuple ``(release, versioninfo, machine)`` with *versioninfo* being a tuple ``(version, dev_stage, non_release_version)``. Get operating system identification from ``os-release`` file and return it as a dict. The ``os-release`` file is a `freedesktop.org standard <https://www.freedesktop.org/software/systemd/man/os-release.html>`_ and is available in most Linux distributions. A noticeable exception is Android and Android-based distributions. If *aliased* is true, the function will use aliases for various platforms that report system names which differ from their common names, for example SunOS will be reported as Solaris.  The :func:`system_alias` function is used to implement this. Java Platform Linux Platforms Note that fields like ``NAME``, ``VERSION``, and ``VARIANT`` are strings suitable for presentation to users. Programs should use fields like ``ID``, ``ID_LIKE``, ``VERSION_ID``, or ``VARIANT_ID`` to identify Linux distributions. Note that this function has intimate knowledge of how different libc versions add symbols to the executable is probably only usable for executables compiled using :program:`gcc`. Note that unlike the Python ``sys.version``, the returned value will always include the patchlevel (it defaults to 0). Note that unlike the Python ``sys.version``, the returned value will always include the patchlevel (it defaults to ``'0'``). Note: the first two attribute names differ from the names presented by :func:`os.uname`, where they are named :attr:`sysname` and :attr:`nodename`. On macOS (and perhaps other platforms), executable files may be universal files containing multiple architectures. On macOS, the function now uses :func:`mac_ver`, if it returns a non-empty release string, to get the macOS version rather than the darwin version. On success, the function returns a dictionary where keys and values are strings. Values have their special characters like ``"`` and ``$`` unquoted. The fields ``NAME``, ``ID``, and ``PRETTY_NAME`` are always defined according to the standard. All other fields are optional. Vendors may include additional fields. Queries the given executable (defaults to the Python interpreter binary) for various architecture information. Raises :exc:`OSError` or subclass when neither ``/etc/os-release`` nor ``/usr/lib/os-release`` can be read. Result changed from a tuple to a :func:`~collections.namedtuple`. Return ``True`` if the Windows edition returned by :func:`win32_edition` is recognized as an IoT edition. Returns ``(system, release, version)`` aliased to common marketing names used for some systems.  It also does some reordering of the information in some cases where it would otherwise cause confusion. Returns a single string identifying the underlying platform with as much useful information as possible. Returns a string identifying the Python implementation SCM branch. Returns a string identifying the Python implementation SCM revision. Returns a string identifying the Python implementation. Possible return values are: 'CPython', 'IronPython', 'Jython', 'PyPy'. Returns a string identifying the compiler used for compiling Python. Returns a string representing the current Windows edition, or ``None`` if the value cannot be determined.  Possible values include but are not limited to ``'Enterprise'``, ``'IoTUAP'``, ``'ServerStandard'``, and ``'nanoserver'``. Returns a tuple ``(bits, linkage)`` which contain information about the bit architecture and the linkage format used for the executable. Both values are returned as strings. Returns a tuple ``(buildno, builddate)`` stating the Python build number and date as strings. Returns a tuple ``(release, vendor, vminfo, osinfo)`` with *vminfo* being a tuple ``(vm_name, vm_release, vm_vendor)`` and *osinfo* being a tuple ``(os_name, os_version, os_arch)``. Values which cannot be determined are set to the defaults given as parameters (which all default to ``''``). Returns the (real) processor name, e.g. ``'amdk6'``. Returns the Python version as string ``'major.minor.patchlevel'``. Returns the Python version as tuple ``(major, minor, patchlevel)`` of strings. Returns the computer's network name (may not be fully qualified!). An empty string is returned if the value cannot be determined. Returns the machine type, e.g. ``'AMD64'``. An empty string is returned if the value cannot be determined. Returns the system's release version, e.g. ``'#3 on degas'``. An empty string is returned if the value cannot be determined. Returns the system's release, e.g. ``'2.2.0'`` or ``'NT'``. An empty string is returned if the value cannot be determined. Returns the system/OS name, such as ``'Linux'``, ``'Darwin'``, ``'Java'``, ``'Windows'``. An empty string is returned if the value cannot be determined. Setting *terse* to true causes the function to return only the absolute minimum information needed to identify the platform. Specific platforms listed alphabetically, with Linux included in the Unix section. The file is read and scanned in chunks of *chunksize* bytes. The function relies on the system's :file:`file` command to do the actual work. This is available on most if not all Unix  platforms and some non-Unix platforms and then only if the executable points to the Python interpreter.  Reasonable defaults are used when the above needs are not met. The output is intended to be *human readable* rather than machine parseable. It may look different on different platforms and this is intended. To get at the "64-bitness" of the current interpreter, it is more reliable to query the :data:`sys.maxsize` attribute:: Tries to determine the libc version against which the file executable (defaults to the Python interpreter) is linked.  Returns a tuple of strings ``(lib, version)`` which default to the given parameters in case the lookup fails. Unix Platforms Values that cannot be determined are returned as given by the parameter presets. If bits is given as ``''``, the ``sizeof(pointer)`` (or ``sizeof(long)`` on Python version < 1.5.2) is used as indicator for the supported pointer size. Version interface for Jython. Windows Platform macOS Platform Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 01:11+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **æºä»£ç ï¼** :source:`Lib/platform.py` :attr:`processor` å°å»¶åèä¸æ¯ç«å³è¢«è·åã :attr:`processor` å°æ ¹æ®éè¦å»¶åè·åã :mod:`platform` ---  è·ååºå±å¹³å°çæ è¯æ°æ® å¦æè¯¥å¼æ æ³ç¡®å®åå°è¿åç©ºå­ç¬¦ä¸²ã è¯·æ³¨æè®¸å¤å¹³å°é½ä¸æä¾æ­¤ä¿¡æ¯ææ¯ç®åå°è¿åä¸ :func:`machine` ç¸åçå¼ã NetBSD åä¼æä¾æ­¤ä¿¡æ¯ã ä¸ç¹æç¤º: *ptype* å¨åä¸ªå¤çå¨ç NT æºå¨ä¸ä¸º ``'Uniprocessor Free'`` èå¨å¤ä¸ªå¤çå¨çæºå¨ä¸ä¸º ``'Multiprocessor Free'``ã *'Free'* æ¯æè¯¥ OS çæ¬æ²¡æè°è¯ä»£ç ã å®è¿å¯è½æ¾ç¤º *'Checked'* è¡¨ç¤ºè¯¥ OS çæ¬ä½¿ç¨äºè°è¯ä»£ç ï¼å³æ£æµåæ°ãèå´ç­çä»£ç ã è·¨å¹³å° æ æ³ç¡®å®çæ¡ç®ä¼è¢«è®¾ä¸º ``''``ã æ æ³ç¡®å®çæ¡ç®ä¼è¢«è®¾ä¸º ``''``ã ææåç»æ¡ç®åä¸ºå­ç¬¦ä¸²ã ç¤ºä¾:: å·æé«å¯ç§»æ¤æ§ç uname æ¥å£ã è¿ååå«å­ä¸ªå±æ§ç :func:`~collections.namedtuple`: :attr:`system`, :attr:`node`, :attr:`release`, :attr:`version`, :attr:`machine` å :attr:`processor`ã ä» Windows æ³¨åè¡¨è·åé¢å¤ççæ¬ä¿¡æ¯å¹¶è¿åä¸ä¸ªåç» ``(release, version, csd, ptype)`` è¡¨ç¤º OS åè¡ç, çæ¬å·, CSD çº§å« (Service Pack) å OS ç±»å (å¤ä¸ª/åä¸ªå¤çå¨)ãæ æ³ç¡®å®çå¼è¢«è®¾ç½®ä¸ºä½ä¸ºåæ°ç»åºçé»è®¤å¼ï¼è¿äºåæ°é½é»è®¤ä¸ºä¸ä¸ªç©ºå­ç¬¦ä¸²ï¼ã è·å macOS çæ¬ä¿¡æ¯å¹¶å°å¶è¿åä¸ºåç» ``(release, versioninfo, machine)``ï¼å¶ä¸­ *versioninfo* æ¯ä¸ä¸ªåç» ``(version, dev_stage, non_release_version)``ã ä» ``os-release`` æä»¶è·åæä½ç³»ç»æ è¯å¹¶å°å¶ä½ä¸ºä¸ä¸ªå­å¸è¿åã ``os-release`` æä»¶æ¯ `freedesktop.org æ å <https://www.freedesktop.org/software/systemd/man/os-release.html>`_ å¹¶å¨å¤§å¤æ° Linux åè¡çä¸å¯ç¨ã ä¸ä¸ªéè¦çä¾å¤æ¯ Android ååºäº Android çåè¡çã å¦æ *aliased* ä¸ºçå¼ï¼æ­¤å½æ°å°ä½¿ç¨åç§å¹³å°ä¸åä¸å¶éå¸¸åç§°çå«åæ¥æ¥åç³»ç»åç§°ï¼ä¾å¦ SunOS å°è¢«æ¥åä¸º Solarisã :func:`system_alias` å½æ°å°è¢«ç¨äºå®ç°æ­¤åè½ã Javaå¹³å° Linux å¹³å° è¯·æ³¨æ ``NAME``, ``VERSION`` å ``VARIANT`` ç­å­æ®µæ¯éç¨äºåç¨æ·å±ç¤ºçå­ç¬¦ä¸²ã ç¨åºåºå½ä½¿ç¨ ``ID``, ``ID_LIKE``, ``VERSION_ID`` æ ``VARIANT_ID`` ç­å­æ®µæ¥æ è¯ Linux åè¡çã è¯·æ³¨ææ­¤å½æ°å¯¹äºä¸å libc çæ¬åå¯æ§è¡æä»¶æ·»å ç¬¦å·çæ¹å¼ææ·±å±çå³èï¼å¯è½ä»éç¨äºä½¿ç¨ :program:`gcc` ç¼è¯åºæ¥çå¯æ§è¡æä»¶ã è¯·æ³¨ææ­¤è¿åå¼ä¸åäº Python ``sys.version``ï¼å®å°æ»æ¯åæ¬ patchlevel (é»è®¤ä¸º 0)ã è¯·æ³¨ææ­¤è¿åå¼ä¸åäº Python ``sys.version``ï¼å®å°æ»æ¯åæ¬ patchlevel (é»è®¤ä¸º ``'0'``)ã æ³¨æï¼åä¸¤ä¸ªå±æ§åç§°ä¸ :func:`os.uname` ææä¾çåç§°ä¸åï¼åèæ¯è¢«å½åä¸º :attr:`sysname` å :attr:`nodename`ã å¨ macOS (ä¹è®¸è¿æå¶ä»å¹³å°) ä¸ï¼å¯æ§è¡æä»¶å¯è½æ¯åå«å¤ç§æ¶æçéç¨æä»¶ã å¨ macOS ä¸ï¼æ­¤å½æ°ç°å¨ä¼å¨ :func:`mac_ver` è¿åçåå¸çå­ç¬¦ä¸²éç©ºæ¶ä½¿ç¨å®ï¼ä»¥ä¾¿è·å macOS çæ¬èé darwin çæ¬ã æåæ¶ï¼è¯¥å½æ°å°è¿åä¸ä¸ªå­å¸ï¼å¶ä¸­é®åå¼åä¸ºå­ç¬¦ä¸²ã å¼å½ä¸­çç¹æ®å­ç¬¦ä¾å¦ ``"`` å ``{TX-PL-LABEL}#x60;`` ä¼è¢«å¤åã å­æ®µ ``NAME``, ``ID`` å ``PRETTY_NAME`` æ»æ¯ä¼æç§æ åæ¥å®ä¹ã ææå¶ä»å­æ®µé½æ¯å¯éçã  ååå¯è½ä¼åæ¬é¢å¤çå­æ®µã æ¥è¯¢ç»å®çå¯æ§è¡æä»¶ï¼é»è®¤ä¸º Python è§£éå¨äºè¿å¶ç æä»¶ï¼æ¥è·ååç§æ¶æä¿¡æ¯ã å½ ``/etc/os-release`` æ ``/usr/lib/os-release`` åæ æ³è¯»åæ¶å°å¼å :exc:`OSError` æå¶å­ç±»ã ç»æç±åç»æ¹ä¸º :func:`~collections.namedtuple` ã å¦æ :func:`win32_edition` è¿åç Windows çæ¬è¢«è¯å«ä¸º IoT çåè¿å ``True``ã è¿åå«åä¸ºæäºç³»ç»æä½¿ç¨çå¸¸è§è¥éåç§°ç ``(system, release, version)``ã å®è¿ä¼å¨å¯è½å¯¼è´æ··æ·çæåµä¸å¯¹ä¿¡æ¯è¿è¡ä¸äºéæåºæä½ã è¿åä¸ä¸ªæ è¯åºå±å¹³å°çå­ç¬¦ä¸²ï¼å¶ä¸­å¸¦æå°½å¯è½å¤çæç¨ä¿¡æ¯ã è¿åä¸ä¸ªæ è¯ Python å®ç°ç SCM åæ¯çå­ç¬¦ä¸²ã è¿åä¸ä¸ªæ è¯ Python å®ç°ç SCM ä¿®è®¢ççå­ç¬¦ä¸²ã è¿åä¸ä¸ªæ è¯ Python å®ç°çå­ç¬¦ä¸²ã å¯è½çè¿åå¼æ: 'CPython', 'IronPython', 'Jython', 'PyPy'ã è¿åä¸ä¸ªæ è¯ç¨äºç¼è¯ Python çç¼è¯å¨ççå­ç¬¦ä¸²ã è¿åä¸ä¸ªä»£è¡¨å½å Windows çæ¬çå­ç¬¦ä¸²ï¼æèå¨è¯¥å¼æ æ³ç¡®å®æ¶è¿å ``None`` ã å¯è½çå¼åæ¬ä½ä¸éäº ``'Enterprise'``, ``'IoTUAP'``, ``'ServerStandard'`` å ``'nanoserver'``ã è¿åä¸ä¸ªåç´  ``(bits, linkage)``ï¼å¶ä¸­åå«å¯æ§è¡æä»¶æä½¿ç¨çä½æ¶æåé¾æ¥æ ¼å¼ä¿¡æ¯ã è¿ä¸¤ä¸ªå¼åä»¥å­ç¬¦ä¸²å½¢å¼è¿åã è¿åä¸ä¸ªåç» ``(buildno, builddate)``ï¼ä»¥å­ç¬¦ä¸²è¡¨ç¤ºç Python ç¼è¯ä»£ç åæ¥æã è¿åä¸ä¸ªåç» ``(release, vendor, vminfo, osinfo)``ï¼å¶ä¸­ *vminfo* ä¸ºåç» ``(vm_name, vm_release, vm_vendor)`` è *osinfo* ä¸ºåç» ``(os_name, os_version, os_arch)``ã æ æ³ç¡®å®çå¼å°è®¾ä¸ºç±å½¢åæç»åºçé»è®¤å¼ (é»è®¤åä¸º ``''``)ã è¿åï¼çå®çï¼å¤çå¨åç§°ï¼ä¾å¦ ``'amdk6'``ã å° Python çæ¬ä»¥å­ç¬¦ä¸² ``'major.minor.patchlevel'`` å½¢å¼è¿åã å° Python çæ¬ä»¥å­ç¬¦ä¸²åç» ``(major, minor, patchlevel)`` å½¢å¼è¿åã è¿åè®¡ç®æºçç½ç»åç§°ï¼å¯è½ä¸æ¯å®æ´éå®åç§°ï¼ï¼ã å¦æè¯¥å¼æ æ³ç¡®å®åä¼è¿åä¸ä¸ªç©ºå­ç¬¦ä¸²ã è¿åæºå¨ç±»åï¼ä¾å¦ ``'AMD64'`` ã å¦æè¯¥å¼æ æ³ç¡®å®åä¼è¿åä¸ä¸ªç©ºå­ç¬¦ä¸²ã è¿åç³»ç»çåå¸çæ¬ä¿¡æ¯ï¼ä¾å¦ ``'#3 on degas'``ã å¦æè¯¥å¼æ æ³ç¡®å®åå°è¿åä¸ä¸ªç©ºå­ç¬¦ä¸²ã è¿åç³»ç»çåå¸çæ¬ï¼ä¾å¦ ``'2.2.0'`` æ ``'NT'``ï¼å¦æè¯¥å¼æ æ³ç¡®å®åå°è¿åä¸ä¸ªç©ºå­ç¬¦ä¸²ã è¿åç³»ç»å¹³å°/OSçåç§°ï¼ä¾å¦ ``'Linux'``, ``'Darwin'``, ``'Java'``, ``'Windows'``ã å¦æè¯¥å¼æ æ³ç¡®å®åå°è¿åä¸ä¸ªç©ºå­ç¬¦ä¸²ã å° *terse* è®¾ä¸ºçå¼å°å¯¼è´æ­¤å½æ°åªè¿åæ è¯å¹³å°æå¿é¡»çæå°éä¿¡æ¯ã ç¹å®å¹³å°æå­æ¯é¡ºåºæåï¼Linux åæ¬å¨ Unix å°èä¹ä¸­ã æä»¶å°æ *chunksize* ä¸ªå­èçååæ¥è¯»ååæ«æã æ­¤å½æ°ä¾èµäºç³»ç»ç :file:`file` å½ä»¤æ¥æ§è¡å®éçæä½ã è¿å¨å ä¹ææ Unix å¹³å°åæäºé Unix å¹³å°ä¸åªæå½å¯æ§è¡æä»¶æå Python è§£éå¨æ¶æå¯ç¨ã å½ä»¥ä¸è¦æ±ä¸æ»¡è¶³æ¶å°ä¼ä½¿ç¨åççé»è®¤å¼ã è¾åºä¿¡æ¯çç®æ æ¯âäººç±»æè¯»âèéæºå¨æè§£æã å®å¨ä¸åå¹³å°ä¸å¯è½çèµ·æ¥ä¸ä¸è´ï¼è¿æ¯ææä¸ºä¹çã è¦è·åå½åè§£éå¨çâ64 ä½æ§âï¼æ´å¯é çåæ³æ¯æ¥è¯¢ :data:`sys.maxsize` å±æ§:: å°è¯ç¡®å®å¯æ§è¡æä»¶ï¼é»è®¤ä¸º Python è§£éå¨ï¼æé¾æ¥å°ç libc çæ¬ã è¿åä¸ä¸ªå­ç¬¦ä¸²åç» ``(lib, version)``ï¼å½æ¥æ¾å¤±è´¥æ¶å¶é»è®¤å¼å°è®¾ä¸ºç»å®çå½¢åå¼ã Unix å¹³å° æ æ³ç¡®å®çå¼å°è¿åä¸ºå½¢åé¢è®¾æç»åºçå¼ã å¦æç»åºçä½æ°ä¸º ``''``ï¼åä¼ä½¿ç¨ ``sizeof(pointer)`` (æèå½ Python çæ¬ < 1.5.2 æ¶ä¸º ``sizeof(long)``) ä½ä¸ºææ¯æçæéå¤§å°çæç¤ºã Jython ççæ¬æ¥å£ Windowså¹³å° macOS å¹³å° 