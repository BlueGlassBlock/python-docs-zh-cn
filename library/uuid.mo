��    D      <              \  &   ]     �     �     �     �     �     �     �       8     5   V  B   �  �   �  z   P     �     �  �   �  J  �  q  �	  !  I     k     s    y     �  �  �  R   0  C   �  �   �     �  %   �     �          '  /   G  p   w  7   �  o         �  Z   �  n   
  8   y  .   �  �   �  ]   �  E   	  9   O  #   �  Z   �  �     �   �  �   t  =   #  U   a  B   �  b   �  �   ]     �     �               ;     X     u     �     �     �     �  �  �  &   i     �     �     �     �     �     �            -   )  /   W  <   �  _   �  `   $     �     �  �   �  	  /   L  9"    �#     �$     �$  �   �$     �%  c  �%  A   $(  9   f(  �   �(     �)     �)     �)     �)     �)  .   *  N   G*  *   �*  f   �*     (+  R   H+  w   �+  ?   ,  2   S,  �   �,  U   9-  :   �-  1   �-     �-  4   .  �   M.  f   #/  u   �/  A    0  R   B0  E   �0  ]   �0  �   91     �1     �1     �1     �1     	2     2     12     E2     K2     Q2     W2   **Source code:** :source:`Lib/uuid.py` :attr:`clock_seq_hi_variant` :attr:`clock_seq_low` :attr:`clock_seq` :attr:`node` :attr:`time_hi_version` :attr:`time_low` :attr:`time_mid` :attr:`time` :class:`UUID` instances have these read-only attributes: :mod:`uuid` --- UUID objects according to :rfc:`4122` :rfc:`4122` - A Universally Unique IDentifier (UUID) URN Namespace A tuple of the six integer fields of the UUID, which are also available as six individual attributes and two derived attributes: An enumeration of :class:`SafeUUID` which indicates whether the platform generated the UUID in a multiprocessing-safe way. Command-Line Example Command-Line Usage Comparison of UUID objects are made by way of comparing their :attr:`UUID.int` attributes.  Comparison with a non-UUID object raises a :exc:`TypeError`. Create a UUID from either a string of 32 hexadecimal digits, a string of 16 bytes in big-endian order as the *bytes* argument, a string of 16 bytes in little-endian order as the *bytes_le* argument, a tuple of six integers (32-bit *time_low*, 16-bit *time_mid*, 16-bit *time_hi_version*, 8-bit *clock_seq_hi_variant*, 8-bit *clock_seq_low*, 48-bit *node*) as the *fields* argument, or a single 128-bit integer as the *int* argument. When a string of hex digits is given, curly braces, hyphens, and a URN prefix are all optional.  For example, these expressions all yield the same UUID:: Depending on support from the underlying platform, :func:`uuid1` may or may not return a "safe" UUID.  A safe UUID is one which is generated using synchronization methods that ensure no two processes can obtain the same UUID.  All instances of :class:`UUID` have an :attr:`is_safe` attribute which relays any information about the UUID's safety, using this enumeration: Exactly one of *hex*, *bytes*, *bytes_le*, *fields*, or *int* must be given. The *version* argument is optional; if given, the resulting UUID will have its variant and version number set according to :rfc:`4122`, overriding bits in the given *hex*, *bytes*, *bytes_le*, *fields*, or *int*. Example Field Generate a UUID from a host ID, sequence number, and the current time. If *node* is not given, :func:`getnode` is used to obtain the hardware address. If *clock_seq* is given, it is used as the sequence number; otherwise a random 14-bit sequence number is chosen. Generate a random UUID. Get the hardware address as a 48-bit positive integer.  The first time this runs, it may launch a separate program, which could be quite slow.  If all attempts to obtain the hardware address fail, we choose a random 48-bit number with the multicast bit (least significant bit of the first octet) set to 1 as recommended in :rfc:`4122`.  "Hardware address" means the MAC address of a network interface.  On a machine with multiple network interfaces, universally administered MAC addresses (i.e. where the second least significant bit of the first octet is *unset*) will be preferred over locally administered MAC addresses, but with no other ordering guarantees. Here are some examples of typical usage of the :mod:`uuid` command line interface: Here are some examples of typical usage of the :mod:`uuid` module:: If all you want is a unique ID, you should probably call :func:`uuid1` or :func:`uuid4`.  Note that :func:`uuid1` may compromise privacy since it creates a UUID containing the computer's network address.  :func:`uuid4` creates a random UUID. Meaning Reserved for Microsoft compatibility. Reserved for NCS compatibility. Reserved for future definition. Show the help message and exit. Specifies the UUID layout given in :rfc:`4122`. The :mod:`uuid` module defines the following constants for the possible values of the :attr:`variant` attribute: The :mod:`uuid` module defines the following functions: The :mod:`uuid` module defines the following namespace identifiers for use with :func:`uuid3` or :func:`uuid5`. The UUID as a 128-bit integer. The UUID as a 16-byte string (containing the six integer fields in big-endian byte order). The UUID as a 16-byte string (with *time_low*, *time_mid*, and *time_hi_version* in little-endian byte order). The UUID as a 32-character lowercase hexadecimal string. The UUID as a URN as specified in :rfc:`4122`. The UUID variant, which determines the internal layout of the UUID. This will be one of the constants :const:`RESERVED_NCS`, :const:`RFC_4122`, :const:`RESERVED_MICROSOFT`, or :const:`RESERVED_FUTURE`. The UUID version number (1 through 5, meaningful only when the variant is :const:`RFC_4122`). The UUID was generated by the platform in a multiprocessing-safe way. The UUID was not generated in a multiprocessing-safe way. The following options are accepted: The platform does not provide information on whether the UUID was generated safely or not. This module provides immutable :class:`UUID` objects (the :class:`UUID` class) and the functions :func:`uuid1`, :func:`uuid3`, :func:`uuid4`, :func:`uuid5` for generating version 1, 3, 4, and 5 UUIDs as specified in :rfc:`4122`. This specification defines a Uniform Resource Name namespace for UUIDs, the internal format of UUIDs, and methods of generating UUIDs. Universally administered MAC addresses are preferred over locally administered MAC addresses, since the former are guaranteed to be globally unique, while the latter are not. When this namespace is specified, the *name* string is a URL. When this namespace is specified, the *name* string is a fully qualified domain name. When this namespace is specified, the *name* string is an ISO OID. When this namespace is specified, the *name* string is an X.500 DN in DER or a text output format. ``str(uuid)`` returns a string in the form ``12345678-1234-5678-1234-567812345678`` where the 32 hexadecimal digits represent the UUID. getnode the 14-bit sequence number the 60-bit timestamp the first 32 bits of the UUID the last 48 bits of the UUID the next 16 bits of the UUID the next 8 bits of the UUID uuid1 uuid3 uuid4 uuid5 Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-29 16:50+0000
