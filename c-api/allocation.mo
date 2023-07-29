��    
      l               �      �   e  �   a  =     �  $  �  �   �  E  �  z   �  )   B  �  l     ,
    F
  ;  f     �  �   �  �   �  I  8  g   �  !   �   :c:func:`PyModule_Create` Allocate a new Python object using the C structure type *TYPE* and the Python type object *typeobj* (``PyTypeObject*``). Fields not defined by the Python object header are not initialized.  The allocated memory allows for the *TYPE* structure plus *size* (``Py_ssize_t``) fields of the size given by the :c:member:`~PyTypeObject.tp_itemsize` field of *typeobj*.  This is useful for implementing objects like tuples, which are able to determine their size at construction time.  Embedding the array of fields into the same allocation decreases the number of allocations, improving the memory management efficiency. Allocate a new Python object using the C structure type *TYPE* and the Python type object *typeobj* (``PyTypeObject*``). Fields not defined by the Python object header are not initialized; the object's reference count will be one.  The size of the memory allocation is determined from the :c:member:`~PyTypeObject.tp_basicsize` field of the type object. Allocating Objects on the Heap Initialize a newly allocated object *op* with its type and initial reference.  Returns the initialized object.  If *type* indicates that the object participates in the cyclic garbage detector, it is added to the detector's set of observed objects. Other fields of the object are not affected. Object which is visible in Python as ``None``.  This should only be accessed using the :c:macro:`Py_None` macro, which evaluates to a pointer to this object. Releases memory allocated to an object using :c:macro:`PyObject_New` or :c:macro:`PyObject_NewVar`.  This is normally called from the :c:member:`~PyTypeObject.tp_dealloc` handler specified in the object's type.  The fields of the object should not be accessed after this call as the memory is no longer a valid Python object. This does everything :c:func:`PyObject_Init` does, and also initializes the length information for a variable-size object. To allocate and create extension modules. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-28 14:13+0000
PO-Revision-Date: 2021-06-28 00:47+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 :c:func:`PyModule_Create` 使用 C 结构类型 *TYPE* 和 Python 类型对象 *typeobj* (``PyTypeObject*``) 分配一个新的 Python 对象。 未在该 Python 对象标头中定义的字段不会被初始化。 被分配的内存允许 *TYPE* 结构加 *typeobj* 的 :c:member:`~PyTypeObject.tp_itemsize` 字段所给出的 *size* (``Py_ssize_t``) 个字段。 这对于实现像元组这样能够在构造时确定其大小的对象来说很有用。 将字段数组嵌入到相同的内在分配中可减少内存分配的次数，这提高了内存管理效率。 使用 C 结构类型 *TYPE* 和 Python 类型对象 *typeobj* (``PyTypeObject*``) 分配一个新的 Python 对象。 未在该 Python 对象标头中定义的字段不会被初始化；对象的引用计数将为一。 内在分配大小由类型对象的 :c:member:`~PyTypeObject.tp_basicsize` 字段来确定。 在堆上分配对象 用它的类型和初始引用来初始化新分配对象 *op*。返回已初始化的对象。如果 *type* 明该对象参与循环垃圾检测器，则将其添加到检测器的观察对象集中。 对象的其他字段不受影响。 这个对象是像 ``None`` 一样的 Python 对象。它可以使用 :c:macro:`Py_None` 宏访问，该宏的拿到指向该对象的指针。 释放使用 :c:macro:`PyObject_New` 或 :c:macro:`PyObject_NewVar` 分配给一个对象的内存。 这通常由在对象的类型中指定的 :c:member:`~PyTypeObject.tp_dealloc` 处理句柄来调用。 在此调用之后该对象中的字段不应再被访问因为原来的内存已不再是一个有效的 Python 对象。 它的功能和 :c:func:`PyObject_Init` 一样，并且会初始化变量大小对象的长度信息。 分配内存和创建扩展模块 