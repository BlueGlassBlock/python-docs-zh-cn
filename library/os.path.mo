Þ    N                    ü  
   ý       b     j   w  &   â  ä   	     î  0     %   ?  2   e  :     #   Ó  C   ÷     ;  ª   R  ñ   ý  b   ï	  b   R
     µ
  9   M  î    Y   v  )   Ð  \  ú  Ð   W  ¢  (     Ë    N  2  n  Y   ¡  J   û  ¡  F  k   è  ª   T  ­   ÿ  ¹   ­  ¶   g  *    §   I  Ö   ñ    È  O   N      Á   ·   =  y!  ú   ·"  j  ²#     %     º%    I&     a'  j    (  S  k(  ç   ¿)  ì   §*  Ð  +  
  e-  ´   p.  g  %/  7   1  9   Å1  !   ÿ1  9   !2  Ç   [2     #3    £3  ù   ¸4  @   ²5  p   ó5     d6  )   6     ®6     Ç6  
   Î6     Ù6     Þ6  	   â6  ¿  ì6     ¬8     ½8  h   Ë8     49  &   »9  Ý   â9  #   À:  %   ä:  +   
;  1   6;  U   h;  (   ¾;  A   ç;  !   )<     K<  ë   Ù<  ]   Å=  c   #>     >  @   ?  ê  W?  O   BA  &   A  ^  ¹A  «   C  q  ÄC  |   6E  ö   ³E  &  ªF  V   ÑG  V   (H  ¯  H  \   /J  Ã   J  Ê   PK  ¿   L  ´   ÛL  .  M  ¶   ¿N  ±   vO  r  (P  P   R    ìR  °   ÿS  "  °T  ñ   ÓU  K  ÅV  o   X     X  0  Y      8Z  {   ÙZ  N  U[  Á   ¤\  Á   f]  }  (^  ï   ¦_  ¤   `  q  ;a  -   ­c  S   Ûc     /d  0   Ld  ª   }d  s   (e    e  ý   ±f  :   ¯g  i   êg     Th     gh     h     h     h     ¢h     §h     «h   $ (dollar) % (percent) **Source code:** :source:`Lib/posixpath.py` (for POSIX) and :source:`Lib/ntpath.py` (for Windows). *path* can now be an integer: ``True`` is returned if it is an  open file descriptor, ``False`` otherwise. *start* defaults to :attr:`os.curdir`. :func:`exists`, :func:`lexists`, :func:`isdir`, :func:`isfile`, :func:`islink`, and :func:`ismount` now return ``False`` instead of raising an exception for paths that contain characters or bytes unrepresentable at the OS level. :mod:`ntpath` for Windows paths :mod:`os.path` --- Common pathname manipulations :mod:`posixpath` for UNIX-style paths :ref:`Availability <availability>`: Unix, Windows. Accepts a :term:`path-like object` for *path* and *paths*. Accepts a :term:`path-like object`. Accepts a sequence of :term:`path-like objects <path-like object>`. Added Windows support. All of these functions accept either only bytes or only string objects as their parameters.  The result is an object of the same type, if a path or file name is returned. If a path doesn't exist or a symlink loop is encountered, and *strict* is ``True``, :exc:`OSError` is raised. If *strict* is ``False``, the path is resolved as far as possible and any remainder is appended without checking whether it exists. If the expansion fails or if the path does not begin with a tilde, the path is returned unchanged. If the path contains a drive letter, drive will contain everything up to and including the colon:: If the path contains an extension, then *ext* will be set to this extension, including the leading period. Note that previous periods will be ignored:: If the path contains no extension, *ext* will be ``''``:: Join one or more path segments intelligently.  The return value is the concatenation of *path* and all members of *\*paths*, with exactly one directory separator following each non-empty part, except the last. That is, the result will only end in a separator if the last part is either empty or ends in a separator. If a segment is an absolute path (which on Windows requires both a drive and a root), then all previous segments are ignored and joining continues from the absolute path segment. Leading periods of the last component of the path are considered to be part of the root:: No longer uses :envvar:`HOME` on Windows. Normalize a pathname by collapsing redundant separators and up-level references so that ``A//B``, ``A/B/``, ``A/./B`` and ``A/foo/../B`` all become ``A/B``.  This string manipulation may change the meaning of a path that contains symbolic links.  On Windows, it converts forward slashes to backward slashes. To normalize case, use :func:`normcase`. Normalize the case of a pathname.  On Windows, convert all characters in the pathname to lowercase, and also convert forward slashes to backward slashes. On other operating systems, return the path unchanged. On POSIX systems, in accordance with `IEEE Std 1003.1 2013 Edition; 4.13 Pathname Resolution <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap04.html#tag_04_13>`_, if a pathname begins with exactly two slashes, the first component following the leading characters may be interpreted in an implementation-defined manner, although more than two leading characters shall be treated as a single character. On Unix and Windows, return the argument with an initial component of ``~`` or ``~user`` replaced by that *user*'s home directory. On Unix, an initial ``~`` is replaced by the environment variable :envvar:`HOME` if it is set; otherwise the current user's home directory is looked up in the password directory through the built-in module :mod:`pwd`. An initial ``~user`` is looked up directly in the password directory. On Windows, :envvar:`USERPROFILE` will be used if set, otherwise a combination of :envvar:`HOMEPATH` and :envvar:`HOMEDRIVE` will be used.  An initial ``~user`` is handled by checking that the last directory component of the current user's home directory matches :envvar:`USERNAME`, and replacing it if so. On Windows, ``%name%`` expansions are supported in addition to ``$name`` and ``${name}``. On Windows, splits a pathname into drive/UNC sharepoint and relative path. On Windows, the drive is not reset when a rooted path segment (e.g., ``r'\foo'``) is encountered. If a segment is on a different drive or is an absolute path, all previous segments are ignored and the drive is reset. Note that since there is a current directory for each drive, ``os.path.join("c:", "foo")`` represents a path relative to the current directory on drive :file:`C:` (:file:`c:foo`), not :file:`c:\\foo`. Operating system APIs make paths canonical as needed, so it's not normally necessary to call this function. Return ``True`` if *path* is an :func:`existing <exists>` directory.  This follows symbolic links, so both :func:`islink` and :func:`isdir` can be true for the same path. Return ``True`` if *path* is an :func:`existing <exists>` regular file. This follows symbolic links, so both :func:`islink` and :func:`isfile` can be true for the same path. Return ``True`` if *path* is an absolute pathname.  On Unix, that means it begins with a slash, on Windows that it begins with a (back)slash after chopping off a potential drive letter. Return ``True`` if *path* refers to an :func:`existing <exists>` directory entry that is a symbolic link.  Always ``False`` if symbolic links are not supported by the Python runtime. Return ``True`` if *path* refers to an existing path or an open file descriptor.  Returns ``False`` for broken symbolic links.  On some platforms, this function may return ``False`` if permission is not granted to execute :func:`os.stat` on the requested file, even if the *path* physically exists. Return ``True`` if *path* refers to an existing path. Returns ``True`` for broken symbolic links.   Equivalent to :func:`exists` on platforms lacking :func:`os.lstat`. Return ``True`` if both pathname arguments refer to the same file or directory. This is determined by the device number and i-node number and raises an exception if an :func:`os.stat` call on either pathname fails. Return ``True`` if pathname *path* is a :dfn:`mount point`: a point in a file system where a different file system has been mounted.  On POSIX, the function checks whether *path*'s parent, :file:`{path}/..`, is on a different device than *path*, or whether :file:`{path}/..` and *path* point to the same i-node on the same device --- this should detect mount points for all Unix and POSIX variants.  It is not able to reliably detect bind mounts on the same filesystem.  On Windows, a drive letter root and a share UNC are always mount points, and for any other path ``GetVolumePathName`` is called to see if it is different from the input path. Return ``True`` if the file descriptors *fp1* and *fp2* refer to the same file. Return ``True`` if the stat tuples *stat1* and *stat2* refer to the same file. These structures may have been returned by :func:`os.fstat`, :func:`os.lstat`, or :func:`os.stat`.  This function implements the underlying comparison used by :func:`samefile` and :func:`sameopenfile`. Return a normalized absolutized version of the pathname *path*. On most platforms, this is equivalent to calling the function :func:`normpath` as follows: ``normpath(join(os.getcwd(), path))``. Return a relative filepath to *path* either from the current directory or from an optional *start* directory.  This is a path computation:  the filesystem is not accessed to confirm the existence or nature of *path* or *start*.  On Windows, :exc:`ValueError` is raised when *path* and *start* are on different drives. Return the argument with environment variables expanded.  Substrings of the form ``$name`` or ``${name}`` are replaced by the value of environment variable *name*.  Malformed variable names and references to non-existing variables are left unchanged. Return the base name of pathname *path*.  This is the second element of the pair returned by passing *path* to the function :func:`split`.  Note that the result of this function is different from the Unix :program:`basename` program; where :program:`basename` for ``'/foo/bar/'`` returns ``'bar'``, the :func:`basename` function returns an empty string (``''``). Return the canonical path of the specified filename, eliminating any symbolic links encountered in the path (if they are supported by the operating system). Return the directory name of pathname *path*.  This is the first element of the pair returned by passing *path* to the function :func:`split`. Return the longest common sub-path of each pathname in the sequence *paths*.  Raise :exc:`ValueError` if *paths* contain both absolute and relative pathnames, the *paths* are on the different drives or if *paths* is empty.  Unlike :func:`commonprefix`, this returns a valid path. Return the longest path prefix (taken character-by-character) that is a prefix of all paths in  *list*.  If *list* is empty, return the empty string (``''``). Return the size, in bytes, of *path*.  Raise :exc:`OSError` if the file does not exist or is inaccessible. Return the system's ctime which, on some systems (like Unix) is the time of the last metadata change, and, on others (like Windows), is the creation time for *path*. The return value is a number giving the number of seconds since the epoch (see the  :mod:`time` module).  Raise :exc:`OSError` if the file does not exist or is inaccessible. Return the time of last access of *path*.  The return value is a floating point number giving the number of seconds since the epoch (see the  :mod:`time` module).  Raise :exc:`OSError` if the file does not exist or is inaccessible. Return the time of last modification of *path*.  The return value is a floating point number giving the number of seconds since the epoch (see the  :mod:`time` module). Raise :exc:`OSError` if the file does not exist or is inaccessible. Since different operating systems have different path name conventions, there are several versions of this module in the standard library.  The :mod:`os.path` module is always the path module suitable for the operating system Python is running on, and therefore usable for local paths.  However, you can also import and use the individual modules if you want to manipulate a path that is *always* in one of the different formats.  They all have the same interface: Split the pathname *path* into a pair ``(drive, tail)`` where *drive* is either a mount point or the empty string.  On systems which do not use drive specifications, *drive* will always be the empty string.  In all cases, ``drive + tail`` will be the same as *path*. Split the pathname *path* into a pair ``(root, ext)``  such that ``root + ext == path``, and the extension, *ext*, is empty or begins with a period and contains at most one period. Split the pathname *path* into a pair, ``(head, tail)`` where *tail* is the last pathname component and *head* is everything leading up to that.  The *tail* part will never contain a slash; if *path* ends in a slash, *tail* will be empty.  If there is no slash in *path*, *head* will be empty.  If *path* is empty, both *head* and *tail* are empty.  Trailing slashes are stripped from *head* unless it is the root (one or more slashes only).  In all cases, ``join(head, tail)`` returns a path to the same location as *path* (but the strings may differ).  Also see the functions :func:`dirname` and :func:`basename`. Support for detecting non-root mount points on Windows. Symbolic links and junctions are now resolved on Windows. The *strict* parameter was added. The :mod:`pathlib` module offers high-level path objects. This function emulates the operating system's procedure for making a path canonical, which differs slightly between Windows and UNIX with respect to how links and subsequent path components interact. This function may return invalid paths because it works a character at a time.  To obtain a valid path, see :func:`commonpath`. This module implements some useful functions on pathnames. To read or write files see :func:`open`, and for accessing the filesystem see the :mod:`os` module. The path parameters can be passed as strings, or bytes, or any object implementing the :class:`os.PathLike` protocol. Unlike a Unix shell, Python does not do any *automatic* path expansions. Functions such as :func:`expanduser` and :func:`expandvars` can be invoked explicitly when an application desires shell-like path expansion.  (See also the :mod:`glob` module.) Windows now uses the same implementation as all other platforms. ``True`` if arbitrary Unicode strings can be used as file names (within limitations imposed by the file system). environment variables expansion environment variables expansion (Windows) home directory expansion module operations path pwd ~ (tilde) Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 01:10+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 $ (è´§å¸ç¬¦å·) % (ç¾åå·) **æºä»£ç :** :source:`Lib/posixpath.py` (ç¨äº POSIX) å :source:`Lib/ntpath.py` (ç¨äº Windows)ã *path* ç°å¨å¯ä»¥æ¯ä¸ä¸ªæ´æ°ï¼å¦æè¯¥æ´æ°æ¯ä¸ä¸ªå·²æå¼çæä»¶æè¿°ç¬¦ï¼è¿å ``True``ï¼å¦åè¿å ``False``ã *start* é»è®¤ä¸º :attr:`os.curdir`ã :func:`exists`ã:func:`lexists`ã:func:`isdir`ã:func:`isfile`ã:func:`islink` å :func:`ismount` ç°å¨éå°ç³»ç»å±é¢ä¸ä¸å¯è¡¨ç¤ºçå­ç¬¦æå­èçè·¯å¾æ¶ï¼ä¼è¿å ``False``ï¼èä¸æ¯æåºå¼å¸¸ã :mod:`ntpath` ç¨äº Windows è·¯å¾ :mod:`os.path` --- å¸¸ç¨è·¯å¾æä½ :mod:`posixpath` ç¨äºUnix æ ·å¼çè·¯å¾ :ref:`å¯ç¨æ§ <availability>`: Unix, Windowsã æ¥åä¸ä¸ª :term:`ç±»è·¯å¾å¯¹è±¡ <path-like object>` ç¨äº *path* å *paths* ã æ¥åä¸ä¸ª :term:`path-like object`ã æ¥åä¸ä¸ª :term:`ç±»è·¯å¾å¯¹è±¡ <path-like object>` åºåã æ·»å äºå¯¹ Windows çæ¯æã ææè¿äºå½æ°é½ä»æ¥åå­èæå­ç¬¦ä¸²å¯¹è±¡ä½ä¸ºå¶åæ°ãå¦æè¿åè·¯å¾ææä»¶åï¼åç»ææ¯ç¸åç±»åçå¯¹è±¡ã å¦æä¸ä¸ªè·¯å¾ä¸å­å¨ææ¯éå°äºç¬¦å·é¾æ¥å¾ªç¯ï¼å¹¶ä¸ *strict* ä¸º ``True``ï¼åä¼å¼å :exc:`OSError`ã å¦æ *strict* ä¸º ``False``ï¼åä¼å°½å¯è½å°è§£æè·¯å¾å¹¶æ·»å ç»æèä¸æ£æ¥è·¯å¾æ¯å¦å­å¨ã å¦æå±å¼è·¯å¾å¤±è´¥ï¼æèè·¯å¾ä¸æ¯ä»¥æ³¢æµªå·å¼å¤´ï¼åè·¯å¾å°ä¿æä¸åã å¦æè·¯å¾ path åå«çç¬¦ï¼å drive å°åå«åå·ä¹åçææåå®¹åæ¬åå·æ¬èº«:: å¦æè·¯å¾ path åå«æ©å±åï¼å *ext* å°è¢«è®¾ä¸ºè¯¥æ©å±åï¼åæ¬æå¤´çå¥ç¹ã è¯·æ³¨æå¨å¶ä¹åçå¥ç¹å°è¢«å¿½ç¥:: å¦æè·¯å¾ path ä¸åå«æ©å±åï¼å *ext* å°ä¸º ``''``:: æºè½å°åå¹¶ä¸ä¸ªæå¤ä¸ªè·¯å¾é¨åã è¿åå¼å°æ¯ *path* åææ *\*paths* æåçæ¼æ¥ï¼å¶ä¸­æ¯ä¸ªéç©ºé¨ååé¢é½ç´§è·ä¸ä¸ªç®å½åéç¬¦ï¼æåä¸ä¸ªé¤å¤ã ä¹å°±æ¯è¯´ï¼å¦ææåä¸ä¸ªé¨åä¸ºç©ºææ¯ä»¥ä¸ä¸ªåéç¬¦ç»æåç»æå°ä»ä»¥ä¸ä¸ªåéç¬¦ç»æã å¦ææä¸ªé¨åä¸ºç»å¯¹è·¯å¾ï¼å¨ Windows ä¸éè¦åæ¶æé©±å¨å¨å·åæ ¹è·¯å¾ç¬¦å·ï¼ï¼åä¹åçææé¨åä¼è¢«å¿½ç¥å¹¶ä»è¯¥ç»å¯¹è·¯å¾é¨åå¼å§æ¼æ¥ã path ä¸­æåä¸é¨åå¦æä»¥ç¹å·å¼å¤´åä¼è¢«è§ä¸º root çä¸é¨å:: Windows ä¸åä½¿ç¨ :envvar:`HOME`ã éè¿æå å¤ä½çåéç¬¦åå¯¹ä¸çº§ç®å½çå¼ç¨æ¥æ ååè·¯å¾åï¼æä»¥ ``A//B``ã``A/B/``ã``A/./B`` å ``A/foo/../B`` é½ä¼è½¬æ¢æ ``A/B``ãè¿ä¸ªå­ç¬¦ä¸²æä½å¯è½ä¼æ¹åå¸¦æç¬¦å·é¾æ¥çè·¯å¾çå«ä¹ãå¨ Windows ä¸ï¼æ¬æ¹æ³å°æ­£ææ è½¬æ¢ä¸ºåææ ãè¦è§èå¤§å°åï¼è¯·ä½¿ç¨ :func:`normcase`ã è§èè·¯å¾çå¤§å°åãå¨ Windows ä¸ï¼å°è·¯å¾ä¸­çææå­ç¬¦é½è½¬æ¢ä¸ºå°åï¼å¹¶å°æ­£ææ è½¬æ¢ä¸ºåææ ãå¨å¶ä»æä½ç³»ç»ä¸è¿ååè·¯å¾ã å¨ POSIX ç³»ç»ä¸ï¼æ ¹æ® `IEEE Std 1003.1 2013 Edition; 4.13 Pathname Resolution <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap04.html#tag_04_13>`_ï¼å¦æä¸ä¸ªè·¯å¾åç§°ä»¥ä¸¤ä¸ªææ å¼å§ï¼åå¼å§å­ç¬¦ä¹åçç¬¬ä¸ä¸ªé¨åå°ä»¥å·ä½å®ç°æå®ä¹çæ¹å¼æ¥è§£è¯»ï¼ä½æ¯è¶è¿ä¸¤ä¸ªå¼å§å­ç¬¦åå°è¢«è§ä¸ºåä¸ªå­ç¬¦ã å¨ Unix å Windows ä¸ï¼å°åæ°ä¸­å¼å¤´é¨åç ``~`` æ ``~user`` æ¿æ¢ä¸ºå½å *ç¨æ·* çå®¶ç®å½å¹¶è¿åã å¨ Unix ä¸ï¼å¼å¤´ç ``~`` ä¼è¢«ç¯å¢åé :envvar:`HOME` ä»£æ¿ï¼å¦æåéæªè®¾ç½®ï¼åéè¿åç½®æ¨¡å :mod:`pwd` å¨ password ç®å½ä¸­æ¥æ¾å½åç¨æ·çä¸»ç®å½ãä»¥ ``~user`` å¼å¤´åç´æ¥å¨ password ç®å½ä¸­æ¥æ¾ã å¨ Windows ä¸ï¼å¦æ :envvar:`USERPROFILE` å·²è®¾ç½®å°ä¼è¢«ä½¿ç¨ï¼å¦å :envvar:`HOMEPATH` å :envvar:`HOMEDRIVE` å°è¢«ç»åèµ·æ¥ä½¿ç¨ã åå§ç ``~user`` ä¼éè¿æ£æ¥å½åç¨æ·çå®¶ç®å½ä¸­å¹é :envvar:`USERNAME` çæåä¸é¨åç®å½åå¹¶æ§è¡æ¿æ¢æ¥å¤çã å¨ Windows ä¸ï¼é¤äº ``$name`` å ``${name}`` å¤ï¼è¿å¯ä»¥å±å¼ ``%name%``ã å¨ Windows ä¸ï¼æ¬æ¹æ³å°è·¯å¾æåä¸ºé©±å¨å¨/UNC æ ¹èç¹åç¸å¯¹è·¯å¾ã å¨ Windowsï¼å½éå°ç»å¯¹è·¯å¾é¨å (å¦ ``r'\foo'``) æ¶é©±å¨å¨å·å°ä¸ä¼è¢«éç½®ã å¦ææä¸ªé¨åä½äºä¸åé©±å¨å¨æä¸ºç»å¯¹è·¯å¾ï¼åä¹åçææé¨åä¼è¢«å¿½ç¥å¹¶ä¸è¯¥é©±å¨å¨å·ä¼è¢«éç½®ã è¯·æ³¨æç±äºæ¯ä¸ªé©±å¨å¨é½æä¸ä¸ªå½åç®å½ï¼å æ­¤ ``os.path.join("c:", "foo")`` æ¯ä»£è¡¨é©±å¨å¨ :file:`C:` ä¸å½åè·¯å¾çç¸å¯¹è·¯å¾ (:file:`c:foo`)ï¼èä¸æ¯ :file:`c:\\foo`ã æä½ç³»ç» API ä¼æ ¹æ®éè¦æ¥è§èåè·¯å¾ï¼å æ­¤éå¸¸ä¸éè¦è°ç¨æ­¤å½æ°ã å¦æ *path* æ¯ :func:`ç°æç <exists>` ç®å½ï¼åè¿å ``True``ãæ¬æ¹æ³ä¼è·è¸ªç¬¦å·é¾æ¥ï¼å æ­¤ï¼å¯¹äºåä¸è·¯å¾ï¼:func:`islink` å :func:`isdir` é½å¯è½ä¸º ``True``ã å¦æ *path* æ¯ :func:`ç°æç <exists>` å¸¸è§æä»¶ï¼åè¿å ``True``ãæ¬æ¹æ³ä¼è·è¸ªç¬¦å·é¾æ¥ï¼å æ­¤ï¼å¯¹äºåä¸è·¯å¾ï¼:func:`islink` å :func:`isfile` é½å¯è½ä¸º ``True``ã å¦æ *path* æ¯ä¸ä¸ªç»å¯¹è·¯å¾ï¼åè¿å ``True``ãå¨ Unix ä¸ï¼å®å°±æ¯ä»¥ææ å¼å¤´ï¼èå¨ Windows ä¸ï¼å®å¯ä»¥æ¯å»æé©±å¨å¨å·åä»¥ææ ï¼æåææ ï¼å¼å¤´ã å¦æ *path* æåç :func:`ç°æ <exists>` ç®å½æ¡ç®æ¯ä¸ä¸ªç¬¦å·é¾æ¥ï¼åè¿å ``True``ãå¦æ Python è¿è¡æ¶ä¸æ¯æç¬¦å·é¾æ¥ï¼åæ»æ¯è¿å ``False``ã å¦æ *path* æåä¸ä¸ªå·²å­å¨çè·¯å¾æå·²æå¼çæä»¶æè¿°ç¬¦ï¼è¿å ``True``ãå¯¹äºå¤±æçç¬¦å·é¾æ¥ï¼è¿å ``False``ãå¨æäºå¹³å°ä¸ï¼å¦æä½¿ç¨ :func:`os.stat` æ¥è¯¢å°ç®æ æä»¶æ²¡ææ§è¡æéï¼å³ä½¿ *path* ç¡®å®å­å¨ï¼æ¬å½æ°ä¹å¯è½è¿å ``False``ã å¦æ *path* æåä¸ä¸ªå·²å­å¨çè·¯å¾ï¼è¿å ``True``ãå¯¹äºå¤±æçç¬¦å·é¾æ¥ï¼ä¹è¿å ``True``ãå¨ç¼ºå¤± :func:`os.lstat` çå¹³å°ä¸ç­åäº :func:`exists`ã å¦æä¸¤ä¸ªè·¯å¾é½æåç¸åçæä»¶æç®å½ï¼åè¿å ``True``ãè¿ç±è®¾å¤å·å inode å·ç¡®å®ï¼å¨ä»»ä¸è·¯å¾ä¸è°ç¨ :func:`os.stat` å¤±è´¥åæåºå¼å¸¸ã å¦æè·¯å¾ *path* æ¯ :dfn:`æè½½ç¹` ï¼æä»¶ç³»ç»ä¸­æè½½å¶ä»æä»¶ç³»ç»çç¹ï¼ï¼åè¿å ``True``ãå¨ POSIX ä¸ï¼è¯¥å½æ°æ£æ¥ *path* çç¶ç®å½ :file:`{path}/..` æ¯å¦å¨ä¸ *path* ä¸åçè®¾å¤ä¸ï¼æè :file:`{path}/..` å *path* æ¯å¦æååä¸è®¾å¤ä¸çåä¸ inodeï¼è¿ä¸æ£æµæè½½ç¹çæ¹æ³éç¨äºææ Unix å POSIX åä½ï¼ãæ¬æ¹æ³ä¸è½å¯é å°æ£æµåä¸æä»¶ç³»ç»ä¸çç»å®æè½½ (bind mount)ãå¨ Windows ä¸ï¼çç¬¦åå±äº« UNC å§ç»æ¯æè½½ç¹ï¼å¯¹äºä»»ä½å¶ä»è·¯å¾ï¼å°è°ç¨ ``GetVolumePathName`` æ¥æ¥çå®æ¯å¦ä¸è¾å¥çè·¯å¾ä¸åã å¦ææä»¶æè¿°ç¬¦ *fp1* å *fp2* æåç¸åæä»¶ï¼åè¿å ``True``ã å¦æ stat åç» *stat1* å *stat2* æåç¸åæä»¶ï¼åè¿å ``True``ãè¿äº stat åç»å¯è½æ¯ç± :func:`os.fstat`ã:func:`os.lstat` æ :func:`os.stat` è¿åçãæ¬å½æ°å®ç°äº :func:`samefile` å :func:`sameopenfile` åºå±æä½¿ç¨çæ¯è¾è¿ç¨ã è¿åè·¯å¾ *path* çç»å¯¹è·¯å¾ï¼æ ååçï¼ãå¨å¤§å¤æ°å¹³å°ä¸ï¼è¿ç­åäºç¨ ``normpath(join(os.getcwd(), path))`` çæ¹å¼è°ç¨ :func:`normpath` å½æ°ã è¿åä»å½åç®å½æå¯éç *start* ç®å½è³ *path* çç¸å¯¹æä»¶è·¯å¾ã è¿åªæ¯ä¸ä¸ªè·¯å¾è®¡ç®ï¼ä¸ä¼è®¿é®æä»¶ç³»ç»æ¥ç¡®è®¤ *path* æ *start* æ¯å¦å­å¨æå¶æ§è´¨ã å¨ Windows ä¸ï¼å½ *path* å *start* ä½äºä¸åé©±å¨å¨æ¶å°å¼å :exc:`ValueError`ã è¾å¥å¸¦æç¯å¢åéçè·¯å¾ä½ä¸ºåæ°ï¼è¿åå±å¼åéä»¥åçè·¯å¾ã``$name`` æ ``${name}`` å½¢å¼çå­å­ç¬¦ä¸²è¢«ç¯å¢åé *name* çå¼æ¿æ¢ãæ ¼å¼éè¯¯çåéåç§°åå¯¹ä¸å­å¨åéçå¼ç¨ä¿æä¸åã è¿åè·¯å¾ *path* çåºæ¬åç§°ãè¿æ¯å° *path* ä¼ å¥å½æ° :func:`split` ä¹åï¼è¿åçä¸å¯¹å¼ä¸­çç¬¬äºä¸ªåç´ ãè¯·æ³¨æï¼æ­¤å½æ°çç»æä¸Unix :program:`basename` ç¨åºä¸åã:program:`basename` å¨ ``'/foo/bar/'`` ä¸è¿å ``'bar'``ï¼è :func:`basename` å½æ°è¿åä¸ä¸ªç©ºå­ç¬¦ä¸² (``''``)ã è¿åæå®æä»¶çè§èè·¯å¾ï¼æ¶é¤è·¯å¾ä¸­å­å¨çä»»ä½ç¬¦å·é¾æ¥ï¼å¦ææä½ç³»ç»æ¯æï¼ã è¿åè·¯å¾ *path* çç®å½åç§°ãè¿æ¯å° *path* ä¼ å¥å½æ° :func:`split` ä¹åï¼è¿åçä¸å¯¹å¼ä¸­çç¬¬ä¸ä¸ªåç´ ã æ¥ååå«å¤ä¸ªè·¯å¾çåºå *paths*ï¼è¿å *paths* çæé¿å¬å±å­è·¯å¾ãå¦æ *paths* åæ¶åå«ç»å¯¹è·¯å¾åç¸å¯¹è·¯å¾ï¼æ *paths* å¨ä¸åçé©±å¨å¨ä¸ï¼æ *paths* ä¸ºç©ºï¼åæåº :exc:`ValueError` å¼å¸¸ãä¸ :func:`commonprefix` ä¸åï¼æ¬æ¹æ³è¿åææè·¯å¾ã æ¥ååå«å¤ä¸ªè·¯å¾ç *åè¡¨*ï¼è¿åææè·¯å¾çæé¿å¬å±åç¼ï¼éå­ç¬¦æ¯è¾ï¼ãå¦æ *åè¡¨* ä¸ºç©ºï¼åè¿åç©ºå­ç¬¦ä¸² (``''``)ã è¿å *path* çå¤§å°ï¼ä»¥å­èä¸ºåä½ãå¦æè¯¥æä»¶ä¸å­å¨æä¸å¯è®¿é®ï¼åæåº :exc:`OSError` å¼å¸¸ã è¿å *path* å¨ç³»ç»ä¸­ç ctimeï¼å¨æäºç³»ç»ï¼æ¯å¦ Unixï¼ä¸ï¼å®æ¯åæ°æ®çæåä¿®æ¹æ¶é´ï¼å¶ä»ç³»ç»ï¼æ¯å¦ Windowsï¼ä¸ï¼å®æ¯ *path* çåå»ºæ¶é´ãè¿åå¼æ¯ä¸ä¸ªæ°ï¼ä¸ºçºªåç§æ°ï¼åè§ :mod:`time` æ¨¡åï¼ãå¦æè¯¥æä»¶ä¸å­å¨æä¸å¯è®¿é®ï¼åæåº :exc:`OSError` å¼å¸¸ã è¿å *path* çæåè®¿é®æ¶é´ãè¿åå¼æ¯ä¸ä¸ªæµ®ç¹æ°ï¼ä¸ºçºªåç§æ°ï¼åè§ :mod:`time` æ¨¡åï¼ãå¦æè¯¥æä»¶ä¸å­å¨æä¸å¯è®¿é®ï¼åæåº :exc:`OSError` å¼å¸¸ã è¿å *path* çæåä¿®æ¹æ¶é´ãè¿åå¼æ¯ä¸ä¸ªæµ®ç¹æ°ï¼ä¸ºçºªåç§æ°ï¼åè§ :mod:`time` æ¨¡åï¼ãå¦æè¯¥æä»¶ä¸å­å¨æä¸å¯è®¿é®ï¼åæåº :exc:`OSError` å¼å¸¸ã ç±äºä¸åçæä½ç³»ç»å·æä¸åçè·¯å¾åç§°çº¦å®ï¼å æ­¤æ ååºä¸­ææ­¤æ¨¡åçå ä¸ªçæ¬ã:mod:`os.path` æ¨¡åå§ç»æ¯éå Python è¿è¡çæä½ç³»ç»çè·¯å¾æ¨¡åï¼å æ­¤å¯ç¨äºæ¬å°è·¯å¾ãä½æ¯ï¼å¦ææä½çè·¯å¾ *æ»æ¯* ä»¥ä¸ç§ä¸åçæ ¼å¼æ¾ç¤ºï¼é£ä¹ä¹å¯ä»¥åå«å¯¼å¥åä½¿ç¨åä¸ªæ¨¡åãå®ä»¬é½å·æç¸åçæ¥å£ï¼ å°è·¯å¾ *path* æåä¸ºä¸å¯¹ï¼å³ ``(drive, tail)``ï¼å¶ä¸­ *drive* æ¯æè½½ç¹æç©ºå­ç¬¦ä¸²ãå¨æ²¡æé©±å¨å¨æ¦å¿µçç³»ç»ä¸ï¼*drive* å°å§ç»ä¸ºç©ºå­ç¬¦ä¸²ãå¨æææåµä¸ï¼``drive + tail`` é½ä¸ *path* ç¸åã å°è·¯å¾åç§° *path* æåä¸º ``(root, ext)``  å¯¹ä½¿å¾ ``root + ext == path``ï¼å¹¶ä¸æ©å±å *ext* ä¸ºç©ºæä»¥å¥ç¹æå¤´å¹¶æå¤åªåå«ä¸ä¸ªå¥ç¹ã å°è·¯å¾ *path* æåä¸ºä¸å¯¹ï¼å³ ``(head, tail)``ï¼å¶ä¸­ï¼*tail* æ¯è·¯å¾çæåä¸é¨åï¼è *head* éæ¯é¤æåé¨åå¤çææåå®¹ã*tail* é¨åä¸ä¼åå«ææ ï¼å¦æ *path* ä»¥ææ ç»å°¾ï¼å *tail* å°ä¸ºç©ºãå¦æ *path* ä¸­æ²¡æææ ï¼*head* å°ä¸ºç©ºãå¦æ *path* ä¸ºç©ºï¼å *head* å *tail* åä¸ºç©ºã*head* æ«å°¾çææ ä¼è¢«å»æï¼é¤éå®æ¯æ ¹ç®å½ï¼å³å®ä»åå«ä¸ä¸ªæå¤ä¸ªææ ï¼ãå¨æææåµä¸ï¼``join(head, tail)`` æåçä½ç½®é½ä¸ *path* ç¸åï¼ä½å­ç¬¦ä¸²å¯è½ä¸åï¼ãå¦è¯·åè§å½æ° :func:`dirname` å :func:`basename`ã æ¯æå¨ Windows ä¸æ£æµéæ ¹æè½½ç¹ã å¨ Windows ä¸ç°å¨å¯ä»¥æ­£ç¡®è§£æç¬¦å·é¾æ¥åäº¤æ¥ç¹ (junction point)ã å¢å äº *strict* å½¢åã :mod:`pathlib` æ¨¡åæä¾é«çº§è·¯å¾å¯¹è±¡ã è¿ä¸ªå½æ°ä¼æ¨¡ææä½ç³»ç»çæè§èè·¯å¾çè¿ç¨ï¼Windows ä¸ UNIX çè¿ä¸ªè¿ç¨å¨å¤çé¾æ¥ååç»­è·¯å¾ç»æé¨åçäº¤äºæ¹å¼ä¸ææå·®å¼ã æ­¤å½æ°æ¯éå­ç¬¦æ¯è¾ï¼å æ­¤å¯è½è¿åæ æè·¯å¾ãè¦è·åææè·¯å¾ï¼åè§ :func:`commonpath`ã æ­¤æ¨¡åå®ç°äºä¸äºæç¨çè·¯å¾åç§°ç¸å³å½æ°ã è¦è¯»åæåå¥æä»¶è¯·åè§ :func:`open`ï¼å¯¹äºè®¿é®æä»¶ç³»ç»è¯·åé :mod:`os` æ¨¡åã ä¼ ç» path å½¢åçå¯ä»¥æ¯å­ç¬¦ä¸²ãå­èä¸²æèä»»ä½å®ç°äº :class:`os.PathLike` åè®®çå¯¹è±¡ã ä¸ Unix ä¸åï¼Python ä¸ä¼æ§è¡ä»»ä½ *èªå¨* è·¯å¾æ©å±ã å½åºç¨ç¨åºéè¦ç±»ä¼¼ shell çè·¯å¾æ©å±æ¶ï¼å¯ä»¥æ¾å¼å°åèµ·è°ç¨ :func:`expanduser` å :func:`expandvars` è¿æ ·çå½æ°ã ï¼å¦è¯·åé :mod:`glob` æ¨¡åãï¼ Windowsç°å¨ä½¿ç¨ä¸å¶ä»ææå¹³å°ç¸åçå®ç°ã å¦æï¼å¨æä»¶ç³»ç»éå¶ä¸ï¼åè®¸å°ä»»æ Unicode å­ç¬¦ä¸²ç¨ä½æä»¶åï¼åä¸º ``True``ã ç¯å¢åéæ©å± ç¯å¢åéæ©å± (Windows) ä¸»ç®å½æ©å± module æä½ path pwd ~ (æ³¢æµªå·) 