PO-Revision-Date: 2021-06-28 01:17+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码：** :source:`Lib/uuid.py` :attr:`clock_seq_hi_variant` :attr:`clock_seq_low` :attr:`clock_seq` :attr:`node` :attr:`time_hi_version` :attr:`time_low` :attr:`time_mid` :attr:`time` :class:`UUID` 实例有这些只读的属性: :mod:`uuid` --- :rfc:`4122` 定义的UUID对象 :rfc:`4122` - 通用唯一标识符（UUID）URN命名空间 以元组形式存放的UUID的6个整数域，有六个单独的属性和两个派生属性： 一个 :class:`SafeUUID` 的枚举，表示平台是否以多进程安全的方式生成 UUID。 命令行示例 命令行用法 UUID 对象的比较是通过比较它们的 :attr:`UUID.int` 属性进行的。 与非 UUID 对象的比较会引发 :exc:`TypeError`。 用一串32位十六进制数字、一串大端序16个字节作为*bytes*参数、一串16个小端序字节作为*bytes_le*参数、一个由六个整数组成的元组（32位*time_low*，16位*time_mid*，16位*time_hi_version*，8位*clock_seq_hi_variant*，8位*clock_seq_low*，48位*node*）作为*fields*参数，或者一个128位整数作为*int*参数创建一个UUID。当给出一串十六进制数字时，大括号、连字符和URN前缀都是可选的。 例如，这些表达式都产生相同的UUID:: 根据底层平台的支持，:func:`uuid1` 可能会也可能不会返回一个 "安全的" UUID。 安全的 UUID 是使用同步方法生成的，确保没有两个进程可以获得相同的 UUID。 所有 :class:`UUID` 的实例都有一个 :attr:`is_safe` 属性，使用这个枚举来传递关于 UUID 安全的任何信息: 必须给出 *hex*、*bytes*、*bytes_le*、*fields* 或 *int* 中的唯一一个。 *version* 参数是可选的；如果给定，产生的UUID将根据 :rfc:`4122` 设置其变体和版本号，覆盖给定的 *hex*、*bytes*、*bytes_le*、*fields* 或 *int* 中的位。 示例 域 根据主机 ID、序列号和当前时间生成一个 UUID。 如果没有给出 *node*，则使用 :func:`getnode` 来获取硬件地址。 如果给出了 *clock_seq*，它将被用作序列号；否则将选择一个随机的 14 比特位序列号。 生成一个随机的UUID。 获取 48 位正整数形式的硬件地址。 第一次运行时，它可能会启动一个单独的程序，这可能会相当慢。 如果所有获取硬件地址的尝试都失败了，我们会按照 :rfc:`4122` 中的建议，选择一个随机的 48 位数字，其多播位 (第一个八进制数的最小有效位) 设置为 1。 “硬件地址”是指一个网络接口的 MAC 地址。 在一台有多个网络接口的机器上，普遍管理的 MAC 地址 (即第一个八位数的第二个最小有效位是 *未设置的*) 将比本地管理的 MAC 地址优先，但没有其他排序保证。 下面是一些 :mod:`uuid` 命令行接口的典型用法示例: 下面是一些 :mod:`uuid` 模块的典型使用例子:: 如果你想要的只是一个唯一的ID，你可能应该调用 :func:`uuid1` 或 :func:`uuid4`。 注意 :func:`uuid1` 可能会损害隐私，因为它创建了一个包含计算机网络地址的UUID。 :func:`uuid4` 可以创建一个随机UUID。 含意 为微软的兼容性保留。 为NCS兼容性保留。 保留给未来的定义。 显示帮助信息并退出。 指定 :rfc:`4122` 中给出的 UUID 布局。 :mod:`uuid` 模块为 :attr:`variant` 属性的可能值定义了以下常量: :mod:`uuid` 模块定义了以下函数： :mod:`uuid` 模块定义了以下命名空间标识符，供 :func:`uuid3` 或 :func:`uuid5` 使用。 UUID是一个128位的整数。 UUID是一个16字节的字符串（包含6个大端字节序的整数字段）。 UUID 是一个 16 字节的字符串（其中 *time_low*、*time_mid* 和 *time_hi_version* 为小端字节顺序）。 UUID 是一个 32 字符的小写十六进制数码字符串。 在 :rfc:`4122` 中定义的 URN 形式的 UUID。 UUID 的变体，它决定了 UUID 的内部布局。 这将是 :const:`RESERVED_NCS`, :const:`RFC_4122`, :const:`RESERVED_MICROSOFT` 或 :const:`RESERVED_FUTURE` 中的一个。 UUID 版本号（1 到 5，只有当变体为 :const:`RFC_4122` 时才有意义）。 该UUID是由平台以多进程安全的方式生成的。 UUID不是以多进程安全的方式生成的。 可以接受以下选项： 该平台不提供UUID是否安全生成的信息。 这个模块提供了不可变的 :class:`UUID` 对象 (:class:`UUID` 类) 和 :func:`uuid1`, :func:`uuid3`, :func:`uuid4`, :func:`uuid5` 等函数用于生成 :rfc:`4122` 所定义的第 1, 3, 4 和 5 版 UUID。 本规范定义了UUID的统一资源名称空间，UUID的内部格式，以及生成UUID的方法。 普遍管理的MAC地址优于本地管理的MAC地址，因为前者保证是全球唯一的，而后者则不是。 当指定这个命名空间时，*name* 字符串是一个 URL。 当指定这个命名空间时，*name* 字符串是一个完全限定的域名。 当指定这个命名空间时，*name* 字符串是一个 ISO OID。 当指定这个命名空间时，*name* 字符串是 DER 或文本输出格式的 X.500 DN。 ``str(uuid)`` 返回一个 ``12345678-1234-5678-1234-567812345678`` 形式的字符串，其中 32 位十六进制数字代表 UUID。 getnode 14位的序列号 UUID的总长60位的时间戳 UUID的前32位 UUID的最后48位 接前一域的16位 接前一域的8位 uuid1 uuid3 uuid4 uuid5 