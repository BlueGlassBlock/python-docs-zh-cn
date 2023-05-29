Þ    [      ô              Ì  <   Í    
  j     J   	  H   V	  /   	  ^  Ï	  º  .  ¥   é  £    #   3     W  º  Ø  ]     ç   ñ     Ù     é  g   ö  	   ^  ?   h     ¨  ,   È  h   õ  n   ^     Í  á   c  g  E  m  ­  o               J   0    {          ®     Á     Ï  i   ê  c  T  '  ¸  °   à  ~      ü   !  &  "     4#  <   È#  y   $    $  ;   ÿ%  3   ;&     o&  *   ÷&  L   "'  ?  o'     ¯*  `   ´*     +  ]   +     õ+  ·  ,  E  Ë-  g   /  B   y/  u   ¼/  W   20  7  0  N  Â1    3  È   4  j  ç4  q   R6  [  Ä6  Ö   8     ÷9     |:     ;  p   ;     <  Ý   <     ö<     =  :  "=     ]>     ô>  c   |?  ó   à?     Ô@     í@  #    A      $A  ²  EA  3   øB  z  ,C  G  §D  6   ïE  F   &F     mF  &  F  V  °G     J  /  ¤J     ÔK  z   óK    nL  A   N  »   MN     	O     O  R   O     pO  $   wO  !   O  '   ¾O  M   æO  <   4P  l   qP  ¸   ÞP  )  Q  ö   ÁR  T   ¸S  `   T     nT  ?   ~T  á   ¾T      U     °U     ÃU     ÐU  T   éU  s  >V  þ   ²W     ±X  z   KY  ×   ÆY  ã   Z  }   [  ;    \  o   <\  '  ¬\  2   Ô]  ,   ^  {   4^     °^  O   Ì^  Ò  _     ïa  O   öa  ]   Fb  F   ¤b     ëb  i  c  &  ld  Z   e  -   îe  i   f  Q   f  ò   Øf  á   Ëg  »   ­h     ii  ú   	j  W   k  Ý   \k    :l  i   Ám  r   +n     n  d   !o     o     o     3p     Ip    _p  d   eq  T   Êq  ]   r  à   }r     ^s     ks  '   {s     £s   :keyword:`del` can also be used to delete entire variables:: A list comprehension consists of brackets containing an expression followed by a :keyword:`!for` clause, then zero or more :keyword:`!for` or :keyword:`!if` clauses.  The result will be a new list resulting from evaluating the expression in the context of the :keyword:`!for` and :keyword:`!if` clauses which follow it. For example, this listcomp combines the elements of two lists if they are not equal:: A special problem is the construction of tuples containing 0 or 1 items: the syntax has some extra quirks to accommodate these.  Empty tuples are constructed by an empty pair of parentheses; a tuple with one item is constructed by following a value with a comma (it is not sufficient to enclose a single value in parentheses). Ugly, but effective.  For example:: A tuple consists of a number of values separated by commas, for instance:: Add an item to the end of the list.  Equivalent to ``a[len(a):] = [x]``. An example that uses most of the list methods:: Another thing you might notice is that not all data can be sorted or compared.  For instance, ``[None, 'hello', 10]`` doesn't sort because integers can't be compared to strings and *None* can't be compared to other types.  Also, there are some types that don't have a defined ordering relation.  For example, ``3+4j < 5+7j`` isn't a valid comparison. Another useful data type built into Python is the *dictionary* (see :ref:`typesmapping`). Dictionaries are sometimes found in other languages as "associative memories" or "associative arrays".  Unlike sequences, which are indexed by a range of numbers, dictionaries are indexed by *keys*, which can be any immutable type; strings and numbers can always be keys.  Tuples can be used as keys if they contain only strings, numbers, or tuples; if a tuple contains any mutable object either directly or indirectly, it cannot be used as a key. You can't use lists as keys, since lists can be modified in place using index assignments, slice assignments, or methods like :meth:`append` and :meth:`extend`. As we saw in the previous section, the inner list comprehension is evaluated in the context of the :keyword:`for` that follows it, so this example is equivalent to:: As you see, on output tuples are always enclosed in parentheses, so that nested tuples are interpreted correctly; they may be input with or without surrounding parentheses, although often parentheses are necessary anyway (if the tuple is part of a larger expression).  It is not possible to assign to the individual items of a tuple, however it is possible to create tuples which contain mutable objects, such as lists. Comparing Sequences and Other Types Comparisons can be chained.  For example, ``a < b == c`` tests whether ``a`` is less than ``b`` and moreover ``b`` equals ``c``. Comparisons may be combined using the Boolean operators ``and`` and ``or``, and the outcome of a comparison (or of any other Boolean expression) may be negated with ``not``.  These have lower priorities than comparison operators; between them, ``not`` has the highest priority and ``or`` the lowest, so that ``A and not B or C`` is equivalent to ``(A and (not B)) or C``. As always, parentheses can be used to express the desired composition. Consider the following example of a 3x4 matrix implemented as a list of 3 lists of length 4:: Curly braces or the :func:`set` function can be used to create sets.  Note: to create an empty set you have to use ``set()``, not ``{}``; the latter creates an empty dictionary, a data structure that we discuss in the next section. Data Structures Dictionaries Extend the list by appending all the items from the iterable.  Equivalent to ``a[len(a):] = iterable``. Footnotes For example, assume we want to create a list of squares, like:: Here is a brief demonstration:: Here is a small example using a dictionary:: If the expression is a tuple (e.g. the ``(x, y)`` in the previous example), it must be parenthesized. :: In addition, dict comprehensions can be used to create dictionaries from arbitrary key and value expressions:: In the real world, you should prefer built-in functions to complex flow statements. The :func:`zip` function would do a great job for this use case:: Insert an item at a given position.  The first argument is the index of the element before which to insert, so ``a.insert(0, x)`` inserts at the front of the list, and ``a.insert(len(a), x)`` is equivalent to ``a.append(x)``. It is also possible to use a list as a queue, where the first element added is the first element retrieved ("first-in, first-out"); however, lists are not efficient for this purpose.  While appends and pops from the end of list are fast, doing inserts or pops from the beginning of a list is slow (because all of the other elements have to be shifted by one). It is best to think of a dictionary as a set of *key: value* pairs, with the requirement that the keys are unique (within one dictionary). A pair of braces creates an empty dictionary: ``{}``. Placing a comma-separated list of key:value pairs within the braces adds initial key:value pairs to the dictionary; this is also the way dictionaries are written on output. It is possible to assign the result of a comparison or other Boolean expression to a variable.  For example, :: It is sometimes tempting to change a list while you are looping over it; however, it is often simpler and safer to create a new list instead. :: List Comprehensions List comprehensions can contain complex expressions and nested functions:: List comprehensions provide a concise way to create lists. Common applications are to make new lists where each element is the result of some operations applied to each member of another sequence or iterable, or to create a subsequence of those elements that satisfy a certain condition. Looping Techniques More on Conditions More on Lists Nested List Comprehensions Note how the order of the :keyword:`for` and :keyword:`if` statements is the same in both these snippets. Note that comparing objects of different types with ``<`` or ``>`` is legal provided that the objects have appropriate comparison methods.  For example, mixed numeric types are compared according to their numeric value, so 0 equals 0.0, etc.  Otherwise, rather than providing an arbitrary ordering, the interpreter will raise a :exc:`TypeError` exception. Note that in Python, unlike C, assignment inside expressions must be done explicitly with the :ref:`walrus operator <why-can-t-i-use-an-assignment-in-an-expression>` ``:=``. This avoids a common class of problems encountered in C programs: typing ``=`` in an expression when ``==`` was intended. Note that this creates (or overwrites) a variable named ``x`` that still exists after the loop completes.  We can calculate the list of squares without any side effects using:: Other languages may return the mutated object, which allows method chaining, such as ``d->insert("a")->remove("b")->sort();``. Performing ``list(d)`` on a dictionary returns a list of all the keys used in the dictionary, in insertion order (if you want it sorted, just use ``sorted(d)`` instead). To check whether a single key is in the dictionary, use the :keyword:`in` keyword. Python also includes a data type for *sets*.  A set is an unordered collection with no duplicate elements.  Basic uses include membership testing and eliminating duplicate entries.  Set objects also support mathematical operations like union, intersection, difference, and symmetric difference. Referencing the name ``a`` hereafter is an error (at least until another value is assigned to it).  We'll find other uses for :keyword:`del` later. Remove all items from the list.  Equivalent to ``del a[:]``. Remove the first item from the list whose value is equal to *x*.  It raises a :exc:`ValueError` if there is no such item. Remove the item at the given position in the list, and return it.  If no index is specified, ``a.pop()`` removes and returns the last item in the list.  (The square brackets around the *i* in the method signature denote that the parameter is optional, not that you should type square brackets at that position.  You will see this notation frequently in the Python Library Reference.) Return a shallow copy of the list.  Equivalent to ``a[:]``. Return the number of times *x* appears in the list. Return zero-based index in the list of the first item whose value is equal to *x*. Raises a :exc:`ValueError` if there is no such item. Reverse the elements of the list in place. See :ref:`tut-unpacking-arguments` for details on the asterisk in this line. Sequence objects typically may be compared to other objects with the same sequence type. The comparison uses *lexicographical* ordering: first the first two items are compared, and if they differ this determines the outcome of the comparison; if they are equal, the next two items are compared, and so on, until either sequence is exhausted. If two items to be compared are themselves sequences of the same type, the lexicographical comparison is carried out recursively.  If all items of two sequences compare equal, the sequences are considered equal. If one sequence is an initial sub-sequence of the other, the shorter sequence is the smaller (lesser) one.  Lexicographical ordering for strings uses the Unicode code point number to order individual characters. Some examples of comparisons between sequences of the same type:: Sets Similarly to :ref:`list comprehensions <tut-listcomps>`, set comprehensions are also supported:: Sort the items of the list in place (the arguments can be used for sort customization, see :func:`sorted` for their explanation). The :func:`dict` constructor builds dictionaries directly from sequences of key-value pairs:: The :keyword:`!del` statement The Boolean operators ``and`` and ``or`` are so-called *short-circuit* operators: their arguments are evaluated from left to right, and evaluation stops as soon as the outcome is determined.  For example, if ``A`` and ``C`` are true but ``B`` is false, ``A and B and C`` does not evaluate the expression ``C``.  When used as a general value and not as a Boolean, the return value of a short-circuit operator is the last evaluated argument. The comparison operators ``in`` and ``not in`` are membership tests that determine whether a value is in (or not in) a container.  The operators ``is`` and ``is not`` compare whether two objects are really the same object.  All comparison operators have the same priority, which is lower than that of all numerical operators. The conditions used in ``while`` and ``if`` statements can contain any operators, not just comparisons. The following list comprehension will transpose rows and columns:: The initial expression in a list comprehension can be any arbitrary expression, including another list comprehension. The list data type has some more methods.  Here are all of the methods of list objects: The list methods make it very easy to use a list as a stack, where the last element added is the first element retrieved ("last-in, first-out").  To add an item to the top of the stack, use :meth:`append`.  To retrieve an item from the top of the stack, use :meth:`pop` without an explicit index.  For example:: The main operations on a dictionary are storing a value with some key and extracting the value given the key.  It is also possible to delete a key:value pair with ``del``. If you store using a key that is already in use, the old value associated with that key is forgotten.  It is an error to extract a value using a non-existent key. The optional arguments *start* and *end* are interpreted as in the slice notation and are used to limit the search to a particular subsequence of the list.  The returned index is computed relative to the beginning of the full sequence rather than the *start* argument. The statement ``t = 12345, 54321, 'hello!'`` is an example of *tuple packing*: the values ``12345``, ``54321`` and ``'hello!'`` are packed together in a tuple. The reverse operation is also possible:: There is a way to remove an item from a list given its index instead of its value: the :keyword:`del` statement.  This differs from the :meth:`pop` method which returns a value.  The :keyword:`!del` statement can also be used to remove slices from a list or clear the entire list (which we did earlier by assignment of an empty list to the slice).  For example:: This chapter describes some things you've learned about already in more detail, and adds some new things as well. This is called, appropriately enough, *sequence unpacking* and works for any sequence on the right-hand side.  Sequence unpacking requires that there are as many variables on the left side of the equals sign as there are elements in the sequence.  Note that multiple assignment is really just a combination of tuple packing and sequence unpacking. Though tuples may seem similar to lists, they are often used in different situations and for different purposes. Tuples are :term:`immutable`, and usually contain a heterogeneous sequence of elements that are accessed via unpacking (see later in this section) or indexing (or even by attribute in the case of :func:`namedtuples <collections.namedtuple>`). Lists are :term:`mutable`, and their elements are usually homogeneous and are accessed by iterating over the list. To implement a queue, use :class:`collections.deque` which was designed to have fast appends and pops from both ends.  For example:: To loop over a sequence in reverse, first specify the sequence in a forward direction and then call the :func:`reversed` function. :: To loop over a sequence in sorted order, use the :func:`sorted` function which returns a new sorted list while leaving the source unaltered. :: To loop over two or more sequences at the same time, the entries can be paired with the :func:`zip` function. :: Tuples and Sequences Using :func:`set` on a sequence eliminates duplicate elements. The use of :func:`sorted` in combination with :func:`set` over a sequence is an idiomatic way to loop over unique elements of the sequence in sorted order. :: Using Lists as Queues Using Lists as Stacks We saw that lists and strings have many common properties, such as indexing and slicing operations.  They are two examples of *sequence* data types (see :ref:`typesseq`).  Since Python is an evolving language, other sequence data types may be added.  There is also another standard sequence data type: the *tuple*. When looping through a sequence, the position index and corresponding value can be retrieved at the same time using the :func:`enumerate` function. :: When looping through dictionaries, the key and corresponding value can be retrieved at the same time using the :meth:`items` method. :: When the keys are simple strings, it is sometimes easier to specify pairs using keyword arguments:: You might have noticed that methods like ``insert``, ``remove`` or ``sort`` that only modify the list have no return value printed -- they return the default ``None``. [#]_  This is a design principle for all mutable data structures in Python. and it's equivalent to:: or, equivalently:: which is more concise and readable. which, in turn, is the same as:: Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:50+0000
Last-Translator: Bryanä¸å¯æè®®, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :keyword:`del` ä¹å¯ä»¥ç¨æ¥å é¤æ´ä¸ªåéï¼ åè¡¨æ¨å¯¼å¼çæ¹æ¬å·ååå«ä»¥ä¸åå®¹ï¼ä¸ä¸ªè¡¨è¾¾å¼ï¼åé¢ä¸ºä¸ä¸ª :keyword:`!for` å­å¥ï¼ç¶åï¼æ¯é¶ä¸ªæå¤ä¸ª :keyword:`!for` æ :keyword:`!if` å­å¥ãç»ææ¯ç±è¡¨è¾¾å¼ä¾æ® :keyword:`!for` å :keyword:`!if` å­å¥æ±å¼è®¡ç®èå¾åºä¸ä¸ªæ°åè¡¨ã ä¸¾ä¾æ¥è¯´ï¼ä»¥ä¸åè¡¨æ¨å¯¼å¼å°ä¸¤ä¸ªåè¡¨ä¸­ä¸ç¸ç­çåç´ ç»åèµ·æ¥ï¼ æé  0 ä¸ªæ 1 ä¸ªåç´ çåç»æ¯è¾ç¹æ®ï¼ä¸ºäºéåºè¿ç§æåµï¼å¯¹å¥æ³æä¸äºé¢å¤çæ¹åãç¨ä¸å¯¹ç©ºåæ¬å·å°±å¯ä»¥åå»ºç©ºåç»ï¼åªæä¸ä¸ªåç´ çåç»å¯ä»¥éè¿å¨è¿ä¸ªåç´ åæ·»å éå·æ¥æå»ºï¼åæ¬å·éåªæä¸ä¸ªå¼çè¯ä¸å¤æç¡®ï¼ãä¸éï¼ä½æ¯ææãä¾å¦ï¼ åç»ç±å¤ä¸ªç¨éå·éå¼çå¼ç»æï¼ä¾å¦ï¼ å¨åè¡¨æ«å°¾æ·»å ä¸ä¸ªåç´ ï¼ç¸å½äº ``a[len(a):] = [x]`` ã å¤æ°åè¡¨æ¹æ³ç¤ºä¾ï¼ è¿æï¼ä¸æ¯æææ°æ®é½å¯ä»¥æåºææ¯è¾ãä¾å¦ï¼``[None, 'hello', 10]`` å°±ä¸å¯æåºï¼å ä¸ºæ´æ°ä¸è½ä¸å­ç¬¦ä¸²å¯¹æ¯ï¼è *None* ä¸è½ä¸å¶ä»ç±»åå¯¹æ¯ãæäºç±»åæ ¹æ¬å°±æ²¡æå®ä¹é¡ºåºå³ç³»ï¼ä¾å¦ï¼``3+4j < 5+7j`` è¿ç§å¯¹æ¯æä½å°±æ¯æ æçã *å­å¸* ï¼åè§ :ref:`typesmapping`ï¼ ä¹æ¯ä¸ç§å¸¸ç¨ç Python å§ç½®æ°æ®ç±»åãå¶ä»è¯­è¨å¯è½æå­å¸ç§°ä¸º *èååå­* æ *èåæ°ç»*ãä¸ä»¥è¿ç»­æ´æ°ä¸ºç´¢å¼çåºåä¸åï¼å­å¸ä»¥ *å³é®å­* ä¸ºç´¢å¼ï¼å³é®å­éå¸¸æ¯å­ç¬¦ä¸²ææ°å­ï¼ä¹å¯ä»¥æ¯å¶ä»ä»»æä¸å¯åç±»åãåªåå«å­ç¬¦ä¸²ãæ°å­ãåç»çåç»ï¼ä¹å¯ä»¥ç¨ä½å³é®å­ãä½å¦æåç»ç´æ¥æé´æ¥å°åå«äºå¯åå¯¹è±¡ï¼å°±ä¸è½ç¨ä½å³é®å­ãåè¡¨ä¸è½å½å³é®å­ï¼å ä¸ºåè¡¨å¯ä»¥ç¨ç´¢å¼ãåçã:meth:`append` ã:meth:`extend` ç­æ¹æ³ä¿®æ¹ã å¦æä»¬å¨ä¹åå°èä¸­çå°çï¼åé¨çåè¡¨æ¨å¯¼å¼æ¯å¨å®ä¹åç :keyword:`for` çä¸ä¸æä¸­è¢«æ±å¼çï¼æä»¥è¿ä¸ªä¾å­ç­ä»·äº:: è¾åºæ¶ï¼åç»é½è¦ç±åæ¬å·æ æ³¨ï¼è¿æ ·æè½æ­£ç¡®å°è§£éåµå¥åç»ãè¾å¥æ¶ï¼åæ¬å·å¯æå¯æ ï¼ä¸è¿ç»å¸¸æ¯å¿é¡»çï¼å¦æåç»æ¯æ´å¤§çè¡¨è¾¾å¼çä¸é¨åï¼ãä¸åè®¸ä¸ºåç»ä¸­çåä¸ªåç´ èµå¼ï¼å½ç¶ï¼å¯ä»¥åå»ºå«åè¡¨ç­å¯åå¯¹è±¡çåç»ã åºååå¶ä»ç±»åçæ¯è¾ æ¯è¾æä½æ¯æé¾å¼æä½ãä¾å¦ï¼``a < b == c`` æ ¡éª ``a`` æ¯å¦å°äº ``b``ï¼ä¸ ``b`` æ¯å¦ç­äº ``c``ã æ¯è¾æä½å¯ä»¥ç¨å¸å°è¿ç®ç¬¦ ``and`` å ``or`` ç»åï¼å¹¶ä¸ï¼æ¯è¾æä½ï¼æå¶ä»å¸å°è¿ç®ï¼çç»æé½å¯ä»¥ç¨ ``not`` ååãè¿äºæä½ç¬¦çä¼åçº§ä½äºæ¯è¾æä½ç¬¦ï¼``not`` çä¼åçº§æé«ï¼ ``or`` çä¼åçº§æä½ï¼å æ­¤ï¼``A and not B or C`` ç­ä»·äº ``(A and (not B)) or C``ãä¸å¶ä»è¿ç®ç¬¦æä½ä¸æ ·ï¼æ­¤å¤ä¹å¯ä»¥ç¨åæ¬å·è¡¨ç¤ºæ³è¦çç»åã ä¸é¢è¿ä¸ª 3x4 ç©éµï¼ç± 3 ä¸ªé¿åº¦ä¸º 4 çåè¡¨ç»æï¼ åå»ºéåç¨è±æ¬å·æ :func:`set` å½æ°ãæ³¨æï¼åå»ºç©ºéååªè½ç¨ ``set()``ï¼ä¸è½ç¨ ``{}``ï¼``{}`` åå»ºçæ¯ç©ºå­å¸ï¼ä¸ä¸å°èä»ç»æ°æ®ç»æï¼å­å¸ã æ°æ®ç»æ å­å¸ ç¨å¯è¿­ä»£å¯¹è±¡çåç´ æ©å±åè¡¨ãç¸å½äº  ``a[len(a):] = iterable`` ã å¤æ³¨ ä¾å¦ï¼åå»ºå¹³æ¹å¼çåè¡¨ï¼ ä»¥ä¸æ¯ä¸äºç®åçç¤ºä¾ :: ä»¥ä¸æ¯ä¸äºå­å¸çç®åç¤ºä¾ï¼ è¡¨è¾¾å¼æ¯åç»ï¼ä¾å¦ä¸ä¾ç ``(x, y)``ï¼æ¶ï¼å¿é¡»å ä¸æ¬å·ï¼ å­å¸æ¨å¯¼å¼å¯ä»¥ç¨ä»»æé®å¼è¡¨è¾¾å¼åå»ºå­å¸ï¼ å®éåºç¨ä¸­ï¼æå¥½ç¨åç½®å½æ°æ¿ä»£å¤æçæµç¨è¯­å¥ãæ­¤æ¶ï¼:func:`zip` å½æ°æ´å¥½ç¨ï¼ å¨æå®ä½ç½®æå¥åç´ ãç¬¬ä¸ä¸ªåæ°æ¯æå¥åç´ çç´¢å¼ï¼å æ­¤ï¼``a.insert(0, x)`` å¨åè¡¨å¼å¤´æå¥åç´ ï¼ ``a.insert(len(a), x)`` ç­åäº ``a.append(x)`` ã åè¡¨ä¹å¯ä»¥ç¨ä½éåï¼æåå å¥çåç´ ï¼æåååºï¼âåè¿ååºâï¼ï¼ç¶èï¼åè¡¨ä½ä¸ºéåçæçå¾ä½ãå ä¸ºï¼å¨åè¡¨æ«å°¾æ·»å åå é¤åç´ éå¸¸å¿«ï¼ä½å¨åè¡¨å¼å¤´æå¥æç§»é¤åç´ å´å¾æ¢ï¼å ä¸ºææå¶ä»åç´ é½å¿é¡»ç§»å¨ä¸ä½ï¼ã å¯ä»¥æå­å¸çè§£ä¸º *é®å¼å¯¹* çéåï¼ä½å­å¸çé®å¿é¡»æ¯å¯ä¸çãè±æ¬å· ``{}`` ç¨äºåå»ºç©ºå­å¸ãå¦ä¸ç§åå§åå­å¸çæ¹å¼æ¯ï¼å¨è±æ¬å·éè¾å¥éå·åéçé®å¼å¯¹ï¼è¿ä¹æ¯å­å¸çè¾åºæ¹å¼ã è¿å¯ä»¥ææ¯è¾è¿ç®æå¶å®å¸å°è¡¨è¾¾å¼çç»æèµå¼ç»åéï¼ä¾å¦ï¼ ä¸è¬æ¥è¯´ï¼å¨å¾ªç¯ä¸­ä¿®æ¹åè¡¨çåå®¹æ¶ï¼åå»ºæ°åè¡¨æ¯è¾ç®åï¼ä¸å®å¨ï¼ åè¡¨æ¨å¯¼å¼ åè¡¨æ¨å¯¼å¼å¯ä»¥ä½¿ç¨å¤æçè¡¨è¾¾å¼ååµå¥å½æ°ï¼ åè¡¨æ¨å¯¼å¼åå»ºåè¡¨çæ¹å¼æ´ç®æ´ãå¸¸è§çç¨æ³ä¸ºï¼å¯¹åºåæå¯è¿­ä»£å¯¹è±¡ä¸­çæ¯ä¸ªåç´ åºç¨æç§æä½ï¼ç¨çæçç»æåå»ºæ°çåè¡¨ï¼æç¨æ»¡è¶³ç¹å®æ¡ä»¶çåç´ åå»ºå­åºåã å¾ªç¯çæå·§ æ·±å¥æ¡ä»¶æ§å¶ åè¡¨è¯¦è§£ åµå¥çåè¡¨æ¨å¯¼å¼ æ³¨æï¼ä¸é¢ä¸¤æ®µä»£ç ä¸­ï¼:keyword:`for` å :keyword:`if` çé¡ºåºç¸åã æ³¨æï¼å½æ¯è¾ä¸åç±»åçå¯¹è±¡æ¶ï¼åªè¦å¾æ¯è¾çå¯¹è±¡æä¾äºåéçæ¯è¾æ¹æ³ï¼å°±å¯ä»¥ä½¿ç¨ ``<`` å ``>`` è¿è¡æ¯è¾ãä¾å¦ï¼æ··åçæ°å­ç±»åéè¿æ°å­å¼è¿è¡æ¯è¾ï¼æä»¥ï¼0 ç­äº 0.0ï¼ç­ç­ãå¦ææ²¡ææä¾åéçæ¯è¾æ¹æ³ï¼è§£éå¨ä¸ä¼éä¾¿ç»åºä¸ä¸ªæ¯è¾ç»æï¼èæ¯å¼å :exc:`TypeError` å¼å¸¸ã æ³¨æï¼Python ä¸ C ä¸åï¼å¨è¡¨è¾¾å¼åé¨èµå¼å¿é¡»æ¾å¼ä½¿ç¨ :ref:`æµ·è±¡è¿ç®ç¬¦ <why-can-t-i-use-an-assignment-in-an-expression>` ``:=``ã è¿é¿åäº C ç¨åºä¸­å¸¸è§çé®é¢ï¼è¦å¨è¡¨è¾¾å¼ä¸­å ``==`` æ¶ï¼å´åæäº ``=``ã æ³¨æï¼è¿æ®µä»£ç åå»ºï¼æè¦çï¼åé ``x``ï¼è¯¥åéå¨å¾ªç¯ç»æåä»ç¶å­å¨ãä¸è¿°æ¹æ³å¯ä»¥æ å¯ä½ç¨å°è®¡ç®å¹³æ¹åè¡¨ï¼ å«çè¯­è¨å¯è½ä¼å°å¯åå¯¹è±¡è¿åï¼åè®¸æ¹æ³è¿ç»­æ§è¡ï¼ä¾å¦ ``d->insert("a")->remove("b")->sort();``ã å¯¹å­å¸æ§è¡ ``list(d)`` æä½ï¼è¿åè¯¥å­å¸ä¸­ææé®çåè¡¨ï¼ææå¥æ¬¡åºæåï¼å¦éæåºï¼è¯·ä½¿ç¨ ``sorted(d)``ï¼ãæ£æ¥å­å¸éæ¯å¦å­å¨æä¸ªé®ï¼ä½¿ç¨å³é®å­ :keyword:`in`ã Python è¿æ¯æ *éå* è¿ç§æ°æ®ç±»åãéåæ¯ç±ä¸éå¤åç´ ç»æçæ åºå®¹å¨ãåºæ¬ç¨æ³åæ¬æåæ£æµãæ¶é¤éå¤åç´ ãéåå¯¹è±¡æ¯æåéãäº¤éãå·®éãå¯¹ç§°å·®åç­æ°å­¦è¿ç®ã æ­¤åï¼åå¼ç¨ ``a`` å°±ä¼æ¥éï¼ç´å°ä¸ºå®èµä¸å¦ä¸ä¸ªå¼ï¼ãåæä¼ä»ç» :keyword:`del` çå¶ä»ç¨æ³ã å é¤åè¡¨éçææåç´ ï¼ç¸å½äº ``del a[:]`` ã ä»åè¡¨ä¸­å é¤ç¬¬ä¸ä¸ªå¼ä¸º *x* çåç´ ãæªæ¾å°æå®åç´ æ¶ï¼è§¦å :exc:`ValueError` å¼å¸¸ã å é¤åè¡¨ä¸­æå®ä½ç½®çåç´ ï¼å¹¶è¿åè¢«å é¤çåç´ ãæªæå®ä½ç½®æ¶ï¼``a.pop()`` å é¤å¹¶è¿ååè¡¨çæåä¸ä¸ªåç´ ãï¼æ¹æ³ç­¾åä¸­ *i* ä¸¤è¾¹çæ¹æ¬å·è¡¨ç¤ºè¯¥åæ°æ¯å¯éçï¼ä¸æ¯è¦æ±è¾å¥æ¹æ¬å·ãè¿ç§è¡¨ç¤ºæ³å¸¸è§äº Python åèåºï¼ã è¿ååè¡¨çæµæ·è´ãç¸å½äº ``a[:]``  ã è¿ååè¡¨ä¸­åç´  *x* åºç°çæ¬¡æ°ã è¿ååè¡¨ä¸­ç¬¬ä¸ä¸ªå¼ä¸º *x* çåç´ çé¶åºç´¢å¼ãæªæ¾å°æå®åç´ æ¶ï¼è§¦å :exc:`ValueError` å¼å¸¸ã ç¿»è½¬åè¡¨ä¸­çåç´ ã å³äºæ¬è¡ä¸­æå·çè¯¦ç»è¯´æï¼åè§ :ref:`tut-unpacking-arguments`ã åºåå¯¹è±¡å¯ä»¥ä¸ç¸ååºåç±»åçå¶ä»å¯¹è±¡æ¯è¾ãè¿ç§æ¯è¾ä½¿ç¨ *å­å¸å¼* é¡ºåºï¼é¦åï¼æ¯è¾åä¸¤ä¸ªå¯¹åºåç´ ï¼å¦æä¸ç¸ç­ï¼åå¯ç¡®å®æ¯è¾ç»æï¼å¦æç¸ç­ï¼åæ¯è¾ä¹åçä¸¤ä¸ªåç´ ï¼ä»¥æ­¤ç±»æ¨ï¼ç´å°å¶ä¸­ä¸ä¸ªåºåç»æãå¦æè¦æ¯è¾çä¸¤ä¸ªåç´ æ¬èº«æ¯ç¸åç±»åçåºåï¼åéå½å°æ§è¡å­å¸å¼é¡ºåºæ¯è¾ãå¦æä¸¤ä¸ªåºåä¸­ææçå¯¹åºåç´ é½ç¸ç­ï¼åä¸¤ä¸ªåºåç¸ç­ãå¦æä¸ä¸ªåºåæ¯å¦ä¸ä¸ªçåå§å­åºåï¼åè¾ç­çåºåå¯è¢«è§ä¸ºè¾å°ï¼è¾å°ï¼çåºåã å¯¹äºå­ç¬¦ä¸²æ¥è¯´ï¼å­å¸å¼é¡ºåºä½¿ç¨ Unicode ç ä½åºå·æåºåä¸ªå­ç¬¦ãä¸é¢ååºäºä¸äºæ¯è¾ç¸åç±»ååºåçä¾å­ï¼ éå ä¸ :ref:`åè¡¨æ¨å¯¼å¼ <tut-listcomps>` ç±»ä¼¼ï¼éåä¹æ¯ææ¨å¯¼å¼ï¼ å°±å°æåºåè¡¨ä¸­çåç´ ï¼è¦äºè§£èªå®ä¹æåºåæ°ï¼è¯¦è§ :func:`sorted`ï¼ã :func:`dict` æé å½æ°å¯ä»¥ç´æ¥ç¨é®å¼å¯¹åºååå»ºå­å¸ï¼ :keyword:`!del` è¯­å¥ å¸å°è¿ç®ç¬¦ ``and`` å ``or`` æ¯æè°ç *ç­è·¯* è¿ç®ç¬¦ï¼å¶åæ°ä»å·¦è³å³æ±å¼ï¼ä¸æ¦å¯ä»¥ç¡®å®ç»æï¼æ±å¼å°±ä¼åæ­¢ãä¾å¦ï¼å¦æ ``A`` å ``C`` ä¸ºçï¼``B`` ä¸ºåï¼é£ä¹ ``A and B and C`` ä¸ä¼å¯¹ ``C`` æ±å¼ãç¨ä½æ®éå¼èä¸æ¯å¸å°å¼æ¶ï¼ç­è·¯è¿ç®ç¬¦çè¿åå¼éå¸¸æ¯æåä¸ä¸ªæ±äºå¼çåæ°ã æ¯è¾è¿ç®ç¬¦ ``in`` å ``not in`` ç¨äºæ§è¡ç¡®å®ä¸ä¸ªå¼æ¯å¦å­å¨ï¼æä¸å­å¨ï¼äºæä¸ªå®¹å¨ä¸­çæåæ£æµã è¿ç®ç¬¦ ``is`` å ``is not`` ç¨äºæ¯è¾ä¸¤ä¸ªå¯¹è±¡æ¯å¦æ¯åä¸ä¸ªå¯¹è±¡ã æææ¯è¾è¿ç®ç¬¦çä¼åçº§é½ä¸æ ·ï¼ä¸ä½äºä»»ä½æ°å¼è¿ç®ç¬¦ã ``while`` å ``if`` æ¡ä»¶å¥ä¸åªå¯ä»¥è¿è¡æ¯è¾ï¼è¿å¯ä»¥ä½¿ç¨ä»»æè¿ç®ç¬¦ã ä¸é¢çåè¡¨æ¨å¯¼å¼å¯ä»¥è½¬ç½®è¡åï¼ åè¡¨æ¨å¯¼å¼ä¸­çåå§è¡¨è¾¾å¼å¯ä»¥æ¯ä»»ä½è¡¨è¾¾å¼ï¼çè³å¯ä»¥æ¯å¦ä¸ä¸ªåè¡¨æ¨å¯¼å¼ã åè¡¨æ°æ®ç±»åæ¯æå¾å¤æ¹æ³ï¼åè¡¨å¯¹è±¡çæææ¹æ³æç¤ºå¦ä¸ï¼ ä½¿ç¨åè¡¨æ¹æ³å®ç°å æ éå¸¸å®¹æï¼æåæå¥çæåååºï¼âåè¿ååºâï¼ãæåç´ æ·»å å°å æ çé¡¶ç«¯ï¼ä½¿ç¨ :meth:`append` ãä»å æ é¡¶é¨ååºåç´ ï¼ä½¿ç¨ :meth:`pop` ï¼ä¸ç¨æå®ç´¢å¼ãä¾å¦ï¼ å­å¸çä¸»è¦ç¨éæ¯éè¿å³é®å­å­å¨ãæåå¼ãç¨ ``del`` å¯ä»¥å é¤é®å¼å¯¹ãç¨å·²å­å¨çå³é®å­å­å¨å¼ï¼ä¸è¯¥å³é®å­å³èçæ§å¼ä¼è¢«åä»£ãéè¿ä¸å­å¨çé®æåå¼ï¼åä¼æ¥éã å¯éåæ° *start* å *end* æ¯åçç¬¦å·ï¼ç¨äºå°æç´¢éå¶ä¸ºåè¡¨çç¹å®å­åºåãè¿åçç´¢å¼æ¯ç¸å¯¹äºæ´ä¸ªåºåçå¼å§è®¡ç®çï¼èä¸æ¯ *start* åæ°ã è¯­å¥ ``t = 12345, 54321, 'hello!'`` æ¯ *åç»æå* çä¾å­ï¼å¼ ``12345``, ``54321`` å ``'hello!'`` ä¸èµ·è¢«æåè¿åç»ãéæä½ä¹å¯ä»¥ï¼ :keyword:`del` è¯­å¥æç´¢å¼ï¼èä¸æ¯å¼ä»åè¡¨ä¸­ç§»é¤åç´ ãä¸è¿åå¼ç :meth:`pop` æ¹æ³ä¸åï¼ :keyword:`!del` è¯­å¥ä¹å¯ä»¥ä»åè¡¨ä¸­ç§»é¤åçï¼ææ¸ç©ºæ´ä¸ªåè¡¨ï¼ä¹åæ¯å°ç©ºåè¡¨èµå¼ç»åçï¼ã ä¾å¦ï¼ æ¬ç« æ·±å¥è®²è§£ä¹åå­¦è¿çä¸äºåå®¹ï¼åæ¶ï¼è¿å¢å äºæ°çç¥è¯ç¹ã ç§°ä¹ä¸º *åºåè§£å*  ä¹æ¯å¦¥å¦¥çï¼éç¨äºå³ä¾§çä»»ä½åºåãåºåè§£åæ¶ï¼å·¦ä¾§åéä¸å³ä¾§åºååç´ çæ°éåºç¸ç­ãæ³¨æï¼å¤éèµå¼å¶å®åªæ¯åç»æåååºåè§£åçç»åã è½ç¶ï¼åç»ä¸åè¡¨å¾åï¼ä½ä½¿ç¨åºæ¯ä¸åï¼ç¨éä¹ä¸åãåç»æ¯ :term:`immutable` ï¼ä¸å¯åçï¼ï¼ä¸è¬å¯åå«å¼è´¨åç´ åºåï¼éè¿è§£åï¼è§æ¬èä¸æï¼æç´¢å¼è®¿é®ï¼å¦ææ¯ :func:`namedtuples <collections.namedtuple>`ï¼å¯ä»¥å±æ§è®¿é®ï¼ãåè¡¨æ¯ :term:`mutable` ï¼å¯åçï¼ï¼åè¡¨åç´ ä¸è¬ä¸ºåè´¨ç±»åï¼å¯è¿­ä»£è®¿é®ã å®ç°éåæå¥½ç¨ :class:`collections.deque`ï¼å¯ä»¥å¿«éä»ä¸¤ç«¯æ·»å æå é¤åç´ ãä¾å¦ï¼ ä¸ºäºéåå¯¹åºåè¿è¡å¾ªç¯ï¼å¯ä»¥æ±åºæ¬²å¾ªç¯çæ­£ååºåï¼ç¶åè°ç¨ :func:`reversed` å½æ°ï¼ ææå®é¡ºåºå¾ªç¯åºåï¼å¯ä»¥ç¨ :func:`sorted` å½æ°ï¼å¨ä¸æ¹å¨ååºåçåºç¡ä¸ï¼è¿åä¸ä¸ªéæ°çåºåï¼ åæ¶å¾ªç¯ä¸¤ä¸ªæå¤ä¸ªåºåæ¶ï¼ç¨ :func:`zip` å½æ°å¯ä»¥å°å¶åçåç´ ä¸ä¸å¹éï¼ åç»ååºå ä½¿ç¨ :func:`set` å»é¤åºåä¸­çéå¤åç´ ãä½¿ç¨ :func:`sorted` å  :func:`set` åææåºåçé¡ºåºï¼å¾ªç¯éååºåä¸­çå¯ä¸åç´ ï¼ ç¨åè¡¨å®ç°éå ç¨åè¡¨å®ç°å æ  åè¡¨åå­ç¬¦ä¸²æå¾å¤å±æ§ï¼ä¾å¦ï¼ç´¢å¼ååçæä½ãè¿ä¸¤ç§æ°æ®ç±»åæ¯ *åºå* ï¼åè§ :ref:`typesseq`ï¼ãéç Python è¯­è¨çåå±ï¼å¶ä»çåºåç±»åä¹è¢«å å¥å¶ä¸­ãæ¬èä»ç»å¦ä¸ç§æ ååºåç±»åï¼*åç»*ã å¨åºåä¸­å¾ªç¯æ¶ï¼ç¨ :func:`enumerate` å½æ°å¯ä»¥åæ¶ååºä½ç½®ç´¢å¼åå¯¹åºçå¼ï¼ å¨å­å¸ä¸­å¾ªç¯æ¶ï¼ç¨ :meth:`items` æ¹æ³å¯åæ¶ååºé®åå¯¹åºçå¼ï¼ å³é®å­æ¯æ¯è¾ç®åçå­ç¬¦ä¸²æ¶ï¼ç´æ¥ç¨å³é®å­åæ°æå®é®å¼å¯¹æ´ä¾¿æ·ï¼ ä½ å¯è½å·²ç»æ³¨æå° ``insert``, ``remove`` æ ``sort`` ç­ä»ä¿®æ¹åè¡¨çæ¹æ³é½ä¸ä¼æå°è¿åå¼ -- å®ä»¬è¿åé»è®¤å¼ ``None``ã [#]_  è¿æ¯éç¨äº Python ä¸­ææå¯åæ°æ®ç»æçè®¾è®¡ååã ç­ä»·äºï¼ æç­ä»·äºï¼ ä¸é¢è¿ç§åæ³æ´ç®æ´ãæè¯»ã åè¿æ¥è¯´ï¼ä¹ç­ä»·äºï¼ 