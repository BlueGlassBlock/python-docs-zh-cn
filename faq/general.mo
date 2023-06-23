Þ    c      4              L  c   M  W   ±  M   	    W  E   \  &  ¢     É	  C   è	  6   ,
  ¡   c
  ®        ´  1   ½  ®   ï  /    ô  Î  x   Ã     <     P  »   c  2     R   R    ¥  +   :  %   f  ,     3   ¹  2   í  !         B  Õ  X  r  .     ¡  9   B  §   |     $  ¡  ¥     G  4   Ü  ;     7   M        	   ;   !  f  X!  k   ¿#     +$     «$  ê  Á$  Ì   ¬&     y'  v   '  ­  	(  Ø   ·*  .   +  (  ¿+  8   è,     !-  i   ¥-  D  .    T/  B  X0  ½   1     Y2  s   ö2  j   j3    Õ3  à   _5  o  @6  Ç   °8  n  x9    ç:  ß   <  @   å<  N   &=  B   u=  Î  ¸=  m   ?  U   õ?  ²  K@  Í   þA  e   ÌB  Ü   2C     D     (D  '   8D  <   `D  U  D  -   óE     !F  *   :F  Z   eF     ÀF     DG     IG     ÝG  Ä  kH  0  0J  ¿  aK  P   !M  D   rM  D   ·M  ÿ   üM  4   üN    1O  )   IP  M   sP  )   ÁP     ëP     ~Q     R  8   !R  À   ZR  C  S  ¿  _T  q   V     V     V  »   ±V  2   mW  b    W    X  2   Y  &   ¼Y  5   ãY  5   Z  +   OZ     {Z     Z  Ë  ²Z  e  ~\  {  ä]  ?   `_  £    _     D`    Ý`  »   pb  7   ,c  8   dc  ;   c  f  Ùc  î   @f  V   /g  ?  g  n   Æi     5j  *   ¼j    çj  »    m     ¼m  a   Öm  t  8n  Ñ   ­p  2   q  é   ²q  C   r  ~   àr  e   _s  B  Ås  î   u  -  ÷u  ¯   %w     Õw  s   qx     åx  |  ny  Á   ëz  S  ­{  Ê   ~  R  Ì~  
    À   *  7   ë  >   #  8   b  §    \   C  H        é  Ä   z  o   ?  æ   ¯          °  #   Ä  5   è  {    6        Ñ  )   ë  Z         p  	             £    .  .  Ä   *A* is the major version number -- it is only incremented for really major changes in the language. *B* is the minor version number -- it is incremented for less earth-shattering changes. *C* is the micro version number -- it is incremented for each bugfix release. Alpha and beta releases are available from https://www.python.org/downloads/.  All releases are announced on the comp.lang.python and comp.lang.python.announce newsgroups and on the Python home page at https://www.python.org/; an RSS feed of news is available. Alpha, beta and release candidate versions have an additional suffix: Announcements of new software releases and events can be found in comp.lang.python.announce, a low-traffic moderated list that receives about five postings per day.  It's available as `the python-announce mailing list <https://mail.python.org/mailman3/lists/python-announce-list.python.org/>`_. Are there any books on Python? Are there any published articles about Python that I can reference? Are there copyright restrictions on the use of Python? Consult `the Beginner's Guide <https://wiki.python.org/moin/BeginnersGuide>`_ to find information for beginning Python programmers, including lists of tutorials. Consult the `Getting Started section of the Python Developer's Guide <https://devguide.python.org/setup/>`__ for more information on getting the source code and compiling it. Contents Do I have to like "Monty Python's Flying Circus"? Donations to the PSF are tax-exempt in the US.  If you use Python and find it helpful, please contribute via `the PSF donation page <https://www.python.org/psf/donations/>`_. During the 1989 Christmas holidays, I had a lot of time on my hand, so I decided to give it a try.  During the next year, while still mostly working on it in my own time, Python was used in the Amoeba project with increasing success, and the feedback from colleagues made me add many early improvements. For a student who has never programmed before, using a statically typed language seems unnatural.  It presents additional complexity that the student must master and slows the pace of the course.  The students are trying to learn to think like a computer, decompose problems, design consistent interfaces, and encapsulate data.  While learning to use a statically typed language is important in the long term, it is not necessarily the best topic to address in the students' first programming course. For more information on how Python is developed, consult `the Python Developer's Guide <https://devguide.python.org/>`_. General Information General Python FAQ Guido van Rossum and Jelke de Boer, "Interactively Testing Remote Servers Using the Python Programming Language", CWI Quarterly, Volume 4, Issue 4 (December 1991), Amsterdam, pp 283--303. Have any significant projects been done in Python? Here's a *very* brief summary of what started it all, written by Guido van Rossum: High-profile Python projects include `the Mailman mailing list manager <https://www.list.org>`_ and `the Zope application server <https://www.zope.dev>`_.  Several Linux distributions, most notably `Red Hat <https://www.redhat.com>`_, have written part or all of their installer and system administration software in Python.  Companies that use Python internally include Google, Yahoo, and Lucasfilm Ltd. How do I get a beta test version of Python? How do I get documentation on Python? How do I obtain a copy of the Python source? How do I submit bug reports and patches for Python? How does the Python version numbering scheme work? How many people are using Python? How stable is Python? I had a number of gripes about the ABC language, but also liked many of its features.  It was impossible to extend the ABC language (or its implementation) to remedy my complaints -- in fact its lack of extensibility was one of its biggest problems.  I had some experience with using Modula-2+ and talked with the designers of Modula-3 and read the Modula-3 report. Modula-3 is the origin of the syntax and semantics used for exceptions, and some other Python features. I had extensive experience with implementing an interpreted language in the ABC group at CWI, and from working with this group I had learned a lot about language design.  This is the origin of many Python features, including the use of indentation for statement grouping and the inclusion of very-high-level data types (although the details are all different in Python). I was working in the Amoeba distributed operating system group at CWI.  We needed a better way to do system administration than by writing either C programs or Bourne shell scripts, since Amoeba had its own system call interface which wasn't easily accessible from the Bourne shell.  My experience with error handling in Amoeba made me acutely aware of the importance of exceptions as a programming language feature. I've never programmed before. Is there a Python tutorial? If you want to discuss Python's use in education, you may be interested in joining `the edu-sig mailing list <https://www.python.org/community/sigs/current/edu-sig>`_. In February 1991, after just over a year of development, I decided to post to USENET.  The rest is in the ``Misc/HISTORY`` file. In general, no.  There are already millions of lines of Python code around the world, so any change in the language that invalidates more than a very small fraction of existing programs has to be frowned upon.  Even if you can provide a conversion program, there's still the problem of updating all documentation; many books have been written about Python, and we don't want to invalidate them all at a single stroke. In other words, all versions labeled *2.0aN* precede the versions labeled *2.0bN*, which precede versions labeled *2.0rcN*, and *those* precede 2.0. Is Python a good language for beginning programmers? Is it reasonable to propose incompatible changes to Python? Is there a newsgroup or mailing list devoted to Python? It is still common to start students with a procedural and statically typed language such as Pascal, C, or a subset of C++ or Java.  Students may be better served by learning Python as their first language.  Python has a very simple and consistent syntax and a large standard library and, most importantly, using Python in a beginning programming course lets students concentrate on important programming skills such as problem decomposition and data type design.  With Python, students can be quickly introduced to basic concepts such as loops and procedures.  They can probably even work with user-defined objects in their very first course. It occurred to me that a scripting language with a syntax like ABC but with access to the Amoeba system calls would fill the need.  I realized that it would be foolish to write an Amoeba-specific language, so I decided that I needed a language that was generally extensible. It's probably best to cite your favorite book about Python. Many other aspects of Python make it a good first language.  Like Java, Python has a large standard library so that students can be assigned programming projects very early in the course that *do* something.  Assignments aren't restricted to the standard four-function calculator and check balancing programs.  By using the standard library, students can gain the satisfaction of working on realistic applications as they learn the fundamentals of programming. Using the standard library also teaches students about code reuse.  Third-party modules such as PyGame are also helpful in extending the students' reach. More info about other mailing lists and newsgroups can be found at https://www.python.org/community/lists/. New development is discussed on `the python-dev mailing list <https://mail.python.org/mailman3/lists/python-dev.python.org/>`_. No, but it helps.  :) Not all releases are bugfix releases.  In the run-up to a new feature release, a series of development releases are made, denoted as alpha, beta, or release candidate.  Alphas are early releases in which interfaces aren't yet finalized; it's not unexpected to see an interface change between two alpha releases. Betas are more stable, preserving existing interfaces but possibly adding new modules, and release candidates are frozen, making no changes except as needed to fix critical bugs. Providing a gradual upgrade path is necessary if a feature has to be changed. :pep:`5` describes the procedure followed for introducing backward-incompatible changes while minimizing disruption for users. Python in the real world Python is a high-level general-purpose programming language that can be applied to many different classes of problems. Python is an interpreted, interactive, object-oriented programming language.  It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes.  It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming. Python combines remarkable power with very clear syntax. It has interfaces to many system calls and libraries, as well as to various window systems, and is extensible in C or C++.  It is also usable as an extension language for applications that need a programmable interface. Finally, Python is portable: it runs on many Unix variants including Linux and macOS, and on Windows. Python is available for free download, so there are no sales figures, and it's available from many different sites and packaged with many Linux distributions, so download statistics don't tell the whole story either. Python versions are numbered "A.B.C" or "A.B": Python's interactive interpreter enables students to test language features while they're programming.  They can keep a window with the interpreter running while they enter their program's source in another window.  If they can't remember the methods for a list, they can do something like this:: See :pep:`6` for more information about bugfix releases. See `the license page <https://docs.python.org/3/license.html>`_ to find further explanations and the full text of the PSF License. See also the documentation for :data:`sys.version`, :data:`sys.hexversion`, and :data:`sys.version_info`. See https://peps.python.org/ for the Python Enhancement Proposals (PEPs). PEPs are design documents describing a suggested new feature for Python, providing a concise technical specification and a rationale.  Look for a PEP titled "Python X.Y Release Schedule", where X.Y is a version that hasn't been publicly released yet. See https://www.python.org/about/success for a list of projects that use Python. Consulting the proceedings for `past Python conferences <https://www.python.org/community/workshops/>`_ will reveal contributions from many different companies and organizations. The Python Software Foundation is an independent non-profit organization that holds the copyright on Python versions 2.1 and newer.  The PSF's mission is to advance open source technology related to the Python programming language and to publicize the use of Python.  The PSF's home page is at https://www.python.org/psf/. The Python logo is trademarked, and in certain cases permission is required to use it.  Consult `the Trademark Usage Policy <https://www.python.org/psf/trademarks/>`__ for more information. The Python project's infrastructure is located all over the world and is managed by the Python Infrastructure Team. Details `here <https://infra.psf.io>`__. The `very first article <https://ir.cwi.nl/pub/18204>`_ about Python was written in 1991 and is now quite outdated. The comp.lang.python newsgroup is very active, but not all Python users post to the group or even read it. The developers issue bugfix releases of older versions, so the stability of existing releases gradually improves.  Bugfix releases, indicated by a third component of the version number (e.g. 3.5.3, 3.6.2), are managed for stability; only fixes for known problems are included in a bugfix release, and it's guaranteed that interfaces will remain the same throughout a series of bugfix releases. The documentation is written in reStructuredText and processed by `the Sphinx documentation tool <https://www.sphinx-doc.org/>`__.  The reStructuredText source for the documentation is part of the Python source distribution. The language comes with a large standard library that covers areas such as string processing (regular expressions, Unicode, calculating differences between files), internet protocols (HTTP, FTP, SMTP, XML-RPC, POP, IMAP), software engineering (unit testing, logging, profiling, parsing Python code), and operating system interfaces (system calls, filesystems, TCP/IP sockets).  Look at the table of contents for :ref:`library-index` to get an idea of what's available.  A wide variety of third-party extensions are also available.  Consult `the Python Package Index <https://pypi.org>`_ to find packages of interest to you. The latest Python source distribution is always available from python.org, at https://www.python.org/downloads/.  The latest development sources can be obtained at https://github.com/python/cpython/. The latest stable releases can always be found on the `Python download page <https://www.python.org/downloads/>`_.  There are two production-ready versions of Python: 2.x and 3.x. The recommended version is 3.x, which is supported by most widely used libraries.  Although 2.x is still widely used, `it is not maintained anymore <https://peps.python.org/pep-0373/>`_. The source distribution is a gzipped tar file containing the complete C source, Sphinx-formatted documentation, Python library modules, example programs, and several useful pieces of freely distributable software.  The source will compile and run out of the box on most UNIX platforms. The standard documentation for the current stable version of Python is available at https://docs.python.org/3/.  PDF, plain text, and downloadable HTML versions are also available at https://docs.python.org/3/download.html. The suffix for a beta version is "bN" for some small number *N*. The suffix for a release candidate version is "rcN" for some small number *N*. The suffix for an alpha version is "aN" for some small number *N*. There are also good IDEs for Python.  IDLE is a cross-platform IDE for Python that is written in Python using Tkinter. Emacs users will be happy to know that there is a very good Python mode for Emacs.  All of these programming environments provide syntax highlighting, auto-indenting, and access to the interactive interpreter while coding.  Consult `the Python wiki <https://wiki.python.org/moin/PythonEditors>`_ for a full list of Python editing environments. There are numerous tutorials and books available.  The standard documentation includes :ref:`tutorial-index`. There are probably millions of users, though it's difficult to obtain an exact count. There is a newsgroup, :newsgroup:`comp.lang.python`, and a mailing list, `python-list <https://mail.python.org/mailman/listinfo/python-list>`_.  The newsgroup and mailing list are gatewayed into each other -- if you can read news it's unnecessary to subscribe to the mailing list. :newsgroup:`comp.lang.python` is high-traffic, receiving hundreds of postings every day, and Usenet readers are often more able to cope with this volume. To find out more, start with :ref:`tutorial-index`.  The `Beginner's Guide to Python <https://wiki.python.org/moin/BeginnersGuide>`_ links to other introductory tutorials and resources for learning Python. To report a bug or submit a patch, use the issue tracker at https://github.com/python/cpython/issues. Very stable.  New, stable releases have been coming out roughly every 6 to 18 months since 1991, and this seems likely to continue.  As of version 3.9, Python will have a new feature release every 12 months (:pep:`602`). What is Python good for? What is Python? What is the Python Software Foundation? What new developments are expected for Python in the future? When he began implementing Python, Guido van Rossum was also reading the published scripts from `"Monty Python's Flying Circus" <https://en.wikipedia.org/wiki/Monty_Python>`__, a BBC comedy series from the 1970s.  Van Rossum thought he needed a name that was short, unique, and slightly mysterious, so he decided to call the language Python. Where in the world is www.python.org located? Why is it called Python? Why was Python created in the first place? With the interpreter, documentation is never far from the student as they are programming. Yes, there are many, and more are being published.  See the python.org wiki at https://wiki.python.org/moin/PythonBooks for a list. Yes. You can also access the development version of Python through Git.  See `The Python Developer's Guide <https://devguide.python.org/>`_ for details. You can also search online bookstores for "Python" and filter out the Monty Python references; or perhaps search for "Python" and "language". You can do anything you want with the source, as long as you leave the copyrights in and display those copyrights in any documentation about Python that you produce.  If you honor the copyright rules, it's OK to use Python for commercial use, to sell copies of Python in source or binary form (modified or unmodified), or to sell products that incorporate Python in some form.  We would still like to know about all commercial use of Python, of course. You may also find version numbers with a "+" suffix, e.g. "2.2+".  These are unreleased versions, built directly from the CPython development repository.  In practice, after a final minor release is made, the version is incremented to the next minor version, which becomes the "a0" version, e.g. "2.4a0". Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-23 14:14+0000
