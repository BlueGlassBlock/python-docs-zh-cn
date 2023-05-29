Þ    1      ¤              ,  *   -     X  #  Û  `   ÿ     `  À   ø  
   ¹  ß   Ä     ¤     ¬  z   F  y  Á  N   ;
     
          $  ò   1  	   $     .     Å  ª   Ñ  v  |     ó          .  d   Á  ¼   &  ¼   ã  ù          Ú  ,  Ü    E  ä    *     A  Ë  O  ö          b    l   ö  9   c   2      3   Ð   µ  !  G   º"    #  ¿   $     ×$  ¿  `%  '    '     H'    Î'  T   ã(  x   8)  «   ±)  
   ]*  Í   h*     6+     =+  u   Ø+  P  N,  H   -     è-     k.     x.  æ   .     l/     |/     	0  «   0  `  Â0     #2     ·2     M3  O   Þ3     .4  ²   Ã4  Û   v5  }  R6  ®  Ð7  ­  9  7  -;  ï   e<     U=  l  b=  Ò   Ï>  r   ¢?    @  \   2A  0   A  *   ÀA  *   ëA  |  B  6   C  ö   ÊC  ®   ÁD     pE   :mod:`readline` --- GNU readline interface Append *line* to the history buffer, as if it was the last line typed. This calls :c:func:`add_history` in the underlying library. Append the last *nelements* items of history to a file.  The default filename is :file:`~/.history`.  The file must already exist.  This calls :c:func:`append_history` in the underlying library.  This function only exists if Python was compiled for a version of the library that supports it. Auto history is enabled by default, and changes to this do not persist across multiple sessions. Change what's displayed on the screen to reflect the current contents of the line buffer.  This calls :c:func:`rl_redisplay` in the underlying library. Clear the current history.  This calls :c:func:`clear_history` in the underlying library.  The Python function only exists if Python was compiled for a version of the library that supports it. Completion Enable or disable automatic calls to :c:func:`add_history` when reading input via readline.  The *enabled* argument should be a Boolean value that when true, enables auto history, and that when false, disables auto history. Example Execute a readline initialization file. The default filename is the last filename used. This calls :c:func:`rl_read_init_file` in the underlying library. Execute the init line provided in the *string* argument. This calls :c:func:`rl_parse_and_bind` in the underlying library. Get the beginning or ending index of the completion scope. These indexes are the *start* and *end* arguments passed to the :c:data:`rl_attempted_completion_function` callback of the underlying library.  The values may be different in the same input editing scenario based on the underlying C readline implementation. Ex: libedit is known to behave differently than libreadline. Get the completer function, or ``None`` if no completer function has been set. Get the type of completion being attempted.  This returns the :c:data:`rl_completion_type` variable in the underlying library as an integer. History file History list If you use *editline*/``libedit`` readline emulation on macOS, the initialization file located in your home directory is named ``.editrc``. For example, the following content in ``~/.editrc`` will turn ON *vi* keybindings and TAB completion:: Init file Insert text into the line buffer at the cursor position.  This calls :c:func:`rl_insert_text` in the underlying library, but ignores the return value. Line buffer Load a readline history file, and append it to the history list. The default filename is :file:`~/.history`.  This calls :c:func:`read_history` in the underlying library. Readline keybindings may be configured via an initialization file, typically ``.inputrc`` in your home directory.  See `Readline Init File <https://tiswww.cwru.edu/php/chet/readline/rluserman.html#Readline-Init-File>`_ in the GNU Readline manual for information about the format and allowable constructs of that file, and the capabilities of the Readline library in general. Remove history item specified by its position from the history. The position is zero-based.  This calls :c:func:`remove_history` in the underlying library. Replace history item specified by its position with *line*. The position is zero-based.  This calls :c:func:`replace_history_entry` in the underlying library. Return the current contents of history item at *index*.  The item index is one-based.  This calls :c:func:`history_get` in the underlying library. Return the current contents of the line buffer (:c:data:`rl_line_buffer` in the underlying library). Return the number of items currently in the history.  (This is different from :func:`get_history_length`, which returns the maximum number of lines that will be written to a history file.) Save the history list to a readline history file, overwriting any existing file.  The default filename is :file:`~/.history`.  This calls :c:func:`write_history` in the underlying library. Set or get the word delimiters for completion.  These determine the start of the word to be considered for completion (the completion scope). These functions access the :c:data:`rl_completer_word_break_characters` variable in the underlying library. Set or remove the completer function.  If *function* is specified, it will be used as the new completer function; if omitted or ``None``, any completer function already installed is removed.  The completer function is called as ``function(text, state)``, for *state* in ``0``, ``1``, ``2``, ..., until it returns a non-string value.  It should return the next possible completion starting with *text*. Set or remove the completion display function.  If *function* is specified, it will be used as the new completion display function; if omitted or ``None``, any completion display function already installed is removed.  This sets or clears the :c:data:`rl_completion_display_matches_hook` callback in the underlying library.  The completion display function is called as ``function(substitution, [matches], longest_match_length)`` once each time matches need to be displayed. Set or remove the function invoked by the :c:data:`rl_pre_input_hook` callback of the underlying library.  If *function* is specified, it will be used as the new hook function; if omitted or ``None``, any function already installed is removed.  The hook is called with no arguments after the first prompt has been printed and just before readline starts reading input characters.  This function only exists if Python was compiled for a version of the library that supports it. Set or remove the function invoked by the :c:data:`rl_startup_hook` callback of the underlying library.  If *function* is specified, it will be used as the new hook function; if omitted or ``None``, any function already installed is removed.  The hook is called with no arguments just before readline prints the first prompt. Set or return the desired number of lines to save in the history file. The :func:`write_history_file` function uses this value to truncate the history file, by calling :c:func:`history_truncate_file` in the underlying library.  Negative values imply unlimited history file size. Startup hooks The :mod:`readline` module defines a number of functions to facilitate completion and reading/writing of history files from the Python interpreter. This module can be used directly, or via the :mod:`rlcompleter` module, which supports completion of Python identifiers at the interactive prompt.  Settings made using  this module affect the behaviour of both the interpreter's interactive prompt  and the prompts offered by the built-in :func:`input` function. The configuration file for ``libedit`` is different from that of GNU readline. If you programmatically load configuration strings you can check for the text "libedit" in :const:`readline.__doc__` to differentiate between GNU readline and libedit. The following example achieves the same goal but supports concurrent interactive sessions, by only appending the new history. :: The following example demonstrates how to use the :mod:`readline` module's history reading and writing functions to automatically load and save a history file named :file:`.python_history` from the user's home directory.  The code below would normally be executed automatically during interactive sessions from the user's :envvar:`PYTHONSTARTUP` file. :: The following example extends the :class:`code.InteractiveConsole` class to support history save/restore. :: The following functions operate on a global history list: The following functions operate on a history file: The following functions operate on the line buffer: The following functions relate to implementing a custom word completion function.  This is typically operated by the Tab key, and can suggest and automatically complete a word being typed.  By default, Readline is set up to be used by :mod:`rlcompleter` to complete Python identifiers for the interactive interpreter.  If the :mod:`readline` module is to be used with a custom completer, a different set of word delimiters should be set. The following functions relate to the init file and user configuration: The installed completer function is invoked by the *entry_func* callback passed to :c:func:`rl_completion_matches` in the underlying library. The *text* string comes from the first parameter to the :c:data:`rl_attempted_completion_function` callback of the underlying library. The underlying Readline library API may be implemented by the ``libedit`` library instead of GNU readline. On macOS the :mod:`readline` module detects which library is being used at run time. This code is actually automatically run when Python is run in :ref:`interactive mode <tut-interactive>` (see :ref:`rlcompleter-config`). Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:12+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :mod:`readline` --- GNU readline æ¥å£ å° *line* æ·»å å°åå²ç¼å²åºï¼ç¸å½äºæ¯æè¿è¾å¥çä¸è¡ã æ­¤å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`add_history`ã å°åå²åè¡¨çæå *nelements* é¡¹æ·»å å°åå²æä»¶ã é»è®¤æä»¶åä¸º :file:`~/.history`ã æä»¶å¿é¡»å·²å­å¨ã æ­¤å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`append_history`ã æ­¤å½æ°ä»å½ Python ç¼è¯åå¸¦ææ¯ææ­¤åè½çåºçæ¬æ¶æä¼å­å¨ã èªå¨åå²å°é»è®¤å¯ç¨ï¼å¯¹æ­¤è®¾ç½®çæ¹åä¸ä¼å¨å¤ä¸ªä¼è¯ä¸­ä¿æã æ¹åå±å¹çæ¾ç¤ºä»¥åæ è¡ç¼å²åºçå½ååå®¹ã è¯¥å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`rl_redisplay`ã æ¸é¤å½ååå²ã æ­¤å½æ°ä¼è°ç¨åºå±åºç :c:func:`clear_history`ã æ­¤ Python å½æ°ä»å½ Python ç¼è¯åå¸¦ææ¯ææ­¤åè½çåºçæ¬æ¶æä¼å­å¨ã Completion å¯ç¨æç¦ç¨å½éè¿ readline è¯»åè¾å¥æ¶èªå¨è°ç¨ :c:func:`add_history`ã *enabled* åæ°åºä¸ºä¸ä¸ªå¸å°å¼ï¼å½å¶ä¸ºçå¼æ¶å¯ç¨èªå¨åå²ï¼å½å¶ä¸ºåå¼æ¶ç¦ç¨èªå¨åå²ã ç¤ºä¾ æ§è¡ä¸ä¸ª readline åå§åæä»¶ã é»è®¤æä»¶åä¸ºæè¿æä½¿ç¨çæä»¶åã æ­¤å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`rl_read_init_file`ã æ§è¡å¨ *string* åæ°ä¸­æä¾çåå§åè¡ã æ­¤å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`rl_parse_and_bind`ã è·åå®å¨èå´çå¼å§åç»æç´¢å¼å·ã è¿äºç´¢å¼å·å°±æ¯ä¼ éç»ä¸å±åºç :c:data:`rl_attempted_completion_function` åè°ç *start* å *end* åæ°ã å·ä½å¼å¨åä¸ä¸ªè¾å¥ç¼è¾åºæ¯ä¸­å¯è½ä¸åï¼å·ä½åå³äºä¸å±ç C readline å®ç°ã ä¾å¦ï¼å·²ç¥ libedit çè¡ä¸ºå°±ä¸åäº libreadlineã è·åè¡¥å¨å½æ°ï¼å¦ææ²¡æè®¾ç½®è¡¥å¨å½æ°åè¿å ``None``ã è·åæ­£å¨å°è¯çè¡¥å¨ç±»åã æ­¤å½æ°ä¼å°åºå±åºä¸­ç :c:data:`rl_completion_type` åéä½ä¸ºä¸ä¸ªæ´æ°è¿åã åå²æä»¶ åå²åè¡¨ å¦æä½ æ¯å¨ macOS ä¸ä½¿ç¨ *editline*/``libedit`` readline æ¨¡æï¼åä½äºä½ çä¸»ç®å½ä¸­çåå§åæä»¶åç§°ä¸º ``.editrc``ã ä¾å¦ï¼``~/.editrc`` ä¸­çä»¥ä¸åå®¹å°å¼å¯ *vi* æé®ç»å®ä»¥å TAB è¡¥å¨:: åå§åæä»¶ å°ææ¬æå¥è¡ç¼å²åºçå½åæ¸¸æ ä½ç½®ã è¯¥å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`rl_insert_text`ï¼ä½ä¼å¿½ç¥å¶è¿åå¼ã è¡ç¼å²åº è½½å¥ä¸ä¸ª readline åå²æä»¶ï¼å¹¶å°å¶æ·»å å°åå²åè¡¨ã é»è®¤æä»¶åä¸º :file:`~/.history`ã æ­¤å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`read_history`ã Readline çæé®ç»å®å¯ä»¥éè¿ä¸ä¸ªåå§åæä»¶æ¥éç½®ï¼éå¸¸æ¯ä½ çç¨æ·ç®å½ä¸­ç ``.inputrc``ã è¯·åé GNU Readline æåä¸­ç `Readline åå§åæä»¶ <https://tiswww.cwru.edu/php/chet/readline/rluserman.html#Readline-Init-File>`_ æ¥äºè§£æå³è¯¥æä»¶çæ ¼å¼ååè®¸çç»æï¼ä»¥å Readline åºçä¸è¬åè½ã ä»åå²åè¡¨ä¸­ç§»é¤æå®ä½ç½®ä¸çåå²æ¡ç®ã æ¡ç®ä½ç½®ä»é¶å¼å§ã æ­¤å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`remove_history`ã å°æå®ä½ç½®ä¸çåå²æ¡ç®æ¿æ¢ä¸º *line*ã æ¡ç®ä½ç½®ä»é¶å¼å§ã æ­¤å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`replace_history_entry`ã è¿ååºå·ä¸º *index* çåå²æ¡ç®çå½ååå®¹ã æ¡ç®åºå·ä»ä¸å¼å§ã æ­¤å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`history_get`ã è¿åè¡ç¼å²åºçå½ååå®¹ (åºå±åºä¸­ç :c:data:`rl_line_buffer`)ã è¿ååå²åè¡¨çå½åé¡¹æ°ã ï¼æ­¤å½æ°ä¸åäº :func:`get_history_length`ï¼åèæ¯è¿åå°è¢«åå¥åå²æä»¶çæå¤§è¡æ°ãï¼ å°åå²åè¡¨ä¿å­ä¸º readline åå²æä»¶ï¼è¦çä»»ä½ç°ææä»¶ã é»è®¤æä»¶åä¸º :file:`~/.history`ã æ­¤å½æ°ä¼è°ç¨åºå±åºä¸­ç :c:func:`write_history`ã è®¾ç½®æè·åè¡¥å¨çåè¯åéç¬¦ã æ­¤åéç¬¦ç¡®å®äºè¦èèè¡¥å¨çåè¯çå¼å§åç»æä½ç½®ï¼è¡¥å¨åï¼ã è¿äºå½æ°ä¼è®¿é®åºå±åºç :c:data:`rl_completer_word_break_characters` åéã è®¾ç½®æç§»é¤è¡¥å¨å½æ°ã å¦ææå®äº *function*ï¼å®å°è¢«ç¨ä½æ°çè¡¥å¨å½æ°ï¼å¦æçç¥æä¸º ``None``ï¼ä»»ä½å·²å®è£çè¡¥å¨å½æ°å°è¢«ç§»é¤ã è¡¥å¨å½æ°çè°ç¨å½¢å¼ä¸º ``function(text, state)``ï¼å¶ä¸­ *state* ä¸º ``0``, ``1``, ``2``, ..., ç´è³å¶è¿åä¸ä¸ªéå­ç¬¦ä¸²å¼ã å®åºå½è¿åä¸ä¸ä¸ªä»¥ *text* å¼å¤´çåéè¡¥å¨åå®¹ã è®¾ç½®æç§»é¤è¡¥å¨æ¾ç¤ºå½æ°ã å¦ææå®äº *function*ï¼å®å°è¢«ç¨ä½æ°çè¡¥å¨æ¾ç¤ºå½æ°ï¼å¦æçç¥æä¸º ``None``ï¼ä»»ä½å·²å®è£çè¡¥å¨æ¾ç¤ºå½æ°å°è¢«ç§»é¤ã æ­¤å½æ°ä¼è®¾ç½®ææ¸é¤åºå±åºç :c:data:`rl_completion_display_matches_hook` åè°å½æ°ã è¡¥å¨æ¾ç¤ºå½æ°ä¼å¨æ¯æ¬¡éè¦æ¾ç¤ºå¹éé¡¹æ¶ä»¥ ``function(substitution, [matches], longest_match_length)`` çå½¢å¼è¢«è°ç¨ã è®¾ç½®æç§»é¤åºå±åºç :c:data:`rl_pre_input_hook` åè°æåèµ·è°ç¨çå½æ°ã å¦ææå®äº *function*ï¼å®å°è¢«ç¨ä½æ°çé©å­å½æ°ï¼å¦æçç¥æä¸º ``None``ï¼ä»»ä½å·²å®è£çå½æ°å°è¢«ç§»é¤ã é©å­å½æ°å°å¨æå°ç¬¬ä¸ä¸ªæç¤ºä¿¡æ¯ä¹åãreadline å¼å§è¯»åè¾å¥å­ç¬¦ä¹åä¸å¸¦åæ°å°è¢«è°ç¨ã æ­¤å½æ°ä»å½ Python ç¼è¯åå¸¦ææ¯ææ­¤åè½çåºçæ¬æ¶æä¼å­å¨ã è®¾ç½®æç§»é¤åºå±åºç :c:data:`rl_startup_hook` åè°æåèµ·è°ç¨çå½æ°ã å¦ææå®äº *function*ï¼å®å°è¢«ç¨ä½æ°çé©å­å½æ°ï¼å¦æçç¥æä¸º ``None``ï¼ä»»ä½å·²å®è£çå½æ°å°è¢«ç§»é¤ã é©å­å½æ°å°å¨ readline æå°ç¬¬ä¸ä¸ªæç¤ºä¿¡æ¯ä¹åä¸å¸¦åæ°å°è¢«è°ç¨ã è®¾ç½®æè¿åéè¦ä¿å­å°åå²æä»¶çè¡æ°ã :func:`write_history_file` å½æ°ä¼éè¿è°ç¨åºå±åºä¸­ç :c:func:`history_truncate_file` ä»¥ä½¿ç¨è¯¥å¼æ¥æªååå²æä»¶ã è´å¼æå³çä¸éå¶åå²æä»¶çå¤§å°ã å¯å¨é©å­ :mod:`readline` æ¨¡åå®ä¹äºè®¸å¤æ¹ä¾¿ä» Python è§£éå¨å®æåè¯»å/åå¥åå²æä»¶çå½æ°ã æ­¤æ¨¡åå¯ä»¥ç´æ¥ä½¿ç¨ï¼æéè¿æ¯æå¨äº¤äºæç¤ºç¬¦ä¸å®æ Python æ è¯ç¬¦ç :mod:`rlcompleter` æ¨¡åä½¿ç¨ã ä½¿ç¨æ­¤æ¨¡åè¿è¡çè®¾ç½®ä¼åæ¶å½±åè§£éå¨çäº¤äºæç¤ºç¬¦ä»¥ååç½® :func:`input` å½æ°æä¾çæç¤ºç¬¦ã ``libedit`` æç¨çéç½®æä»¶ä¸ GNU readline çä¸åã å¦æä½ è¦å¨ç¨åºä¸­è½½å¥éç½®å­ç¬¦ä¸²ä½ å¯ä»¥å¨ :const:`readline.__doc__` ä¸­æ£æµææ¬ "libedit" æ¥åºå GNU readline å libeditã ä»¥ä¸ç¤ºä¾å®ç°äºåæ ·çç®æ ï¼ä½æ¯éè¿åªæ·»å æ°åå²çæ¹å¼æ¥æ¯æå¹¶åçäº¤äºä¼è¯ã :: ä»¥ä¸ç¤ºä¾æ¼ç¤ºäºå¦ä½ä½¿ç¨ :mod:`readline` æ¨¡åçåå²è¯»åæåå¥å½æ°æ¥èªå¨å è½½åä¿å­ç¨æ·ä¸»ç®å½ä¸åä¸º :file:`.python_history` çåå²æä»¶ã ä»¥ä¸ä»£ç éå¸¸åºå½å¨äº¤äºä¼è¯æé´ä»ç¨æ·ç :envvar:`PYTHONSTARTUP` æä»¶èªå¨æ§è¡ã :: ä»¥ä¸ç¤ºä¾æ©å±äº :class:`code.InteractiveConsole` ç±»ä»¥æ¯æåå²ä¿å­/æ¢å¤ã :: ä»¥ä¸å½æ°ä¼å¨å¨å±åå²åè¡¨ä¸æä½ï¼ ä¸åå½æ°ä¼å¨åå²æä»¶ä¸æä½ï¼ ä¸åå½æ°ä¼å¨è¡ç¼å²åºä¸æä½ã ä»¥ä¸å½æ°ä¸èªå®ä¹åè¯è¡¥å¨å½æ°çå®ç°æå³ã è¿éå¸¸ä½¿ç¨ Tab é®è¿è¡æä½ï¼è½å¤æç¤ºå¹¶èªå¨è¡¥å¨æ­£å¨è¾å¥çåè¯ã é»è®¤æåµä¸ï¼Readline è®¾ç½®ä¸ºç± :mod:`rlcompleter` æ¥è¡¥å¨äº¤äºæ¨¡å¼è§£éå¨ç Python æ è¯ç¬¦ã å¦æ :mod:`readline` æ¨¡åè¦éåèªå®ä¹çè¡¥å¨å½æ°æ¥ä½¿ç¨ï¼åéè¦è®¾ç½®ä¸åçåè¯åéç¬¦ã ä¸åå½æ°ä¸åå§åæä»¶åç¨æ·éç½®æå³ï¼ å·²å®è£çè¡¥å¨å½æ°å°ç±ä¼ éç»åºå±åºä¸­ :c:func:`rl_completion_matches` ç *entry_func* åè°å½æ°æ¥åèµ·è°ç¨ã *text* å­ç¬¦ä¸²æ¥èªäºåºå±åºä¸­ :c:data:`rl_attempted_completion_function` åè°å½æ°çç¬¬ä¸ä¸ªå½¢åã åºå±ç Readline åº API å¯è½ä½¿ç¨ ``libedit`` åºæ¥å®ç°èä¸æ¯ GNU readlineã å¨ macOS ä¸ :mod:`readline` æ¨¡åä¼å¨è¿è¡æ¶æ£æµæä½¿ç¨çæ¯åªä¸ªåºã æ­¤ä»£ç å®éä¸ä¼å¨ Python è¿è¡äº :ref:`äº¤äºæ¨¡å¼ <tut-interactive>` æ¶èªå¨è¿è¡ (åè§ :ref:`rlcompleter-config`)ã 