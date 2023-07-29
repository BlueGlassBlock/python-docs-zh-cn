Þ    .                    ü     ý  è     ×   ù  $  Ñ  -   ö  -   $  %   R  %   x  7     7   Ö  '        6  l  N     »    Õ  S   ä
     8  1  Í     ÿ       Q  %  F   w  U   ¾       w  #  ñ    9     v   Ç  ì   >  2  +    ^    ç    ð  Ê   t  *  ?  A  j  é   ¬   2  !  G  É"  ·   %     É%  /   ã%  Q   &  X   e&     ¾&  ¿  Ù&     (  Ê   ¬(  ¾   w)    6*  '   8+  $   `+  &   +  )   ¬+  8   Ö+  9   ,  "   I,     l,  6  ,  #   ¼-  ¬  à-  X   /  z   æ/  õ   a0  ã   W1  ñ   ;2  #  -3  6   Q4  >   4     Ç4  1  Ô4    6  ;   8  M   È8  Ã   9  ï   Ú9  ð  Ê:  â   »<  P  =  ¶   ï>  õ   ¦?  ;  @  À   ØA  ÿ   B    C     E     F  /   2F  ?   bF  L   ¢F     ïF   :ref:`c-api-index` After initializing the interpreter, the script is loaded using :c:func:`PyImport_Import`.  This routine needs a Python string as its argument, which is constructed using the :c:func:`PyUnicode_FromString` data conversion routine. :: Although the program is quite large for its functionality, most of the code is for data conversion between Python and C, and for error reporting.  The interesting part with respect to embedding Python starts with :: As you can see, the data conversion steps are simply swapped to accommodate the different direction of the cross-language transfer. The only difference is the routine that you call between both data conversions. When extending, you call a C routine, when embedding, you call a Python routine. Beyond Very High Level Embedding: An overview Compiling and Linking under Unix-like systems Convert data values from C to Python, Convert data values from Python to C, Convert the data values from the call from C to Python. Convert the data values from the call from Python to C. Embedding Python in Another Application Embedding Python in C++ Embedding Python is similar to extending it, but not quite.  The difference is that when you extend Python, the main program of the application is still the Python interpreter, while if you embed Python, the main program may have nothing to do with Python --- instead, some parts of the application occasionally call the Python interpreter to run some Python code. Extending Embedded Python If this procedure doesn't work for you (it is not guaranteed to work for all Unix-like platforms; however, we welcome :ref:`bug reports <reporting-bugs>`) you will have to read your system's documentation about dynamic linking and/or examine Python's :file:`Makefile` (use :func:`sysconfig.get_makefile_filename` to find its location) and compilation options.  In this case, the :mod:`sysconfig` module is a useful tool to programmatically extract the configuration values that you will want to combine together.  For example: In a real application, the methods will expose an API of the application to Python. Insert the above code just above the :c:func:`main` function. Also, insert the following two statements before the call to :c:func:`Py_Initialize`:: It is also possible to embed Python in a C++ program; precisely how this is done will depend on the details of the C++ system used; in general you will need to write the main program in C++, and use the C++ compiler to compile and link your program.  There is no need to recompile Python itself using C++. It is not necessarily trivial to find the right flags to pass to your compiler (and linker) in order to embed the Python interpreter into your application, particularly because Python needs to load library modules implemented as C dynamic extensions (:file:`.so` files) linked against it. It should be noted that extending Python and embedding Python is quite the same activity, despite the different intent. Most topics discussed in the previous chapters are still valid. To show this, consider what the extension code from Python to C really does: Once the script is loaded, the name we're looking for is retrieved using :c:func:`PyObject_GetAttrString`.  If the name exists, and the object returned is callable, you can safely assume that it is a function.  The program then proceeds by constructing a tuple of arguments as normal.  The call to the Python function is then made with:: Perform a function call to a C routine using the converted values, and Perform a function call to a Python interface routine using the converted values, and Pure Embedding So if you are embedding Python, you are providing your own main program.  One of the things this main program has to do is initialize the Python interpreter.  At the very least, you have to call the function :c:func:`Py_Initialize`.  There are optional calls to pass command line arguments to Python.  Then later you can call the interpreter from any part of the application. The :c:func:`Py_SetProgramName` function should be called before :c:func:`Py_Initialize` to inform the interpreter about paths to Python run-time libraries.  Next, the Python interpreter is initialized with :c:func:`Py_Initialize`, followed by the execution of a hard-coded Python script that prints the date and time.  Afterwards, the :c:func:`Py_FinalizeEx` call shuts the interpreter down, followed by the end of the program.  In a real program, you may want to get the Python script from another source, perhaps a text-editor routine, a file, or a database.  Getting the Python code from a file can better be done by using the :c:func:`PyRun_SimpleFile` function, which saves you the trouble of allocating memory space and loading the file contents. The code to run a function defined in a Python script is: The details of Python's C interface are given in this manual. A great deal of necessary information can be found here. The first program aims to execute a function in a Python script. Like in the section about the very high level interface, the Python interpreter does not directly interact with the application (but that will change in the next section). The high level interface gives you the ability to execute arbitrary pieces of Python code from your application, but exchanging data values is quite cumbersome to say the least. If you want that, you should use lower level calls. At the cost of having to write more C code, you can achieve almost anything. The previous chapters discussed how to extend Python, that is, how to extend the functionality of Python by attaching a library of C functions to it.  It is also possible to do it the other way around: enrich your C/C++ application by embedding Python in it.  Embedding provides your application with the ability to implement some of the functionality of your application in Python rather than C or C++. This can be used for many purposes; one example would be to allow users to tailor the application to their needs by writing some scripts in Python.  You can also use it yourself if some of the functionality can be written in Python more easily. The simplest form of embedding Python is the use of the very high level interface. This interface is intended to execute a Python script without needing to interact with the application directly. This can for example be used to perform some operation on a file. :: There are several different ways to call the interpreter: you can pass a string containing Python statements to :c:func:`PyRun_SimpleString`, or you can pass a stdio file pointer and a file name (for identification in error messages only) to :c:func:`PyRun_SimpleFile`.  You can also call the lower-level operations described in the previous chapters to construct and use Python objects. These two lines initialize the ``numargs`` variable, and make the :func:`!emb.numargs` function accessible to the embedded Python interpreter. With these extensions, the Python script can do things like This chapter will not discuss how to convert data from Python to C and vice versa.  Also, proper use of references and dealing with errors is assumed to be understood.  Since these aspects do not differ from extending the interpreter, you can refer to earlier chapters for the required information. This code loads a Python script using ``argv[1]``, and calls the function named in ``argv[2]``.  Its integer arguments are the other values of the ``argv`` array.  If you :ref:`compile and link <compiling>` this program (let's call the finished executable :program:`call`), and use it to execute a Python script, such as: To avoid confusion between several Python installations (and especially between the system Python and your own compiled Python), it is recommended that you use the absolute path to :file:`python{X.Y}-config`, as in the above example. To find out the required compiler and linker flags, you can execute the :file:`python{X.Y}-config` script which is generated as part of the installation process (a :file:`python3-config` script may also be available).  This script has several options, of which the following will be directly useful to you: Until now, the embedded Python interpreter had no access to functionality from the application itself.  The Python API allows this by extending the embedded interpreter.  That is, the embedded interpreter gets extended with routines provided by the application. While it sounds complex, it is not so bad.  Simply forget for a while that the application starts the Python interpreter.  Instead, consider the application to be a set of subroutines, and write some glue code that gives Python access to those routines, just like you would write a normal Python extension.  For example:: Upon return of the function, ``pValue`` is either ``NULL`` or it contains a reference to the return value of the function.  Be sure to release the reference after examining the value. Very High Level Embedding When embedding Python, the interface code does: ``pythonX.Y-config --cflags`` will give you the recommended flags when compiling: ``pythonX.Y-config --ldflags --embed`` will give you the recommended flags when linking: then the result should be: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-29 02:08+0000
