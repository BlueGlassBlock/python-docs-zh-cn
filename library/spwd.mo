��    /      �                                                             ,     =   L  4   �  >   �  	   �               /  
   5  &   @     g  &   o     �     �  ?   �  <   �  4   7  _   l     �  T   �  B   *  �   m  b   %  $   �  �   �  �   3  k   �  p   D	     �	     �	     �	     �	  
   �	  
   �	      
     
     
  �  $
     �     �     �     �     �     �     �     �     �  #   �  =     9   K  6   �     �     �     �     �  	   �  !   �       !   #     E     W  *   i  '   �  -   �  ]   �     H  D   U  2   �  �   �  f   �     �  |     �   �  X     e   u     �     �     �       
     
        &     2     >   0 1 2 3 4 5 6 7 8 :mod:`spwd` --- The shadow password database :ref:`Availability <availability>`: not Emscripten, not WASI. An interface to the group database, similar to this. An interface to the normal password database, similar to this. Attribute Date of last change Encrypted password Index Login name Maximum number of days between changes Meaning Minimal number of days between changes Module :mod:`grp` Module :mod:`pwd` Number of days after password expires until account is disabled Number of days before password expires to warn user about it Number of days since 1970-01-01 when account expires Raises a :exc:`PermissionError` instead of :exc:`KeyError` if the user doesn't have privileges. Reserved Return a list of all available shadow password database entries, in arbitrary order. Return the shadow password database entry for the given user name. Shadow password database entries are reported as a tuple-like object, whose attributes correspond to the members of the ``spwd`` structure (Attribute field below, see ``<shadow.h>``): The :mod:`spwd` module is deprecated (see :pep:`PEP 594 <594#spwd>` for details and alternatives). The following functions are defined: The sp_namp and sp_pwdp items are strings, all others are integers. :exc:`KeyError` is raised if the entry asked for cannot be found. This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. This module provides access to the Unix shadow password database. It is available on various Unix versions. You must have enough privileges to access the shadow password database (this usually means you have to be root). ``sp_expire`` ``sp_flag`` ``sp_inact`` ``sp_lstchg`` ``sp_max`` ``sp_min`` ``sp_namp`` ``sp_pwdp`` ``sp_warn`` Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:13+0000
Last-Translator: Bryan不可思议, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 0 1 2 3 4 5 6 7 8 :mod:`spwd` —— shadow 密码库 :ref:`可用性 <availability>`: 非 Emscripten，非 WASI。 针对用户组数据库的接口，与本模块类似。 访问普通密码库的接口，与本模块类似。 属性 最后修改日期 加密后的密码 索引 登录名 两次修改间隔的最大天数 含意 两次修改间隔的最小天数 模块 :mod:`grp` 模块 :mod:`pwd` 密码过期至账户禁用之间的天数 提前警告用户密码过期的天数 账户过期的天数，自 1970-01-01 算起 如果当前用户权限不足，会触发 :exc:`PermissionError`，而非 :exc:`KeyError`。 保留字段 返回所有可用的 shadow 密码库记录列表，顺序随机。 返回指定用户名的 shadow 密码库记录。 shadow 密码库中的每条记录均表示为一个类似元组的对象，其属性对应着 ``spwd`` 结构的成员（下面列出了各属性字段，参见 ` ``<shadow.h>``）。 :mod:`spwd` 模块已被弃用（请参阅 :pep:`PEP 594 <594#spwd>` 了解详情及其替代品）。 定义了以下函数： sp_namp 和 sp_pwdp 条目是字符串，其他的均为整数。 如果未找到所需条目则会触发 :exc:`KeyError`。 此模块在 WebAssembly 平台 ``wasm32-emscripten`` 和 ``wasm32-wasi`` 上不适用或不可用。 请参阅 :ref:`wasm-availability` 了解详情。 该模块提供对 Unix shadow 密码库的访问能力。可用于各种 Unix 版本。 访问 shadow 密码数据库须拥有足够的权限（通常意味着必须采用 root 账户）。 ``sp_expire`` ``sp_flag`` ``sp_inact`` ``sp_lstchg`` ``sp_max`` ``sp_min`` ``sp_namp`` ``sp_pwdp`` ``sp_warn`` 