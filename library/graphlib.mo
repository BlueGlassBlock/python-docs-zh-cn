��    !      $              ,  *   -  G   X  5  �  ~   �  "   U  5   x  T   �  
     ;     ~   J  j  �  �   4  _   �    P	  �  _
  �   �  O   �  Q    L   _  a   �  �    W  �  �   �  �   �  e   �  C     m   X  c  �  �   *  �   �  �   �     u  �  �  (   S  5   |  �  �  �   �  !     5   4  L   j     �  <   �  o   �  >  k  �   �  F   H   �   �   h  t!  �   �"  W   �#  b  $  ]   %  l   �%  e  J&  F  �'  �   �(  �   �)  W   �*  /   �*  W   "+  >  z+  P   �,  �   
-  �   �-     �.   **Source code:** :source:`Lib/graphlib.py` :mod:`graphlib` --- Functionality to operate with graph-like structures A topological order is a linear ordering of the vertices in a graph such that for every directed edge u -> v from vertex u to vertex v, vertex u comes before vertex v in the ordering. For instance, the vertices of the graph may represent tasks to be performed, and the edges may represent constraints that one task must be performed before another; in this example, a topological ordering is just a valid sequence for the tasks. A complete topological ordering is possible if and only if the graph has no directed cycles, that is, if it is a directed acyclic graph. Add a new node and its predecessors to the graph. Both the *node* and all elements in *predecessors* must be :term:`hashable`. Add additional nodes to the graph. Call :meth:`~TopologicalSorter.prepare` on the graph. Create an instance of the :class:`TopologicalSorter` with an optional initial graph. Exceptions If any cycle is detected, :exc:`CycleError` will be raised. If called multiple times with the same node argument, the set of dependencies will be the union of all dependencies passed in. If the optional *graph* argument is provided it must be a dictionary representing a directed acyclic graph where the keys are nodes and the values are iterables of all predecessors of that node in the graph (the nodes that have edges that point to the value in the key). Additional nodes can be added to the graph using the :meth:`~TopologicalSorter.add` method. In case just an immediate sorting of the nodes in the graph is required and no parallelism is involved, the convenience method :meth:`TopologicalSorter.static_order` can be used directly: In the general case, the steps required to perform the sorting of a given graph are as follows: It is possible to add a node with no dependencies (*predecessors* is not provided) or to provide a dependency twice. If a node that has not been provided before is included among *predecessors* it will be automatically added to the graph with no predecessors of its own. Mark the graph as finished and check for cycles in the graph. If any cycle is detected, :exc:`CycleError` will be raised, but :meth:`~TopologicalSorter.get_ready` can still be used to obtain as many nodes as possible until cycles block more progress. After a call to this function, the graph cannot be modified, and therefore no more nodes can be added using :meth:`~TopologicalSorter.add`. Marks a set of nodes returned by :meth:`TopologicalSorter.get_ready` as processed, unblocking any successor of each node in *nodes* for being returned in the future by a call to :meth:`TopologicalSorter.get_ready`. Provides functionality to topologically sort a graph of :term:`hashable` nodes. Raises :exc:`ValueError` if any node in *nodes* has already been marked as processed by a previous call to this method or if a node was not added to the graph by using :meth:`TopologicalSorter.add`, if called without calling :meth:`~TopologicalSorter.prepare` or if node has not yet been returned by :meth:`~TopologicalSorter.get_ready`. Raises :exc:`ValueError` if called after :meth:`~TopologicalSorter.prepare`. Raises :exc:`ValueError` if called without calling :meth:`~TopologicalSorter.prepare` previously. Returns ``True`` if more progress can be made and ``False`` otherwise. Progress can be made if cycles do not block the resolution and either there are still nodes ready that haven't yet been returned by :meth:`TopologicalSorter.get_ready` or the number of nodes marked :meth:`TopologicalSorter.done` is less than the number that have been returned by :meth:`TopologicalSorter.get_ready`. Returns a ``tuple`` with all the nodes that are ready. Initially it returns all nodes with no predecessors, and once those are marked as processed by calling :meth:`TopologicalSorter.done`, further calls will return all new nodes that have all their predecessors already processed. Once no more progress can be made, empty tuples are returned. Returns an iterator object which will iterate over nodes in a topological order. When using this method, :meth:`~TopologicalSorter.prepare` and :meth:`~TopologicalSorter.done` should not be called. This method is equivalent to:: Subclass of :exc:`ValueError` raised by :meth:`TopologicalSorter.prepare` if cycles exist in the working graph. If multiple cycles exist, only one undefined choice among them will be reported and included in the exception. The :meth:`~TopologicalSorter.__bool__` method of this class defers to this function, so instead of:: The :mod:`graphlib` module defines the following exception classes: The class is designed to easily support parallel processing of the nodes as they become ready. For instance:: The detected cycle can be accessed via the second element in the :attr:`~CycleError.args` attribute of the exception instance and consists in a list of nodes, such that each node is, in the graph, an immediate predecessor of the next node in the list. In the reported list, the first and the last node will be the same, to make it clear that it is cyclic. The particular order that is returned may depend on the specific order in which the items were inserted in the graph. For example: This is due to the fact that "0" and "2" are in the same level in the graph (they would have been returned in the same call to :meth:`~TopologicalSorter.get_ready`) and the order between them is determined by the order of insertion. While :meth:`~TopologicalSorter.is_active` is ``True``, iterate over the nodes returned by :meth:`~TopologicalSorter.get_ready` and process them. Call :meth:`~TopologicalSorter.done` on each node as it finishes processing. it is possible to simply do:: Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:06+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码:** :source:`Lib/graphlib.py` :mod:`graphlib` --- 操作类似图的结构的功能 拓扑排序是指图中顶点的线性排序，使得对于每条从顶点 u 到顶点 v 的有向边 u -> v，顶点 u 都排在顶点 v 之前。 例如，图的顶点可以代表要执行的任务，而边代表某一个任务必须在另一个任务之前执行的约束条件；在这个例子中，拓扑排序只是任务的有效序列。 完全拓扑排序 当且仅当图不包含有向环，也就是说为有向无环图时，完全拓扑排序才是可能的。 将一个新节点及其上级节点添加到图中。 *node* 和 *predecessors* 中的所有元素都必须是 :term:`hashable`。 添加额外的节点到图中。 在图上调用 :meth:`~TopologicalSorter.prepare`。 通过可选的初始图创建一个 :class:`TopologicalSorter` 的实例。 异常 如果检测到任何环，则将引发 :exc:`CycleError`。 如果附带相同的节点参数多次调用，则依赖项的集合将为所有被传入依赖项的并集。 如果提供了可选的 *graph* 参数则它必须为一个表示有向无环图的字典，其中的键为节点而值为包含图中该节点的所有上级节点（即具有指向键中的值的边的节点）的可迭代对象。 额外的节点可以使用 :meth:`~TopologicalSorter.add` 方法添加到图中。 在只需要对图中的节点进行立即排序并且不涉及并行性的情况下，可以直接使用便捷方法 :meth:`TopologicalSorter.static_order`: 在通常情况下，对给定的图执行排序所需的步骤如下: 可以添加不带依赖项的节点 (即不提供 *predecessors*) 或者重复提供依赖项。 如果有先前未提供的节点包含在 *predecessors* 中则它将被自动添加到图中并且不带自己的上级节点。 将图标记为已完成并检查图中是否存在环。 如何检测到任何环，则将引发 :exc:`CycleError`，但 :meth:`~TopologicalSorter.get_ready` 仍可被用来获取尽可能多的节点直到环阻塞了操作过程。 在调用此函数后，图将无法再修改，因此不能再使用 :meth:`~TopologicalSorter.add` 添加更多的节点。 将 :meth:`TopologicalSorter.get_ready` 所返回的节点集合标记为已处理，解除对 *nodes* 中每个节点的后续节点的阻塞以便在将来通过对 :meth:`TopologicalSorter.get_ready` 的调用来返回它们。 提供以拓扑方式对由 :term:`hashable` 节点组成的图进行排序的功能。 如果 *nodes* 中的任何节点已经被之前对该方法的调用标记为已处理或者如果未通过使用 :meth:`TopologicalSorter.add` 将一个节点添加到图中，如果未调用 :meth:`~TopologicalSorter.prepare` 即调用此方法或者如果节点尚未被 :meth:`~TopologicalSorter.get_ready` 所返回则将引发 :exc:`ValueError`。 如果在 :meth:`~TopologicalSorter.prepare` 之后被调用则会引发 :exc:`ValueError`。 如果之前未调用 :meth:`~TopologicalSorter.prepare` 就调用此函数则会引发 :exc:`ValueError`。 如果可以取得更多进展则返回 ``True``，否则返回 ``False``。 如果环没有阻塞操作，并且还存在尚未被 :meth:`TopologicalSorter.get_ready` 返回的已就绪节点或者已标记为 :meth:`TopologicalSorter.done` 的节点数量少于已被 :meth:`TopologicalSorter.get_ready` 所返回的节点数量则还可以取得进展。 返回由所有已就绪节点组成的 ``tuple``。 初始状态下它将返回所有不带上级节点的节点，并且一旦通过调用 :meth:`TopologicalSorter.done` 将它们标记为已处理，之后的调用将返回所有上级节点已被处理的新节点。 一旦无法再取得进展，则会返回空元组。 返回一个迭代器，它将按照拓扑顺序来迭代所有节点。 当使用此方法时，:meth:`~TopologicalSorter.prepare` 和 :meth:`~TopologicalSorter.done` 不应被调用。 此方法等价于:: :exc:`ValueError` 的子类，当特定的图中存在环时将由 :meth:`TopologicalSorter.prepare` 引发。 如果存在多个环，则将只报告其中一个未定义的选项并将其包括在异常中。 该类的 :meth:`~TopologicalSorter.__bool__` 方法要使用此函数，因此除了:: :mod:`graphlib` 模块定义了以下异常类: 这个类被设计用来在节点就绪时方便地支持对其并行处理。 例如:: 检测到的环可以通过异常实例的 :attr:`~CycleError.args` 属性的第二个元素来访问，它由一个节点列表组成，其中的每个节点在图中都是列表中下一个节点的直接上级节点。 在报告的列表中，开头和末尾的节点将是同一对象，以表明它是一个环。 所返回的特定顺序可能取决于条目被插入图中的顺序。 例如: 这是由于实际上 "0" 和 "2" 在图中的级别相同（它们将在对 :meth:`~TopologicalSorter.get_ready` 的同一次调用中被返回） 并且它们之间的顺序是由插入顺序决定的。 当 :meth:`~TopologicalSorter.is_active` 为 ``True`` 时，迭代 :meth:`~TopologicalSorter.get_ready` 所返回的节点并加以处理。 完成处理后在每个节点上调用 :meth:`~TopologicalSorter.done`。 可能会简单地执行:: 