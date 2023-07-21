Þ    6      Ì              |  Î  }    L  \   Ù     6     ¾  ³   ^  i   	     |	  Ë   	  ï   Z
     J  S  Ö  3   *  .   ^       ï  #  Ë        ß  Ô   a  Í   6  %    $   *  `   O  8   °  h   é  r   R  {   Å  z   A  ±  ¼  :   n     ©  ô   @     5  %  Â     è  +   o  *    G   Æ  ì        û  P      Û   ê   ó#  8  Þ$  k   &     &     &  
   ¦&     ±&     Ã&     Ë&     Ú&     ò&  ¿  '    Ã(  X  Q*  `   ª+     ,     ,  ¨   4-  e   Ý-     C.  Â   P.  Ü   /     ð/  a  0  $   å1  .   
2  ª   92  	  ä2  £   î4  k   5  »   þ5  Â   º6  #  }7     ¡8  f   ¾8  8   %9  j   ^9  y   É9  {   C:  z   ¿:    :;  1   Ç<     ù<     =  o   >    ÷>     @  *   @    ¿@  K   ÚA  Ð   &B     ÷B  2  zC  á  ­D  ç   G     wH  d   I     ýI     J  
   J     $J     1J     8J     EJ  	   aJ   Add a collection of modules to the table of built-in modules.  The *newtab* array must end with a sentinel entry which contains ``NULL`` for the :attr:`name` field; failure to provide the sentinel value can result in a memory fault. Returns ``0`` on success or ``-1`` if insufficient memory could be allocated to extend the internal table.  In the event of failure, no modules are added to the internal table.  This must be called before :c:func:`Py_Initialize`. Add a single module to the existing table of built-in modules.  This is a convenience wrapper around :c:func:`PyImport_ExtendInittab`, returning ``-1`` if the table could not be extended.  The new module can be imported by the name *name*, and uses the function *initfunc* as the initialization function called on the first attempted import.  This should be called before :c:func:`Py_Initialize`. Failing imports remove incomplete module objects, like with :c:func:`PyImport_ImportModule`. If *name* points to a dotted name of the form ``package.module``, any package structures not already created will still not be created. If Python is initialized multiple times, :c:func:`PyImport_AppendInittab` or :c:func:`PyImport_ExtendInittab` must be called before each Python initialization. Import a module.  This is best described by referring to the built-in Python function :func:`__import__`, as the standard :func:`__import__` function calls this function directly. Import a module.  This is best described by referring to the built-in Python function :func:`__import__`. Importing Modules Like :c:func:`PyImport_ExecCodeModuleEx`, but the :attr:`__cached__` attribute of the module object is set to *cpathname* if it is non-``NULL``.  Of the three functions, this is the preferred one to use. Like :c:func:`PyImport_ExecCodeModuleObject`, but *name*, *pathname* and *cpathname* are UTF-8 encoded strings. Attempts are also made to figure out what the value for *pathname* should be from *cpathname* if the former is set to ``NULL``. Like :c:func:`PyImport_ExecCodeModule`, but the :attr:`__file__` attribute of the module object is set to *pathname* if it is non-``NULL``. Load a frozen module named *name*.  Return ``1`` for success, ``0`` if the module is not found, and ``-1`` with an exception set if the initialization failed.  To access the imported module on a successful load, use :c:func:`PyImport_ImportModule`.  (Note the misnomer --- this function would reload the module if it was already imported.) Negative values for *level* are no longer accepted. No longer uses the removed :mod:`!imp` module. Reload a module.  Return a new reference to the reloaded module, or ``NULL`` with an exception set on failure (the module still exists in this case). Return a finder object for a :data:`sys.path`/:attr:`pkg.__path__` item *path*, possibly by fetching it from the :data:`sys.path_importer_cache` dict.  If it wasn't yet cached, traverse :data:`sys.path_hooks` until a hook is found that can handle the path item.  Return ``None`` if no hook could; this tells our caller that the :term:`path based finder` could not find a finder for this path item. Cache the result in :data:`sys.path_importer_cache`. Return a new reference to the finder object. Return the already imported module with the given name.  If the module has not been imported yet then returns ``NULL`` but does not set an error.  Returns ``NULL`` and sets an error if the lookup failed. Return the dictionary used for the module administration (a.k.a. ``sys.modules``).  Note that this is a per-interpreter variable. Return the magic number for Python bytecode files (a.k.a. :file:`.pyc` file). The magic number should be present in the first four bytes of the bytecode file, in little-endian byte order. Returns ``-1`` on error. Return the magic tag string for :pep:`3147` format Python bytecode file names.  Keep in mind that the value at ``sys.implementation.cache_tag`` is authoritative and should be used instead of this function. Return the module object corresponding to a module name.  The *name* argument may be of the form ``package.module``. First check the modules dictionary if there's one there, and if not, create a new one and insert it in the modules dictionary. Return ``NULL`` with an exception set on failure. Return value of ``-1`` upon failure. See also :c:func:`PyImport_ExecCodeModuleEx` and :c:func:`PyImport_ExecCodeModuleWithPathnames`. See also :c:func:`PyImport_ExecCodeModuleWithPathnames`. Setting :attr:`__cached__` is deprecated. See :class:`~importlib.machinery.ModuleSpec` for alternatives. Similar to :c:func:`PyImport_AddModuleObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Similar to :c:func:`PyImport_ImportFrozenModuleObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Similar to :c:func:`PyImport_ImportModuleLevelObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Structure describing a single entry in the list of built-in modules.  Each of these structures gives the name and initialization function for a module built into the interpreter.  The name is an ASCII encoded string.  Programs which embed Python may use an array of these structures in conjunction with :c:func:`PyImport_ExtendInittab` to provide additional built-in modules. The structure is defined in :file:`Include/import.h` as:: The ``__file__`` attribute is no longer set on the module. The module's :attr:`__file__` attribute will be set to the code object's :c:member:`co_filename`.  If applicable, :attr:`__cached__` will also be set. The module's :attr:`__spec__` and :attr:`__loader__` will be set, if not set already, with the appropriate values.  The spec's loader will be set to the module's ``__loader__`` (if set) and to an instance of :class:`SourceFileLoader` otherwise. The new ``is_package`` field indicates whether the module is a package or not. This replaces setting the ``size`` field to a negative value. The return value is a new reference to the imported module or top-level package, or ``NULL`` with an exception set on failure.  Like for :func:`__import__`, the return value when a submodule of a package was requested is normally the top-level package, unless a non-empty *fromlist* was given. The setting of :attr:`__cached__` and :attr:`__loader__` is deprecated. See :class:`~importlib.machinery.ModuleSpec` for alternatives. This function always uses absolute imports. This function does not load or import the module; if the module wasn't already loaded, you will get an empty module object. Use :c:func:`PyImport_ImportModule` or one of its variants to import a module.  Package structures implied by a dotted name for *name* are not created if not already present. This function is a deprecated alias of :c:func:`PyImport_ImportModule`. This function used to fail immediately when the import lock was held by another thread.  In Python 3.3 though, the locking scheme switched to per-module locks for most purposes, so this function's special behaviour isn't needed anymore. This function will reload the module if it was already imported.  See :c:func:`PyImport_ReloadModule` for the intended way to reload a module. This is a higher-level interface that calls the current "import hook function" (with an explicit *level* of 0, meaning absolute import).  It invokes the :func:`__import__` function from the ``__builtins__`` of the current globals.  This means that the import is done using whatever import hooks are installed in the current environment. This is a simplified interface to :c:func:`PyImport_ImportModuleEx` below, leaving the *globals* and *locals* arguments set to ``NULL`` and *level* set to 0.  When the *name* argument contains a dot (when it specifies a submodule of a package), the *fromlist* argument is set to the list ``['*']`` so that the return value is the named module rather than the top-level package containing it as would otherwise be the case.  (Unfortunately, this has an additional side effect when *name* in fact specifies a subpackage instead of a submodule: the submodules specified in the package's ``__all__`` variable are  loaded.)  Return a new reference to the imported module, or ``NULL`` with an exception set on failure.  A failing import of a module doesn't leave the module in :data:`sys.modules`. This is the structure type definition for frozen module descriptors, as generated by the :program:`freeze` utility (see :file:`Tools/freeze/` in the Python source distribution).  Its definition, found in :file:`Include/import.h`, is:: This pointer is initialized to point to an array of :c:struct:`_frozen` records, terminated by one whose members are all ``NULL`` or zero.  When a frozen module is imported, it is searched in this table.  Third-party code could play tricks with this to provide a dynamically created collection of frozen modules. Uses :func:`!imp.source_from_cache()` in calculating the source path if only the bytecode path is provided. __all__ __all__ (package variable) __import__ built-in function compile freeze utility modules (in module sys) package variable Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 å°åç½®æ¨¡åè¡¨æ·»å ä¸ç»æ¨¡åã *newtab* æ°ç»å¿é¡»ä»¥ä¸ä¸ªåå«ä»¥ ``NULL`` ä½ä¸º :attr:`name` å­æ®µçå²å¨æ¡ç®ç»æï¼æªè½æä¾å²å¨å¼ä¼å¯¼è´åå­éè¯¯ã æåæ¶è¿å ``0`` æèå¦ææ æ³åéè¶³å¤åå­æ¥æ©å±åé¨è¡¨åè¿å ``-1``ã å½åçå¤±è´¥æ¶ï¼å°ä¸ä¼æ·»å æ¨¡åå°åé¨è¡¨ã æ­¤å½æ°å¿é¡»å¨ :c:func:`Py_Initialize` ä¹åè°ç¨ã åç°æçåç½®æ¨¡åè¡¨æ·»å ä¸ä¸ªæ¨¡åã è¿æ¯å¯¹ :c:func:`PyImport_ExtendInittab` çä¾¿æ·åè£ï¼å¦ææ æ³æ©å±è¡¨åè¿å ``-1``ã æ°çæ¨¡åå¯ä½¿ç¨åç§° *name* æ¥å¯¼å¥ï¼å¹¶ä½¿ç¨å½æ° *initfunc* ä½ä¸ºå¨ç¬¬ä¸æ¬¡å°è¯å¯¼å¥æ¶è°ç¨çåå§åå½æ°ã æ­¤å½æ°åºå½å¨ :c:func:`Py_Initialize` ä¹åè°ç¨ã å¯¼å¥å¤±è´¥å°ç§»å¨ä¸å®æ´çæ¨¡åå¯¹è±¡ï¼å°±å :c:func:`PyImport_ImportModule` é£æ ·ã å¦æ *name* æåä¸ä¸ªå½¢å¼ä¸º ``package.module`` çå¸¦ç¹å·çåç§°ï¼åä»»ä½å°æªåå»ºçåç»æä»ç¶ä¸ä¼è¢«åå»ºã å¦æ Python è¦è¢«å¤æ¬¡åå§åï¼å :c:func:`PyImport_AppendInittab` æ :c:func:`PyImport_ExtendInittab` å¿é¡»å¨æ¯æ¬¡ Python åå§åä¹åè°ç¨ã å¯¼å¥ä¸ä¸ªæ¨¡åã å³äºæ­¤å½æ°çæä½³è¯´æè¯·åèåç½® Python å½æ° :func:`__import__`ï¼å ä¸ºæ å :func:`__import__` å½æ°ä¼ç´æ¥è°ç¨æ­¤å½æ°ã å¯¼å¥ä¸ä¸ªæ¨¡åã è¯·åéåç½® Python å½æ° :func:`__import__` è·åå®åçç¸å³æè¿°ã å¯¼å¥æ¨¡å ç±»ä¼¼äº :c:func:`PyImport_ExecCodeModuleEx`ï¼ä½å¦æ *cpathname* ä¸ä¸º ``NULL`` åä¼è¢«è®¾ä¸ºæ¨¡åå¯¹è±¡ç :attr:`__cached__` å¼ã å¨ä¸ä¸ªå½æ°ä¸­ï¼è¿æ¯æ¨èä½¿ç¨çä¸ä¸ªã ç±»ä¼¼äº :c:func:`PyImport_ExecCodeModuleObject`ï¼ä½ *name*, *pathname* å *cpathname* ä¸º UTF-8 ç¼ç çå­ç¬¦ä¸²ãå¦æ *pathname* ä¹è¢«è®¾ä¸º ``NULL`` åè¿ä¼å°è¯æ ¹æ® *cpathname* æ¨æ­åºåèçå¼ã ç±»ä¼¼äº :c:func:`PyImport_ExecCodeModule`ï¼ä½å¦æ *pathname* ä¸ä¸º ``NULL`` åä¼è¢«è®¾ä¸ºæ¨¡åå¯¹è±¡ç :attr:`__file__` å±æ§çå¼ã å è½½åç§°ä¸º *name* çå·²å»ç»æ¨¡åã æåæ¶è¿å ``1``ï¼å¦ææªæ¾å°æ¨¡ååè¿å ``0``ï¼å¦æåå§åå¤±è´¥åè¿å ``-1`` å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ã è¦å¨å è½½æååè®¿é®è¢«å¯¼å¥çæ¨¡åï¼è¯·ä½¿ç¨ :c:func:`PyImport_ImportModule`ã ï¼è¯·æ³¨ææ­¤åç§°æè¯¯å¯¼æ§ --- å¦ææ¨¡åå·²è¢«å¯¼å¥æ­¤å½æ°å°éè½½å®ãï¼ ä¸åæ¥å *level* ä¸ºè´æ°å¼ã ä¸åä½¿ç¨å·²ç§»é¤ç :mod:`!imp` æ¨¡åã éè½½ä¸ä¸ªæ¨¡åã è¿åä¸ä¸ªæåè¢«éè½½æ¨¡åçæ°å¼ç¨ï¼æèå¨å¤±è´¥æ¶è¿å ``NULL`` å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ï¼å¨æ­¤æåµä¸æ¨¡åä»ç¶ä¼å­å¨ï¼ã è¿åéå¯¹ä¸ä¸ª :data:`sys.path`/:attr:`pkg.__path__` ä¸­æ¡ç® *path* çæ¥æ¾å¨å¯¹è±¡ï¼å¯è½ä¼éè¿ :data:`sys.path_importer_cache` å­å¸æ¥è·åã å¦æå®å°æªè¢«ç¼å­ï¼åä¼éå :data:`sys.path_hooks` ç´è³æ¾å°ä¸ä¸ªè½å¤çè¯¥ path æ¡ç®çé©å­ã å¦ææ²¡æå¯ç¨çé©å­åè¿å ``None``ï¼è¿å°åç¥è°ç¨æ¹ :term:`path based finder` æ æ³ä¸ºè¯¥ path æ¡ç®æ¾å°æ¥æ¾å¨ã ç»æå°ç¼å­å° :data:`sys.path_importer_cache`ã è¿åä¸ä¸ªæåæ¥æ¾å¨å¯¹è±¡çæ°å¼ç¨ã è¿åç»å®åç§°çå·²å¯¼å¥æ¨¡åã å¦ææ¨¡åå°æªå¯¼å¥åè¿å ``NULL`` ä½ä¸ä¼è®¾ç½®éè¯¯ã å¦ææ¥æ¾å¤±è´¥åè¿å ``NULL`` å¹¶è®¾ç½®éè¯¯ã è¿åç¨äºæ¨¡åç®¡ççå­å¸ (å³ ``sys.modules``)ã è¯·æ³¨æè¿æ¯éå¯¹æ¯ä¸ªè§£éå¨çåéã è¿å Python å­èç æä»¶ï¼å³ :file:`.pyc` æä»¶ï¼çé­æ°ã æ­¤é­æ°åºå½å­å¨äºå­èç æä»¶çå¼å¤´åä¸ªå­èä¸­ï¼æç§å°ç«¯å­èåºã åºéæ¶è¿å ``-1``ã éå¯¹ :pep:`3147` æ ¼å¼ç Python å­èç æä»¶åè¿åé­æ¯æ ç­¾å­ç¬¦ä¸²ã è¯·è®°ä½å¨ ``sys.implementation.cache_tag`` ä¸çå¼æ¯åºå½è¢«ç¨æ¥ä»£æ¿æ­¤å½æ°çæ´æå¨çå¼ã è¿åå¯¹åºäºæä¸ªæ¨¡ååç§°çæ¨¡åå¯¹è±¡ã *name* åæ°çå½¢å¼å¯ä»¥ä¸º ``package.module``ã å¦æå­å¨ modules å­å¸åé¦åæ£æ¥è¯¥å­å¸ï¼å¦ææ¾ä¸å°ï¼ååå»ºä¸ä¸ªæ°æ¨¡åå¹¶å°å¶æå¥å° modules å­å¸ã å¨å¤±è´¥æ¶è¿å ``NULL`` å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ã å¤±è´¥æ¶è¿åå¼ ``-1``ã å¦è¯·åé :c:func:`PyImport_ExecCodeModuleEx` å :c:func:`PyImport_ExecCodeModuleWithPathnames`ã åè§ :c:func:`PyImport_ExecCodeModuleWithPathnames`ã :attr:`__cached__` çè®¾ç½®å·²è¢«å¼ç¨ã æ¿ä»£è®¾ç½®åè§ :class:`~importlib.machinery.ModuleSpec`ã ç±»ä¼¼äº :c:func:`PyImport_AddModuleObject`ï¼ä½å¶åç§°ä¸º UTF-8 ç¼ç çå­ç¬¦ä¸²èä¸æ¯ Unicode å¯¹è±¡ãobject. ç±»ä¼¼äº :c:func:`PyImport_ImportFrozenModuleObject`ï¼ä½å¶åç§°ä¸º UTF-8 ç¼ç çå­ç¬¦ä¸²èä¸æ¯ Unicode å¯¹è±¡ã ç±»ä¼¼äº :c:func:`PyImport_ImportModuleLevelObject`ï¼ä½å¶åç§°ä¸º UTF-8 ç¼ç çå­ç¬¦ä¸²èä¸æ¯ Unicode å¯¹è±¡ã æè¿°åç½®æ¨¡ååè¡¨ä¸­çä¸ä¸ªæ¡ç®çç»æä½ã æ¯ä¸ªç»æä½é½ç»åºäºåç½®å¨è§£éå¨ä¸­çæä¸ªæ¨¡åçåç§°ååå§åå½æ°ã åç§°æ¯ä¸ä¸ª ASCII ç¼ç çå­ç¬¦ä¸²ã åµå¥äº Python çç¨åºå¯ä»¥ä½¿ç¨è¯¥ç»æä½çæ°ç»æ¥ä¸ :c:func:`PyImport_ExtendInittab` ç¸ç»åä»¥æä¾é¢å¤çåç½®æ¨¡åã è¯¥ç»æä½å¨ :file:`Include/import.h` ä¸­è¢«å®ä¹ä¸º:: ``__file__`` å±æ§å°ä¸åå¨æ¨¡åä¸è®¾ç½®ã æ¨¡åç :attr:`__file__` å±æ§å°è¢«è®¾ä¸ºä»£ç å¯¹è±¡ç :c:member:`co_filename`ã å¦æéç¨ï¼:attr:`__cached__` ä¹å°è¢«è®¾ç½®ã æ¨¡åç :attr:`__spec__` å :attr:`__loader__` å¦æå°æªè®¾ç½®çè¯ï¼å°è¢«è®¾ç½®ä¸ºéå½çå¼ã ç¸åº spec çå è½½å¨ï¼å¦æå·²è®¾ç½®ï¼å°è¢«è®¾ä¸ºæ¨¡åç ``__loader__`` èå¨å¶ä»æåµä¸è®¾ä¸º :class:`SourceFileLoader` çå®ä¾ã æ°ç ``is_package`` å­æ®µæææ¨¡åæ¯å¦ä¸ºä¸ä¸ªåã è¿æ¿ä»£äºå° ``size`` è®¾ä¸ºè´å¼çåæ³ã è¿åå¼æ¯ä¸ä¸ªå¯¹æå¯¼å¥æ¨¡åææé«å±çº§åçæ°å¼ç¨ï¼ææ¯å¨å¯¼å¥å¤±è´¥æ¶åä¸º ``NULL`` å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ã ä¸ :func:`__import__` ç±»ä¼¼ï¼å½è¯·æ±ä¸ä¸ªåçå­æ¨¡åæ¶è¿åå¼éå¸¸ä¸ºè¯¥æé«å±çº§åï¼é¤éç»åºäºä¸ä¸ªéç©ºç *fromlist*ã :attr:`__cached__` å :attr:`__loader__` çè®¾ç½®å·²è¢«å¼ç¨ã æ¿ä»£è®¾ç½®åè§ :class:`~importlib.machinery.ModuleSpec`ã è¯¥å½æ°æ»æ¯ä½¿ç¨ç»å¯¹è·¯å¾å¯¼å¥ã æ­¤å½æ°ä¸ä¼å è½½æå¯¼å¥æå®æ¨¡åï¼å¦ææ¨¡åè¿æªè¢«å è½½ï¼ä½ å°å¾å°ä¸ä¸ªç©ºçæ¨¡åå¯¹è±¡ã è¯·ä½¿ç¨ :c:func:`PyImport_ImportModule` æå®çæä¸ªåä½å½¢å¼æ¥å¯¼å¥æ¨¡åã *name* ä½¿ç¨å¸¦ç¹å·åç§°çåç»æå¦æå°ä¸å­å¨åä¸ä¼è¢«åå»ºã è¯¥å½æ°æ¯ :c:func:`PyImport_ImportModule` çä¸ä¸ªè¢«éå¼çå«åã å¨å¯¼å¥éè¢«å¦ä¸çº¿ç¨ææ§æ¶æ­¤å½æ°ä¼ç«å³å¤±è´¥ã ä½æ¯ä» Python 3.3 èµ·ï¼éæ¹æ¡å¨å¤§å¤æ°æåµä¸é½å·²åæ¢ä¸ºéå¯¹æ¯ä¸ªæ¨¡åå éï¼æä»¥æ­¤å½æ°çç¹æ®è¡ä¸ºå·²æ å¿è¦ã å¦ææ¨¡åå·²è¢«å¯¼å¥åæ­¤å½æ°å°éè½½å®ã è¯·åé :c:func:`PyImport_ReloadModule` äºè§£éè½½æ¨¡åçé¢å®æ¹å¼ã è¿æ¯ä¸ä¸ªè°ç¨äºå½åâå¯¼å¥é©å­å½æ°âçæ´é«å±çº§æ¥å£ï¼æ¾å¼æå® *level* ä¸º 0ï¼è¡¨ç¤ºç»å¯¹å¯¼å¥ï¼ã å®å°åèµ·è°ç¨å½åå¨å±ä½ç¨åä¸ ``__builtins__`` ä¸­ç :func:`__import__` å½æ°ã è¿æå³çå°ä½¿ç¨å½åç¯å¢ä¸å®è£çä»»ä½å¯¼å¥é©å­æ¥å®æå¯¼å¥ã è¿æ¯ä¸é¢ :c:func:`PyImport_ImportModuleEx` çç®åçæ¥å£ï¼å° *globals* å *locals* åæ°è®¾ä¸º ``NULL`` å¹¶å° *level* è®¾ä¸º 0ã å½ *name* åæ°åå«ä¸ä¸ªç¹å·ï¼å³æå®äºä¸ä¸ªåçå­æ¨¡åï¼æ¶ï¼*fromlist* åæ°ä¼è¢«è®¾ä¸ºåè¡¨ ``['*']`` è¿æ ·è¿åå¼å°ä¸ºææå®çæ¨¡åèä¸åå¨å¶ä»æåµä¸é£æ ·ä¸ºåå«æ¨¡åçæé«å±çº§åã ï¼ä¸å¹¸çæ¯ï¼è¿å¨ *name* å®éä¸æ¯æå®ä¸ä¸ªå­åèéå­æ¨¡åæ¶å°æä¸ä¸ªé¢å¤çå¯ä½ç¨ï¼å¨åç ``__all__`` åéä¸­æå®çå­æ¨¡åä¼è¢«å è½½ãï¼ è¿åä¸ä¸ªå¯¹æå¯¼å¥æ¨¡åçæ°å¼ç¨ï¼ææ¯å¨å¯¼å¥å¤±è´¥æ¶è¿å ``NULL`` å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ã æ¨¡åå¯¼å¥å¤±è´¥åæ¨¡åä¸ä¼ç å¨ :data:`sys.modules` ä¸­ã è¿æ¯éå¯¹å·²å»ç»æ¨¡åæè¿°å¨çç»æç±»åå®ä¹ï¼ä¸ç± :program:`freeze` å·¥å·æçæçä¸è´ (è¯·åç Python æºä»£ç åè¡çä¸­ç :file:`Tools/freeze/`)ã å¶å®ä¹å¯å¨ :file:`Include/import.h` ä¸­æ¾å°:: è¯¥æéè¢«åå§åä¸ºæåä¸ä¸ª :c:struct:`_frozen` è®°å½çæ°ç»ï¼ä»¥ä¸ä¸ªæææååä¸º ``NULL`` æé¶çè®°å½è¡¨ç¤ºç»æã å½ä¸ä¸ªå»ç»æ¨¡åè¢«å¯¼å¥æ¶ï¼å®å°å¨æ­¤è¡¨ä¸­è¢«æç´¢ã ç¬¬ä¸æ¹ä»£ç å¯ä»¥å©ç¨æ­¤æ¹å¼æ¥æä¾å¨æåå»ºçå»ç»æ¨¡åéã å¦æåªæä¾äºå­èç è·¯å¾åä¼ä½¿ç¨ :func:`!imp.source_from_cache()` æ¥è®¡ç®æºè·¯å¾ã __all__ __all__ (ååé) __import__ åç½®å½æ° ç¼è¯ å»ç»å·¥å· modules (å¨ sys æ¨¡åä¸­) ååé 