PO-Revision-Date: 2021-06-28 00:51+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :ref:`c-api-index` åå§åè§£éå¨ä¹åï¼åç¨ :c:func:`PyImport_Import` å è½½èæ¬ãæ­¤å½æ°çåæ°éæ¯ä¸ª Python å­ç¬¦ä¸²ï¼ä¸ä¸ªç¨ :c:func:`PyUnicode_FromString` æ°æ®è½¬æ¢å½æ°æå»ºçå­ç¬¦ä¸²ã å°½ç®¡ç¸å¯¹å¶åè½èè¨ï¼è¯¥ç¨åºä½ç§¯ç¸å½åºå¤§ï¼ä½å¤§é¨åä»£ç æ¯ç¨äº Python å C ä¹é´çæ°æ®è½¬æ¢ï¼ä»¥åæ¥åéè¯¯ãåµå¥ Python çæè¶£é¨åä»æ­¤å¼å§ï¼ å¯è§åªæ¯æ°æ®è½¬æ¢çæ­¥éª¤äº¤æ¢äºä¸ä¸é¡ºåºï¼ä»¥é¡ºåºè·¨è¯­è¨çä¼ è¾æ¹åãå¯ä¸çåºå«æ¯å¨ä¸¤æ¬¡æ°æ®è½¬æ¢ä¹é´è°ç¨çå½æ°ä¸åãå¨æ§è¡æ©å±æ¶ï¼è°ç¨ä¸ä¸ª C å½æ°ï¼èæ§è¡åµå¥æ¶è°ç¨çæ¯ä¸ª Python å½æ°ã çªç ´é«å±æ¬¡åµå¥çéå¶ï¼æ¦è¿° å¨ç±» Unix ç³»ç»ä¸­ç¼è¯åé¾æ¥ å° C æ°æ®è½¬æ¢ä¸º Python æ ¼å¼ï¼ å° Python çæ°æ®è½¬æ¢ä¸º C æ ¼å¼ï¼ å°è°ç¨è¿åçæ°æ®ä» C è½¬æ¢ä¸º Python æ ¼å¼ã å°è°ç¨è¿åçæ°æ®ä» Python è½¬æ¢ä¸º C  æ ¼å¼ã å¨å¶å®åºç¨ç¨åºåµå¥ Python å¨ C++ ä¸­åµå¥ Python Python çåµå¥ç±»ä¼¼äºæ©å±ï¼ä½ä¸å®å¨ç¸åãä¸åä¹å¤å¨äºï¼æ©å± Python æ¶åºç¨ç¨åºçä¸»ç¨åºä»ç¶æ¯ Python è§£éå¨ï¼èåµå¥ Python æ¶çä¸»ç¨åºå¯è½ä¸ Python å®å¨æ å³ââèæ¯åºç¨ç¨åºçæäºé¨åå¶å°ä¼è°ç¨ Python è§£éå¨æ¥è¿è¡ä¸äº Python ä»£ç ã å¯¹åµå¥ Python åè½è¿è¡æ©å± å¦æä¸è¿°æ¹æ¡ä¸èµ·ä½ç¨ï¼ä¸è½ä¿è¯å¯¹ææ Unix ç±»å¹³å°é½çæï¼æ¬¢è¿æåº :ref:`bug æ¥å<reporting-bugs>`ï¼ï¼å°±å¾éè¯»ç³»ç»å³äºå¨æé¾æ¥çææ¡£ï¼å¹¶æ£æ¥ Python ç :file:`Makefile` ï¼ç¨ :func:`sysconfig.get_makefile_filename` æ¾å°æå¨ä½ç½®ï¼åç¼è¯åæ°ãè¿æ¶ :mod:`sysconfig` æ¨¡åä¼æ¯ä¸ªæç¨çå·¥å·ï¼å¯ç¨ç¼ç¨æ¹å¼æåéç»åå¨ä¸èµ·çéç½®å¼ãæ¯å¦ï¼ å¨çå®çåºç¨ç¨åºä¸­ï¼è¿ç§æ¹æ³å°æåºç¨ç API æ´é²ç» Python ä½¿ç¨ã å¨ :c:func:`main` å½æ°ä¹åæå¥ä¸è¿°ä»£ç ãå¹¶å¨è°ç¨ :c:func:`Py_Initialize` ä¹åæå¥ä»¥ä¸ä¸¤æ¡è¯­å¥ï¼ è¿å¯ä»¥å° Python åµå¥å° C++ ç¨åºä¸­å»ï¼ç¡®åå°è¯´ï¼å®ç°æ¹å¼å°åå³äº C++ ç³»ç»çå®ç°ç»èï¼ä¸è¬éç¨ C++ ç¼åä¸»ç¨åºï¼å¹¶ç¨ C++ ç¼è¯å¨æ¥ç¼è¯åé¾æ¥ç¨åºãä¸éè¦ç¨ C++ éæ°ç¼è¯ Python æ¬èº«ã ä¸ºäºå° Python è§£éå¨åµå¥åºç¨ç¨åºï¼æ¾å°æ­£ç¡®çç¼è¯åæ°ä¼ ç»ç¼è¯å¨ (åé¾æ¥å¨) å¹¶éæäºï¼ç¹å«æ¯å ä¸º Python å è½½çåºæ¨¡åæ¯ä»¥ C å¨ææ©å±ï¼:file:`.so` æä»¶ï¼çå½¢å¼å®ç°çã åºè¯¥æ³¨æï¼å°½ç®¡æå¾ä¸åï¼ä½æ©å± Python ååµå¥ Python çè¿ç¨ç¸å½ç±»ä¼¼ãåå ç« ä¸­è®¨è®ºçå¤§å¤æ°ä¸»é¢ä¾ç¶ææãä¸ºäºè¯´æè¿ä¸ç¹ï¼ä¸å¦¨æ¥çä¸ä¸ä»  Python å° C çæ©å±ä»£ç å°åºåäºä»ä¹ï¼ èæ¬ä¸æ¦å è½½å®æ¯ï¼å°±ä¼ç¨ :c:func:`PyObject_GetAttrString` æ¥æ¾å±æ§åç§°ãå¦æåç§°å­å¨ï¼å¹¶ä¸è¿åçæ¯å¯è°ç¨å¯¹è±¡ï¼å³å¯å®å¨å°è§å¶ä¸ºå½æ°ãç¶åç¨åºç»§ç»­æ§è¡ï¼ç§å¸¸æå»ºç±åæ°ç»æçåç»ãç¶åç¨ä»¥ä¸æ¹å¼è°ç¨ Python å½æ°ï¼ ç¨è½¬æ¢åçæ°æ®æ§è¡ C ç¨åºçå½æ°è°ç¨ï¼ ç¨è½¬æ¢åçæ°æ®æ§è¡å¯¹ Python æ¥å£çå½æ°è°ç¨ï¼ åªååµå¥ å æ­¤ï¼è¥è¦åµå¥ Pythonï¼å°±è¦æä¾èªå·±çä¸»ç¨åºãæ­¤ä¸»ç¨åºè¦åçäºæä¹ä¸å°±æ¯åå§å Python è§£éå¨ãè³å°å¾è°ç¨å½æ° :c:func:`Py_Initialize`ãè¿æäºå¯éçè°ç¨å¯å Python ä¼ éå½ä»¤è¡åæ°ãä¹åå³å¯ä»åºç¨ç¨åºçä»»ä½å°æ¹è°ç¨è§£éå¨äºã å¨ :c:func:`Py_Initialize` ä¹åï¼åºè¯¥åè°ç¨ :c:func:`Py_SetProgramName` å½æ°ï¼ä»¥ä¾¿åè§£éå¨åç¥ Pythonè¿è¡åºçè·¯å¾ãæ¥ä¸æ¥ï¼:c:func:`Py_Initialize`  ä¼åå§å Python è§£éå¨ï¼ç¶åæ§è¡ç¡¬ç¼ç ç Python èæ¬ï¼æå°åºæ¥æåæ¶é´ãä¹åï¼è°ç¨ :c:func:`Py_FinalizeEx` å³é­è§£éå¨ï¼ç¨åºç»æãå¨çå®çç¨åºä¸­ï¼å¯è½éè¦ä»å¶ä»æ¥æºè·å Python èæ¬ï¼æè®¸æ¯ä»ææ¬ç¼è¾å¨ä¾ç¨ãæä»¶ï¼æèæä¸ªæ°æ®åºãå©ç¨ :c:func:`PyRun_SimpleFile` å½æ°å¯ä»¥æ´å¥½å°ä»æä»¶ä¸­è·å Python ä»£ç ï¼å¯çå»åéåå­ç©ºé´åå è½½æä»¶åå®¹çéº»ç¦ã è¦è¿è¡ Python èæ¬ä¸­å®ä¹çå½æ°ï¼ä»£ç å¦ä¸ï¼ æ¬æè¯¦ç»ä»ç»äº Python ç C æ¥å£ãè¿éæå¤§éå¿è¦çä¿¡æ¯ã ç¬¬ä¸ä¸ªç¨åºçç®æ æ¯æ§è¡ Python èæ¬ä¸­çæä¸ªå½æ°ãå°±åé«å±æ¬¡æ¥å£é£æ ·ï¼Python è§£éå¨å¹¶ä¸ä¼ç´æ¥ä¸åºç¨ç¨åºè¿è¡äº¤äºï¼ä½ä¸ä¸èå°æ¹åè¿ä¸ç¹ï¼ã é«çº§æ¥å£è½ä»åºç¨ç¨åºä¸­æ§è¡ä»»ä½ Python ä»£ç ï¼ä½è³å°äº¤æ¢æ°æ®å¯è¯´æ¯ç¸å½éº»ç¦çãå¦è¥éè¦äº¤æ¢æ°æ®ï¼åºä½¿ç¨è¾ä½çº§å«çè°ç¨ãå ä¹å¯ä»¥å®ç°ä»»ä½åè½ï¼ä»£ä»·æ¯å¾åæ´å¤ç C ä»£ç ã åå ç« è®¨è®ºäºå¦ä½å¯¹ Python è¿è¡æ©å±ï¼ä¹å°±æ¯å¦ä½ç¨ C å½æ°åº æ©å± Python çåè½ãåè¿æ¥ä¹æ¯å¯ä»¥çï¼å° Python åµå¥å° C/C++ åºç¨ç¨åºä¸­ä¸°å¯å¶åè½ãè¿ç§åµå¥å¯ä»¥è®©åºç¨ç¨åºç¨ Python æ¥å®ç°æäºåè½ï¼èä¸æ¯ç¨ C æ C++ ãç¨éä¼æå¾å¤ï¼æ¯å¦åè®¸ç¨æ·ç¨ Python ç¼åä¸äºèæ¬ï¼ä»¥ä¾¿å®å¶åºç¨ç¨åºæ»¡è¶³éæ±ãå¦ææäºåè½ç¨ Python ç¼åèµ·æ¥æ´ä¸ºå®¹æï¼é£ä¹å¼åäººåèªå·±ä¹è½è¿ä¹å¹²ã æç®åç Python åµå¥å½¢å¼å°±æ¯éç¨éå¸¸é«å±çæ¥å£ãè¯¥æ¥å£çç®æ æ¯åªæ§è¡ä¸æ®µ Python èæ¬ï¼èæ éä¸åºç¨ç¨åºç´æ¥äº¤äºãæ¯å¦ä»¥ä¸ä»£ç å¯ä»¥ç¨æ¥å¯¹æä¸ªæä»¶è¿è¡ä¸äºæä½ã è°ç¨è§£éå¨çæ¹å¼æå¥½å ç§ï¼å¯å :c:func:`PyRun_SimpleString` ä¼ å¥ä¸ä¸ªåå« Python è¯­å¥çå­ç¬¦ä¸²ï¼ä¹å¯å :c:func:`PyRun_SimpleFile` ä¼ å¥ä¸ä¸ª stdio æä»¶æéåä¸ä¸ªæä»¶åï¼ä»å¨éè¯¯ä¿¡æ¯ä¸­èµ·å°è¯å«ä½ç¨ï¼ãè¿å¯ä»¥è°ç¨åé¢ä»ç»è¿çåºå±æä½æ¥æé å¹¶ä½¿ç¨ Python å¯¹è±¡ã è¿ä¸¤è¡ä»£ç åå§åäº ``numargs`` åéï¼å¹¶ä½¿åµå¥å¼ Python è§£éå¨å¯ä»¥è®¿é® :func:`!emb.numargs` å½æ°ãéè¿è¿äºæ©å±ï¼Python èæ¬å¯ä»¥æ§è¡ä»¥ä¸æä½ æ¬æä¸ä¼è®¨è®ºå¦ä½å°æ°æ®ä» Python è½¬æ¢å° C å»ï¼åä¹äº¦ç¶ãå¦å¤è¿åå®è¯»èè½å¤æ­£ç¡®ä½¿ç¨å¼ç¨å¹¶å¤çéè¯¯ãç±äºè¿äºå°æ¹ä¸è§£éå¨çæ©å±æ²¡æåºå«ï¼è¯·åèåé¢çç« èä»¥è·å¾æéçä¿¡æ¯ã ä¸è¿°ä»£ç åå©ç¨ ``argv[1]`` å è½½ Python èæ¬ï¼åè°ç¨ ``argv[2]`` æå®çå½æ°ãå½æ°çæ´æ°åæ°æ¯ ``argv`` æ°ç»ä¸­çå¶ä½å¼ãå¦æ :ref:`ç¼è¯å¹¶é¾æ¥<compiling>` è¯¥ç¨åºï¼æ­¤å¤å°æç»çå¯æ§è¡ç¨åºç§°ä½ :program:`call`ï¼, å¹¶ç¨å®æ§è¡ä¸ä¸ª Python èæ¬ï¼ä¾å¦ï¼ ä¸ºäºé¿åå¤ä¸ª Python å®è£çæ¬å¼åæ··ä¹±ï¼ç¹å«æ¯å¨ç³»ç»å®è£çæ¬åèªå·±ç¼è¯çæ¬ä¹é´ï¼ï¼å»ºè®®ç¨ :file:`python{X.Y}-config` æå®ç»å¯¹è·¯å¾ï¼å¦ä¸ä¾æè¿°ã ä¸ºäºå¾å°æéçç¼è¯å¨åé¾æ¥å¨åæ°ï¼å¯æ§è¡ :file:`python{X.Y}-config` èæ¬ï¼å®æ¯å¨å®è£ Python æ¶çæçï¼ä¹å¯è½å­å¨ :file:`python3-config` èæ¬ï¼ãè¯¥èæ¬æå ä¸ªåæ°ï¼å¶ä¸­ä»¥ä¸å ä¸ªåæ°ä¼ç´æ¥æç¨ï¼ å°ç®åä¸ºæ­¢ï¼åµå¥ç Python è§£éå¨è¿ä¸è½è®¿é®åºç¨ç¨åºæ¬èº«çåè½ãPython API éè¿æ©å±åµå¥è§£éå¨å®ç°äºè¿ä¸ç¹ã ä¹å°±æ¯è¯´ï¼ç¨åºç¨ç¨åºæä¾çå½æ°å¯¹åµå¥çè§£éå¨è¿è¡æ©å±ãè½ç¶å¬èµ·æ¥æäºå¤æï¼ä½ä¹æ²¡é£ä¹ç³ç³ãåªè¦ææ¶å¿è®°æ¯åºç¨ç¨åºå¯å¨äº Python è§£éå¨ãèæåºç¨ç¨åºçä½æ¯ä¸å å­ç¨åºï¼ç¶ååä¸äºè¶æ°´ä»£ç è®© Python è®¿é®è¿äºå­ç¨åºï¼å°±åç¼åæ®éç Python æ©å±ç¨åºä¸æ ·ã ä¾å¦ï¼ å½å½æ°è¿åæ¶ï¼``pValue`` è¦ä¹ä¸º ``NULL``ï¼è¦ä¹åå«å¯¹å½æ°è¿åå¼çå¼ç¨ãè¯·ç¡®ä¿ç¨å®åéæ¾è¯¥å¼ç¨ã é«å±æ¬¡çåµå¥ åµå¥ Python æ¶ï¼æ¥å£ä»£ç ä¼è¿æ ·åï¼ ``pythonX.Y-config --cflags`` å°ç»åºå»ºè®®çç¼è¯åæ°ã ``pythonX.Y-config --ldflags --embed`` å°ç»åºå¨é¾æ¥æ¶å»ºè®®çææ : ç¶åç»æåºè¯¥æ¯ï¼ 