PO-Revision-Date: 2021-06-28 00:52+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 *A* æ¯ä¸»çæ¬å· -- å®ä»ä¼éå¯¹æ¬è¨ä¸­éå¸¸éå¤§çæ¹åèéå¢ã *B* æ¯æ¬¡çæ¬å· -- å®ä¼éå¯¹ä¸å¤ªéå¤§çæ¹åèéå¢ã *C* æ¯å¾®çæ¬å· -- å®éå¯¹æ¯æ¬¡é®é¢ä¿®æ­£åå¸èéå¢ã å¯ä»¥ä» https://www.python.org/downloads/ ä¸è½½ alpha å beta åå¸çã ææåå¸çé½ä¼å¨ comp.lang.python å comp.lang.python.announce æ°é»ç»ä»¥å Python ä¸»é¡µ https://www.python.org/ ä¸è¿è¡å¬åï¼å¹¶ä¼æ¨éå° RSS æ°é»æºã Alpha, beta ååéåå¸çå¸¦æé¢å¤çåç¼: æå³æ°è½¯ä»¶åå¸åæ´»å¨çå¬åå¯ä»¥å¨ comp.lang.python.announce ä¸­æ¾å°ï¼è¿æ¯ä¸ªä¸¥æ ¼ç®¡ççä½æµéåè¡¨ï¼æ¯å¤©åå¸äºä¸ªå·¦å³ã å¯å¨ `python-announce é®ä»¶åè¡¨ <https://mail.python.org/mailman3/lists/python-announce-list.python.org/>`_ è®¢éã æ¯å¦æä»»ä½ Python ç¸å³çä¹¦ç±ï¼ æ¯å¦æä»»ä½å¬å¼åè¡¨ç Python ç¸å³æç« å¯ä»¥ä¾æåèå¼ç¨ï¼ ä½¿ç¨ Python æ¯å¦å­å¨çæéå¶ï¼ è¯·åé `æ°ææå <https://wiki.python.org/moin/BeginnersGuide>`_ ä»¥è·åéå¯¹ Python ç¼ç¨åå­¦èçä¿¡æ¯ï¼åæ¬æç¨çæ¸åã è¯·åé `Python å¼åèæåçåæ­¥ä¸æé¨å <https://devguide.python.org/setup/>`__ äºè§£æå³è·åæºä»£ç å¹¶è¿è¡ç¼è¯çæ´å¤ä¿¡æ¯ã ç®å½ æå¿é¡»åæ¬¢ "Monty Python çé£è¡é©¬æå¢" åï¼ å PSF æä¾æå©å¨ç¾å½æ¯åç¨çã å¦æä½ å¨ä½¿ç¨ Python å¹¶ä¸æè§å®å¯¹ä½ å¾æå¸®å©ï¼å¯ä»¥éè¿ `PSF æå©é¡µ <https://www.python.org/psf/donations/>`_ è¿è¡æå©ã å¨ 1989 å¹´çå£è¯åæä¸­ï¼ææå¤´çæ¶é´éå¸¸åè£ï¼å æ­¤æå³å®å¼å§å°è¯ä¸ä¸ã å¨æ¥ä¸æ¥çä¸å¹´éï¼è½ç¶æä»ç¶ä¸»è¦ç¨æçä¸ä½æ¶é´æ¥åè¿ä»¶äºï¼ä½ Python å¨ Amoeba é¡¹ç®ä¸­çä½¿ç¨è·å¾äºå¾å¤§çæåï¼æ¥èªåäºçåé¦è®©æå¾ä»¥å¢å äºè®¸å¤æ©æçæ¹è¿ã å¯¹äºä¹åä»æªæ¥è§¦è¿ç¼ç¨çå­¦çæ¥è¯´ï¼ä½¿ç¨éæç±»åè¯­è¨ä¼æè§ä¸å¤èªç¶ã è¿ä¼ç»å­¦çå¸¦æ¥å¿é¡»ææ¡çé¢å¤å¤ææ§ï¼å¹¶åæ¢æå­¦çè¿åº¦ã å­¦çéè¦å°è¯åè®¡ç®æºä¸æ ·æèï¼åè§£é®é¢ï¼è®¾è®¡ä¸è´çæ¥å£å¹¶å°è£æ°æ®ã è½ç¶ä»é¿è¿æ¥çï¼å­¦ä¹ åä½¿ç¨ä¸ç§éæç±»åè¯­è¨æ¯å¾éè¦çï¼ä½è¿å¹¶ä¸æ¯æéå®å¨å­¦ççç¬¬ä¸æ¬¡ç¼ç¨è¯¾ä¸å°±è¿è¡æ¢è®¨çä¸»é¢ã æå³ Python å¼åæµç¨çæ´å¤ä¿¡æ¯ï¼è¯·åé `Python å¼åèæå <https://devguide.python.org/>`_ã ä¸è¬ä¿¡æ¯ Pythonå¸¸è§é®é¢ Guido van Rossum ä¸ Jelke de Boer, "ä½¿ç¨ Python ç¼ç¨è¯­è¨äº¤äºå¼å°æµè¯è¿ç¨æå¡å¨", CWI å­£å, ç¬¬ 4 å·, ç¬¬ 4 æ (1991 å¹´ 12 æ), é¿å§æ¯ç¹ä¸¹, ç¬¬ 283--303 é¡µã æåªäºéè¦çé¡¹ç®æ¯ç¨ Python å¼åçï¼ ä»¥ä¸æ¯æå³æåç¼èµ·çä¸ä»½ *éå¸¸* ç®ç­çæè¦ï¼ç± Guido van Rossum æ¬äººæ°å: é«æ°´åç Python é¡¹ç®åæ¬ `Mailman é®ä»¶åè¡¨ç®¡çå¨ <https://www.list.org>`_ å `Zope åºç¨æå¡å¨ <https://www.zope.dev>`_ã å¤ä¸ª Linux åè¡çï¼å¶ä¸­æèåçæ¯ `Red Hat <https://www.redhat.com>`_ï¼é½ä½¿ç¨ Python æ¥ç¼åå¶é¨åæå¨é¨çå®è£å¨åç³»ç»ç®¡çè½¯ä»¶ã å¨åé¨ä½¿ç¨ Python çå¬å¸åæ¬äº Google, Yahoo, and Lucasfilm ç­ç­ã æåºå¦ä½è·å Python çå¬å¼æµè¯çæ¬ï¼ æåºå¦ä½è·å Python çææ¡£ï¼ æåºå¦ä½è·åä¸ä»½ Python æºä»£ç çå¯æ¬ï¼ æåºå¦ä½ä¸º Python æäº¤éè¯¯æ¥ååè¡¥ä¸ï¼ Python çæ¬çç¼å·å½¢å¼æ¯ææ ·çï¼ æå¤å°äººå¨ä½¿ç¨ Pythonï¼ Python æå¤ç¨³å®ï¼ æå¯¹ ABC è¯­è¨æè¿è®¸å¤æ±æ¨ï¼ä½åæ¶ä¹å¾åæ¬¢å®çè®¸å¤ç¹æ§ã æ²¡æå¯è½éè¿æ©å± ABC è¯­è¨ï¼æå®çå®ç°ï¼æ¥å¼¥è¡¥æçä¸æ»¡ ââ å®éä¸ç¼ºä¹å¯æ©å±æ§å°±æ¯å®æå¤§çé®é¢ä¹ä¸ã æä¹æä¸äºä½¿ç¨ Modula-2+ çç»éªï¼å¹¶æ¾ä¸ Modula-3 çè®¾è®¡èè¿è¡äº¤æµï¼è¿éè¯»äº Modula-3 çæ¥åã Modula-3 æ¯ Python ä¸­å¼å¸¸æºå¶æç¨è¯­æ³åè¯­ä¹ï¼ä»¥åå¶ä»ä¸äºè¯­è¨ç¹æ§çæåæ¥æºã æå¨ CWI ç ABC é¨é¨æ¶å¨å®ç°è§£éåè¯­è¨æ¹é¢ç§¯ç´¯äºä¸°å¯ç»éªï¼éè¿ä¸è¿ä¸ªé¨é¨æåçååå·¥ä½ï¼æå­¦å°äºå¤§éæå³è¯­è¨è®¾è®¡çç¥è¯ã è¿æ¯è®¸å¤ Python ç¹æ§çæåæ¥æºï¼åæ¬ä½¿ç¨ç¼©è¿æ¥ç»ç»è¯­å¥ä»¥ååå«éå¸¸é«å±çº§çæ°æ®ç»æï¼è½ç¶å¨ Python ä¸­å·ä½çå®ç°ç»èå®å¨ä¸åï¼ã æè¿æ¾å¨ CWI ç Amoeba åå¸å¼æä½ç³»ç»é¨é¨å·¥ä½ã å½æ¶æä»¬éè¦æä¸ç§æ¯ç¼å C ç¨åºæ Bash èæ¬æ´å¥½çæ¹å¼æ¥è¿è¡ç³»ç»ç®¡çï¼å ä¸º Amoeba æå®èªå·±çç³»ç»è°ç¨æ¥å£ï¼å¹¶ä¸æ æ³æ¹ä¾¿å°éè¿ Bash æ¥è®¿é®ã æå¨ Amoeba ä¸­å¤çéè¯¯çç»éªä»¤ææ·±å»å°æè¯å°å¼å¸¸å¤çå¨ç¼ç¨è¯­è¨ç¹æ§å½ä¸­çéè¦å°ä½ã æä¹åä»æªæ¥è§¦è¿ç¼ç¨ã åªéæ Python çæç¨ï¼ å¦æä½ æ³è¦è®¨è®º Python å¨æè²ä¸­çä½¿ç¨ï¼ä½ å¯è½ä¼æå´è¶£å å¥ `edu-sig é®ä»¶åè¡¨ <https://www.python.org/community/sigs/current/edu-sig>`_ã å° 1991 å¹´ 2 æï¼ç»è¿ä¸å¹´å¤çå¼åï¼æå³å®å°å¶åå¸å° USENETã ä¹åçäºæå°±é½å¯ä»¥å¨ ``Misc/HISTORY`` æä»¶éé¢çäºã éå¸¸æ¥è¯´æ¯ä¸åççã ä¸çä¸å·²å­å¨ç Python ä»£ç æ°ä»¥äº¿è®¡ï¼å æ­¤ï¼ä»»ä½å¯¹è¯¥è¯­è¨çæ´æ¹å³ä¾¿ä»ä¼ä½¿å¾ç°æç¨åºä¸­æå°çä¸é¨åå¤±æä¹æ¯é¾ä»¥ä»¤äººæ¥åçã å°±ç®ä½ å¯ä»¥æä¾ä¸ä¸ªè½¬æ¢ç¨åºï¼ä¹ä»ç¶å­å¨éè¦æ´æ°å¨é¨ææ¡£çé®é¢ï¼å¦å¤è¿æå¤§éå·²åºçç Python ä¹¦ç±ï¼æä»¬ä¸å¸æè®©å®ä»¬å¨ä¸ç¬é´å¨é¨åæåºçº¸ã æ¢å¥è¯è¯´ï¼æææ è®°ä¸º *2.0aN* ççæ¬é½æ©äºæ è®°ä¸º *2.0bN* ççæ¬ï¼åèåé½æ©äºæ è®°ä¸º *2.0rcN* ççæ¬ï¼è *åè* åé½æ©äºæ è®°ä¸º 2.0 ççæ¬ã Python æ¯ä¸ç§å¯¹ç¼ç¨åå­¦èåå¥½çè¯­è¨åï¼ æè®®å¯¹ Python å å¥ä¸å¼å®¹çæ´æ¹æ¯å¦åçï¼ æ¯å¦æä¸é¨éå¯¹ Python çæ°é»ç»æé®ä»¶åè¡¨ï¼ ä»è¿ç¨å¼ãéæç±»åçç¼ç¨è¯­è¨ä¾å¦ Pascal, C æè C++ ä»¥å Java çæä¸å­éå¼å§å¼å¯¼å­¦çå¥é¨ä»ç¶æ¯å¸¸è§çåæ³ã ä½ä»¥  Python ä½ä¸ºç¬¬ä¸ç§ç¼ç¨è¯­è¨è¿è¡å­¦ä¹ å¯¹å­¦çå¯è½æ´æå©ãPython å·æéå¸¸ç®ååä¸è´çè¯­æ³ååºå¤§çæ ååºï¼èä¸æéè¦çæ¯ï¼å¨ç¼ç¨å¥é¨æå­¦ä¸­ä½¿ç¨ Python å¯ä»¥è®©å­¦çä¸æ³¨äºæ´éè¦çç¼ç¨æè½ï¼ä¾å¦é®é¢åè§£ä¸æ°æ®ç±»åè®¾è®¡ã ä½¿ç¨ Pythonï¼å¯ä»¥å¿«éåå­¦çä»ç»åºæ¬æ¦å¿µä¾å¦å¾ªç¯ä¸è¿ç¨ç­ã ä»ä»¬çè³æå¯è½å¨ç¬¬ä¸æ¬¡è¯¾éå°±å¼å§æ¥è§¦ç¨æ·èªå®ä¹å¯¹è±¡ã æåç°ï¼æç§å·æ ABC å¼çè¯­æ³èåè½è®¿é® Amoeba ç³»ç»è°ç¨çèæ¬è¯­è¨å°å¯æ»¡è¶³éæ±ã ææè¯å°ç¼åä¸ç§ Amoeba ä¸å±çè¯­è¨æ¯æè ¢çï¼æä»¥æå³å®ç¼åä¸ç§å·æå¨é¢å¯æ©å±æ§çè¯­è¨ã å¯è½ä½ä¸ºåèæç®çæå¥½æ¹å¼è¿æ¯å¼ç¨ä½ åæ¬¢ç Python ç¸å³ä¹¦ç±ã è¿æè®¸å¤å¶ä»æ¹é¢çç¹ç¹ä½¿å¾ Python æä¸ºå¾å¥½çå¥é¨è¯­è¨ã å Java ä¸æ ·ï¼Python æ¥æä¸ä¸ªåºå¤§çæ ååºï¼å æ­¤å¯ä»¥å¨è¯¾ç¨éå¸¸æ©æçé¶æ®µå°±ç»å­¦çå¸ç½®ä¸äº *å®ç¨* çç¼ç¨é¡¹ç®ã ç¼ç¨ä½ä¸ä¸å¿ä»éäºæ åååè¿ç®åè´¦ç®æ£æ¥ç¨åºã éè¿ä½¿ç¨æ ååºï¼å­¦çå¯ä»¥å¨å­¦ä¹ ç¼ç¨åºç¡ç¥è¯çåæ¶å¼åçæ­£çåºç¨ï¼ä»èè·å¾æ´å¤§çæ»¡è¶³æã ä½¿ç¨æ ååºè¿è½ä½¿å­¦çäºè§£ä»£ç éç¨çæ¦å¿µã èå PyGame è¿æ ·çç¬¬ä¸æ¹æ¨¡ååæ ·æå©äºæ©å¤§å­¦ççæ¥è§¦é¢åã æå³å¶ä»é®ä»¶åè¡¨åæ°é»ç»çæ´å¤ä¿¡æ¯å¯ä»¥å¨ https://www.python.org/community/lists/ æ¾å°ã æ°çæ¬çå¼åä¼å¨ `python-dev é®ä»¶åè¡¨ <https://mail.python.org/mailman3/lists/python-dev.python.org/>`_ ä¸­è¿è¡è®¨è®ºã ä¸å¿ï¼ä½è¿å¯¹å­¦ä¹ ä¼æå¸®å©ã :) å¹¶éææåå¸çæ¬é½æ¯é®é¢ä¿®æ­£çæ¬ã å¨æ°ç¹å¾åå¸çæ¬çå¼åè¿ç¨ä¸­ï¼ä¼å¶ä½ä¸ç³»åçå¼åçæ¬ï¼å®ä»¬ä»¥ alpha, beta æ release candidate æ¥æ ç¤ºã å¶ä¸­ alpha çæ¬æ¯æ©æåå¸çï¼å®çæ¥å£å°æªæç»ç¡®å®ï¼å¨ä¸¤ä¸ª alpha åå¸çæ¬é´åºç°æ¥å£çæ¹åå¹¶ä¸æå¤ã è beta çæ¬æ´ä¸ºç¨³å®ï¼å®ä¼ä¿çç°æçæ¥å£ï¼ä½ä¹å¯è½å¢å æ°çæ¨¡åï¼è release candidate çåä¼ä¿æå»ç»ç¶æï¼ä¸åä»»ä½æ¹åï¼é¤éæéè¦ä¿®å¤çä¸¥éé®é¢ã å¦æå¿é¡»æ´æ¹æä¸ªç¹æ§ï¼ååºè¯¥æä¾æ¸è¿å¼çåçº§è·¯å¾ã :pep:`5` æè¿°äºå¼å¥ååä¸å¼å®¹çæ´æ¹æééµå¾ªçæµç¨ï¼ä»¥å°½å¯è½åå°å¯¹ç¨æ·çå¹²æ°ã ç°å®ä¸çä¸­ç Python Python æ¯ä¸ç§é«å±çº§çå¤ç¨éç¼ç¨è¯­è¨ï¼å¯ç¨äºè§£å³è®¸å¤ä¸åé¨ç±»çé®é¢ã Python æ¯ä¸ç§è§£éåãäº¤äºå¼ãé¢åå¯¹è±¡çç¼ç¨è¯­è¨ã å®åå«äºæ¨¡åãå¼å¸¸ãå¨æç±»åãé«å±çº§å¨ææ°æ®ç±»åä»¥åç±»ç­ç¹æ§ã å¨é¢åå¯¹è±¡ç¼ç¨ä»¥å¤å®è¿æ¯æå¤ç§ç¼ç¨èå¼ï¼ä¾å¦è¿ç¨å¼åå½æ°å¼ç¼ç¨ç­ã Python ç»åäºè¶å¼ºçåè½åææ¸æ°çè¯­æ³ã å®å¸¦æè®¸å¤ç³»ç»è°ç¨ååºä»¥åå¤ç§çªå£ç³»ç»çæ¥å£ï¼å¹¶ä¸è½ç¨ C æ C++ æ¥è¿è¡æ©å±ã å®è¿å¯ç¨ä½éè¦å¯ç¼ç¨æ¥å£çåºç¨ç¨åºçæ©å±è¯­è¨ã æåï¼Python éå¸¸æäºç§»æ¤ï¼å®å¯ä»¥å¨åæ¬ Linux å macOS å¨åçè®¸å¤ Unix åç§ä»¥å Windows ä¸è¿è¡ã Python å¯ä»¥åè´¹ä¸è½½ï¼å æ­¤å¹¶ä¸å­å¨ééæ°æ®ï¼æ­¤å¤å®ä¹å¯ä»¥ä»è®¸å¤ä¸åç½ç«è·åï¼å¹¶ä¸åå«äºè®¸å¤ Linux åè¡çä¹ä¸­ï¼å æ­¤ä¸è½½éç»è®¡åæ ·æ æ³å®å¨è¯´æé®é¢ã Python çæ¬çç¼å·å½¢å¼ä¸º "A.B.C" æ "A.B": Python çè§£éå¨ä½¿å­¦çè½å¤å¨ç¼ç¨æ¶æµè¯è¯­è¨ç¹æ§ã ä»ä»¬å¯ä»¥å¨ä¸ä¸ªçªå£ä¸­è¾å¥ç¨åºæºä»£ç çåæ¶å¼å¯ä¸ä¸ªè§£éå¨è¿è¡çªå£ã å¦æä»ä»¬ä¸è®°å¾åè¡¨æåªäºæ¹æ³ï¼ä»ä»¬è¿ä»¥è¿æ ·å:: è¯·åé :pep:`6` äºè§£æå³é®é¢ä¿®æ­£åå¸çæ´å¤ä¿¡æ¯ã è¯·åé `è®¸å¯é¡µ <https://docs.python.org/3/license.html>`_ ä»¥æ¥çè¿ä¸æ­¥çè¯´æä»¥å PSF è®¸å¯çå®æ´ææ¬ã å¦è¯·åé :data:`sys.version`, :data:`sys.hexversion` ä»¥å :data:`sys.version_info` çææ¡£ã è¯·è®¿é® https://peps.python.org/ æ¥ç Python å¢å¼ºæè®®ï¼PEPï¼ã PEP æ¯ä¸º Python å å¥æç§æ°ç¹æ§çæè®®è¿è¡æè¿°çè®¾è®¡ææ¡£ï¼å¶ä¸­ä¼æä¾ç®æçææ¯è§æ ¼è¯´æä¸åºæ¬åçã å¯æ¥æ¾æ é¢ä¸º "Python X.Y Release Schedule" ç PEPï¼å¶ä¸­ X.Y æ¯æä¸ªå°æªå¬å¼åå¸ççæ¬ã è¯·è®¿é® https://www.python.org/about/success æ¥çä½¿ç¨äº Python çé¡¹ç®åè¡¨ã éè§ `åæ¬¡ Python ä¼è®® <https://www.python.org/community/workshops/>`_ çæ¥ç¨çºªè¦å¯ä»¥çå°è®¸å¤ä¸åå¬å¸åç»ç»æåçè´¡ç®ã Python è½¯ä»¶åºéä¼ï¼Python Software Foundationï¼ç®ç§° PSFï¼æ¯ä¸ä¸ªç¬ç«çéçå©ç»ç»ï¼å®æ¥æ Python 2.1 åä»¥ä¸åçæ¬ççæã PSF çä½¿å½æ¯æ¨è¿ä¸ Python ç¼ç¨è¯­è¨ç¸å³çå¼æºææ¯ï¼å¹¶æ¨å¹¿ Python çä½¿ç¨ã PSF çä¸»é¡µæ¯ https://www.python.org/psf/ã Python çå¾½æ æ¯æ³¨ååæ ï¼å¨æäºæåµä¸éè¦è·å¾åè®¸æ¹å¯ä½¿ç¨ã è¯·åé `åæ ä½¿ç¨æ¿ç­ <https://www.python.org/psf/trademarks/>`__ äºè§£è¯¦æã Python é¡¹ç®çåºç¡è®¾æ½åå¸äºä¸çåå°å¹¶ç± Python åºç¡è®¾æ½å¢éè´è´£ç®¡çã ç¸å³ç»èè¯·è®¿é® `è¿é <https://infra.psf.io>`__ã æå³ Python ç `ææ©çæç«  <https://ir.cwi.nl/pub/18204>`_ æ°åäº 1991 å¹´å èç°å¨å·²ç¸å½è¿æ¶ã comp.lang.python æ°é»ç»éå¸¸æ´»è·ï¼ä½ä¸æ¯ææ Python ç¨æ·é½ä¼å¨æ°é»ç»åå¸ï¼è®¸å¤äººçè³ä¸ä¼éè¯»æ°é»ç»ã å¼åèä¹ä¼æ¨åºè¾æ§çæ¬çé®é¢ä¿®æ­£åå¸çï¼å æ­¤ç°æåå¸ççç¨³å®æ§è¿ä¼éæ­¥æåã é®é¢ä¿®æ­£åå¸çä¼ä»¥çæ¬å·ç¬¬ä¸é¨åçæ°å­æ¥æ ç¤ºï¼ä¾å¦ 3.5.3, 3.6.2ï¼ï¼ç¨äºç¨³å®æ§ç®¡çï¼åªæå¯¹å·²ç¥é®é¢çä¿®æ­£ä¼åå«å¨é®é¢ä¿®æ­£åå¸çä¸­ï¼èåä¸ç³»åçé®é¢ä¿®æ­£åå¸çä¸­çæ¥å£å°ä¼å§ç»ä¿æä¸è´ã ææ¡£ä»¥ reStructuredText æ ¼å¼æ°åå¹¶ä½¿ç¨ `Sphinx ææ¡£å·¥å· <https://www.sphinx-doc.org/>`__ çæã ææ¡£ç reStructuredText æºæä»¶æ¯ Python æºä»£ç åå¸ççä¸é¨åã æ¬è¯­è¨èªå¸¦ä¸ä¸ªåºå¤§æ ååºï¼ææ¶µççç¼ç¨é¢ååæ¬å­ç¬¦ä¸²å¤çï¼æ­£åè¡¨è¾¾å¼ãUnicodeãæä»¶é´çå·®å¼æ¯è¾ç­ï¼ï¼äºèç½åè®®ï¼HTTP, FTP, SMTP, XML-RPC, POP, IMAPï¼ï¼è½¯ä»¶å·¥ç¨ï¼ååæµè¯ãæ¥å¿è®°å½ãæ§è½åæãPython ä»£ç è§£æï¼ï¼ä»¥åæä½ç³»ç»æ¥å£ï¼ç³»ç»è°ç¨ãæä»¶ç³»ç»ãTCP/IP å¥æ¥å­ï¼ã è¯·æ¥ç :ref:`library-index` ç®å½é¡µä»¥è·åææå¯ç¨åå®¹çæ¦è§ã æ­¤å¤è¿æå¤§éç¬¬ä¸æ¹æ©å±åå¯ä¾ä½¿ç¨ã è¯·è®¿é® `Python è½¯ä»¶åç´¢å¼ <https://pypi.org>`_ æ¥æ¥æ¾ä½ æå´è¶£çè½¯ä»¶åã ææ°ç Python åå¸çæºä»£ç æ»è½ä» python.org è·åï¼ä¸è½½é¡µé¾æ¥ä¸º https://www.python.org/downloads/ã ææ°çå¼åçæºä»£ç å¯ä»¥å¨ https://github.com/python/cpython/ è·åã ææ°çç¨³å®çæ¬æ»æ¯å¯ä»¥å¨ `Python ä¸è½½é¡µ <https://www.python.org/downloads/>`_ ä¸­æ¾å°ã æä¸¤ä¸ªéç¨äºçäº§ç¯å¢ççæ¬: 2.x å 3.xã æ¨èççæ¬æ¯ 3.xï¼å®è¢«å¤§å¤æ°å¹¿æ³ä½¿ç¨çåºææ¯æã è½ç¶ 2.x ä¹ä»è¢«å¹¿æ³ä½¿ç¨ï¼ä½æ¯ `å®å·²ç»ä¸åç»´æ¤ <https://peps.python.org/pep-0373/>`_ã åå¸çæºä»£ç æ¯ä¸ä¸ªä»¥ gzip åç¼©ç tar æä»¶ï¼å¶ä¸­åå«å®æ´ç C æºä»£ç ãSphinx æ ¼å¼çææ¡£ãPython åºæ¨¡åãç¤ºä¾ç¨åºä»¥åä¸äºæç¨çèªç±ååè½¯ä»¶ã è¯¥æºä»£ç å°å¯å¨å¤§å¤æ° UNIX ç±»å¹³å°ä¸ç´æ¥ç¼è¯å¹¶è¿è¡ã å½åç Python ç¨³å®çæ¬çæ åææ¡£å¯å¨ https://docs.python.org/3/ æ¥çã ä¹å¯å¨ https://docs.python.org/3/download.html è·åPDFãçº¯ææ¬ä»¥åå¯ä¸è½½ç HTML çæ¬ã å¸¦ææä¸ªå°æ°å­ *N* ç beta çåç¼æ¯ "bN"ã å¸¦ææä¸ªå°æ°å­ *N* çåéåå¸çåç¼æ¯ "rcN"ã å¸¦ææä¸ªå°æ°å­ *N* ç alpha çåç¼æ¯ "aN"ã Python è¿æ¥æä¸äºå¾å¥½ç IDEã IDLE æ¯ä¸ä¸ªä»¥ Python åºäº Tkinter ç¼åçè·¨å¹³å° Python IDEã Emacs ç¨æ·å°é«å´å°äºè§£å° Emacs å·æéå¸¸å¥½ç Python æ¨¡å¼ã ææè¿äºç¼ç¨ç¯å¢é½æä¾è¯­æ³é«äº®ãèªå¨ç¼©è¿ä»¥åå¨ç¼åä»£ç æ¶ä½¿ç¨äº¤äºå¼è§£éå¨ç­åè½ã è¯·è®¿é® `Python wiki <https://wiki.python.org/moin/PythonEditors>`_ æ¥ç Python ç¼ç¨ç¯å¢çå®æ´åè¡¨ã æè®¸å¤å¯éæ©çæç¨åä¹¦ç±ã æ åææ¡£ä¸­ä¹åå«æ :ref:`tutorial-index`ã ä½¿ç¨èåºè¯¥æ°ä»¥ç¾ä¸è®¡ï¼ä½å¾é¾è·å¾ä¸ä¸ªç²¾ç¡®çæ°å­ã æä¸ä¸ªæ°é»ç» :newsgroup:`comp.lang.python` åä¸ä¸ªé®ä»¶åè¡¨ `python-list <https://mail.python.org/mailman/listinfo/python-list>`_ã æ°é»ç»åé®ä»¶åè¡¨æ¯å½¼æ­¤äºéç ââ å¦æä½ å¯ä»¥éè¯»æ°é»å°±ä¸å¿åè®¢éé®ä»¶åè¡¨ã :newsgroup:`comp.lang.python` çæµéå¾å¤§ï¼æ¯å¤©ä¼æ¶å°æ°ä»¥ç¾è®¡çåå¸ï¼Usenet ä½¿ç¨èéå¸¸æ´æé¿å¤çè¿æ ·å¤§çæµéã è¦äºè§£æ´å¤è¯¦æï¼è¯·åæ¥ç :ref:`tutorial-index`ã `Python æ°ææå <https://wiki.python.org/moin/BeginnersGuide>`_ æä¾äºå­¦ä¹  Python çå¶ä»å¥é¨æç¨åèµæºçé¾æ¥ã è¦æ¥åé®é¢ææäº¤è¡¥ä¸ï¼è¯·ä½¿ç¨ä½äº https://github.com/python/cpython/issues çé®é¢è¿½è¸ªå¨ã éå¸¸ç¨³å®ã èª 1991 å¹´èµ·å¤§çº¦æ¯é 6 è³ 18 ä¸ªæå°±ä¼æ¨åºæ°çç¨³å®åå¸çï¼è¿ç§ç¶æçæ¥è¿ä¼æç»­ä¸å»ã ä» 3.9 çå¼å§ï¼Python å°ä¼æ¯é 12 ä¸ªææ¨åºä¸ä¸ªæ°å¢ç¹å¾çæ¬ (:pep:`602`)ã Python éååä»ä¹ï¼ ä»ä¹æ¯ Pythonï¼ ä»ä¹æ¯ Python è½¯ä»¶åºéä¼ï¼ å¨æªæ¥å¯ä»¥æå¾ Python å°æä»ä¹æ°è¿å±ï¼ å¨çæç¼å Python å®ç°çæ¶åï¼Guido van Rossum åæ¶è¿éè¯»äºååºçç `"Monty Python çé£è¡é©¬æå¢" <https://en.wikipedia.org/wiki/Monty_Python>`__ å§æ¬ï¼è¿æ¯ä¸é¨èª 1970 å¹´ä»£å¼å§æ­åºç BBC ç³»ååå§ã Van Rossum è§å¾ä»éè¦éæ©ä¸ä¸ªç®ç­ãç¬ç¹èåç¥æ¾ç¥ç§çåå­ï¼äºæ¯ä»å³å®å°è¿ä¸ªæ°è¯­è¨å½åä¸º Pythonã www.python.org å·ä½ä½äºä¸çä¸çåªä¸ªå°ç¹ï¼ ä¸ºä½å½åä¸º Pythonï¼ åé  Python çæåçç±æ¯ä»ä¹ï¼ éè¿ä½¿ç¨è§£éå¨ï¼å­¦çç¼åç¨åºæ¶åèææ¡£æ»æ¯è½ä¼´éå¨ä»ä»¬èº«è¾¹ã æ¯çï¼ç¸å³çä¹¦ç±å¾å¤ï¼è¿ææ´å¤å³å°åè¡ã è¯·è®¿é® python.org ç wiki é¡µé¢ https://wiki.python.org/moin/PythonBooks è·åä¸ä»½æ¸åã æ¯çã ä½ è¿å¯ä»¥éè¿ Git è®¿é® Python çå¼åçã è¯·åé `Python å¼åèæå <https://devguide.python.org/>`_ äºè§£è¯¦æã ä½ ä¹å¯ä»¥å°åå¤§å¨çº¿ä¹¦åºæç´¢ "Python" å¹¶è¿æ»¤æå¯¹ Monty Python çå¼ç¨ï¼æèä¹å¯ä»¥æç´¢ "Python" å  "language"ã ä½ å¯ä»¥ä»»æä½¿ç¨æºç ï¼åªè¦ä½ ä¿ççæä¿¡æ¯å¹¶å¨ä½ åºäº Python çäº§åææ¡£ä¸­æ¾ç¤ºè¯¥çæä¿¡æ¯ã å¦æä½ éµå®æ­¤çæè§åï¼å°±å¯ä»¥å° Python ç¨äºåä¸é¢åï¼ä»¥æºç æäºè¿å¶ç çå½¢å¼ï¼ä¸è®ºæ¯å¦ç»è¿ä¿®æ¹ï¼éå® Python çå¯æ¬ï¼ææ¯ä»¥æç§å½¢å¼åå«äº Python çäº§åã å½ç¶ï¼æä»¬ä»ç¶å¸æè·ç¥ææå¯¹ Python çåä¸ä½¿ç¨ã ä½ è¿å¯è½çå°å¸¦æâ+âåç¼ççæ¬å·ï¼ä¾å¦â2.2+âã è¿è¡¨ç¤ºæªåå¸çæ¬ï¼ç´æ¥åºäº CPython å¼åä»£ç ä»åºæå»ºã å¨å®éæä½ä¸­ï¼å½ä¸ä¸ªå°çæ¬æç»åå¸åï¼æªåå¸çæ¬å·ä¼éå¢å°ä¸ä¸ä¸ªå°çæ¬å·ï¼æä¸ºâa0âçæ¬ï¼ä¾å¦â2.4a0âã 