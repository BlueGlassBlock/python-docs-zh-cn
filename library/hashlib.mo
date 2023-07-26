Þ          ä              ¬	     ­	  j   8
     £
  d   »
  j      )        µ  æ   Ì  ~   ³  R   2  w     .   ý     ,  B   Â  Î    a   Ô  V   6  k     b   ù  º   \  I        a  û   ò  Y   î  \   H     ¥     ¨     «     ®  /   °  4   à  +     (   A  ?   j  ì   ª  @    '  Ø  T     @   U       u   -  
   £     ®  F   µ  â   ü  y  ß     Y  Z   å  ñ   @      2!     :!  Ê   B!  	   "  H   "  é  `"     J$     `$  ~   h$     ç$     ð$  $   ù$     %  ¡   +%  t   Í%  =   B&     &     &  Z   &  Õ   ð&  ?   Æ'  A   (  ^   H(     §(  N   =)     )  8  )     Ô*    â*  Ô   þ+  6   Ó,     
-     -     1-     D-  6   T-  >   -     Ê-     ã-  >   ë-     *.  H   :.  i   .     í.  Ø   /     Ù3  J   f4  «   ±4  ¶   ]5     6     ²6  6   Ð6     7     7  Ã   7  ¥   ]8  ö   9  A   ú9  /   <:     l:  ½   õ:     ³;  C   3<  j   w<  m   â<  ^   P=  b   ¯=  7   >     J>  p  ã>  (   T@  à   }@  Q  ^A    °B     ÅD  A   NE     E  R   F  ï  pF  »   `H  \  I  X   yJ  Ó   ÒJ  	   ¦K  ×   °K     L     L  ¶  «L  q   bN  Z   ÔN     /O     ÍO     ÞO  8   êO  9   #P  M   ]P     «P  $   ÃP     èP     ñP  	   ýP     Q  V   Q  ¿  rQ     2S  a   ½S     T  v   =T  |   ´T  &   1U     XU  Û   oU  t   KV  Z   ÀV  v   W  9   W     ÌW  P   \X  Ö  ­X  y   Z  l   þZ  r   k[  k   Þ[  ­   J\  U   ø\  ³   N]  û   ^  e   þ^  l   d_     Ñ_     Ô_     ×_     Ú_  1   Ü_  .   `      =`     ^`  9   ~`  ð   ¸`  8  ©a  5  âb  '  d  N   @e     e  p   -f     f     ¥f  F   ¬f  è   óf  Q  Üg     .i  O   ±i  ü   j     þj     k     k     ®k  1   µk  Ð  çk     ¸m     Ëm  s   Øm     Ln     Tn     [n     wn     n  n   o  >   o     Ão     Èo  G   Õo  Á   p  K   ßp  G   +q  V   sq     Êq  V   Qr     ¨r    µr     Ís     Ús  Ô   ût  -   Ðu     þu     v     )v     <v  /   Rv  7   v     ºv     Îv  2   Öv  	   	w  B   w  W   Vw     ®w  ú  »w  |   ¶{  <   3|  ©   p|  µ   }     Ð}     l~  6   ~     ¼~     A  ¬   N     û  Î     H   ^  )   §     Ñ     f  X   ú  ?   S  R     e   æ  W   L  _   ¤  3        8  a  É  0   +  Æ   \  Z  #  	  ~  t     M   ý     K  I   ã  Ã  -  ¯   ñ  a  ¡  M     ¦   Q     ø  ¹        ¿     Æ  «  â  n     d   ý     b     ÿ       8     9   V  M        Þ  $   ö          +     >     N  S   `   (`NIST SP-800-106 "Randomized Hashing for Digital Signatures" <https://csrc.nist.gov/publications/detail/sp/800-106/archive/2009-02-25>`_) (`The Skein Hash Function Family <https://www.schneier.com/wp-content/uploads/2016/02/skein.pdf>`_, p. 21) (use in module hashlib) **BLAKE2b**, optimized for 64-bit platforms and produces digests of any size between 1 and 64 bytes, **BLAKE2s**, optimized for 8- to 32-bit platforms and produces digests of any size between 1 and 32 bytes. **Source code:** :source:`Lib/hashlib.py` *Alexandr Sokolovskiy* *Salted hashing* (or just hashing) with BLAKE2 or any other general-purpose cryptographic hash function, such as SHA-256, is not suitable for hashing passwords.  See `BLAKE2 FAQ <https://www.blake2.net/#qa>`_ for more information. *data*: initial chunk of data to hash, which must be :term:`bytes-like object`.  It can be passed only as positional argument. *depth*: maximal depth of tree (1 to 255, 255 if unlimited, 1 in sequential mode). *digest* must either be a hash algorithm name as a *str*, a hash constructor, or a callable that returns a hash object. *digest_size*: size of output digest in bytes. *dklen* is the length of the derived key. If *dklen* is ``None`` then the digest size of the hash algorithm *hash_name* is used, e.g. 64 for SHA-512. *fanout*: fanout (0 to 255, 0 if unlimited, 1 in sequential mode). *fileobj* must be a file-like object opened for reading in binary mode. It accepts file objects from  builtin :func:`open`, :class:`~io.BytesIO` instances, SocketIO objects from :meth:`socket.socket.makefile`, and similar. The function may bypass Python's I/O and use the file descriptor from :meth:`~io.IOBase.fileno` directly. *fileobj* must be assumed to be in an unknown state after this function returns or raises. It is up to the caller to close *fileobj*. *inner_size*: inner digest size (0 to 64 for BLAKE2b, 0 to 32 for BLAKE2s, 0 in sequential mode). *key*: key for keyed hashing (up to 64 bytes for BLAKE2b, up to 32 bytes for BLAKE2s). *last_node*: boolean indicating whether the processed node is the last one (``False`` for sequential mode). *leaf_size*: maximal byte length of leaf (0 to ``2**32-1``, 0 if unlimited or in sequential mode). *n* is the CPU/Memory cost factor, *r* the block size, *p* parallelization factor and *maxmem* limits memory (OpenSSL 1.1.0 defaults to 32 MiB). *dklen* is the length of the derived key. *node_depth*: node depth (0 to 255, 0 for leaves, or in sequential mode). *node_offset*: node offset (0 to ``2**64-1`` for BLAKE2b, 0 to ``2**48-1`` for BLAKE2s, 0 for the first, leftmost, leaf, or in sequential mode). *password* and *salt* must be :term:`bytes-like objects <bytes-like object>`.  Applications and libraries should limit *password* to a sensible length (e.g. 1024).  *salt* should be about 16 or more bytes from a proper source, e.g. :func:`os.urandom`. *person*: personalization string (up to 16 bytes for BLAKE2b, up to 8 bytes for BLAKE2s). *salt*: salt for randomized hashing (up to 16 bytes for BLAKE2b, up to 8 bytes for BLAKE2s). 16 32 64 8 :func:`blake2b` and :func:`blake2s` were added. :mod:`hashlib` --- Secure hashes and message digests A hash object has the following attributes: A hash object has the following methods: A module to generate message authentication codes using hashes. A set containing the names of the hash algorithms guaranteed to be supported by this module on all platforms.  Note that 'md5' is in this list despite some upstream vendors offering an odd "FIPS compliant" Python build that excludes it. A set containing the names of the hash algorithms that are available in the running Python interpreter.  These names will be recognized when passed to :func:`new`.  :attr:`algorithms_guaranteed` will always be a subset.  The same algorithm may appear multiple times in this set under different names (thanks to OpenSSL). Additional algorithms may also be available if your Python distribution's :mod:`hashlib` was linked against a build of OpenSSL that provides others. Others *are not guaranteed available* on all installations and will only be accessible by name via :func:`new`.  See :data:`algorithms_available`. All hashlib constructors take a keyword-only argument *usedforsecurity* with default value ``True``. A false value allows the use of insecure and blocked hashing algorithms in restricted environments. ``False`` indicates that the hashing algorithm is not used in a security context, e.g. as a non-cryptographic one-way compression function. Another way to encode binary hashes for non-binary environments. As a practical example, a web application can symmetrically sign cookies sent to users and later verify them to make sure they weren't tampered with:: As a shortcut, you can pass the first chunk of data to update directly to the constructor as the positional argument: Attributes BLAKE2 BLAKE2 can be personalized by passing bytes to the *person* argument:: BLAKE2 has configurable size of digests up to 64 bytes for BLAKE2b and up to 32 bytes for BLAKE2s. For example, to replace SHA-1 with BLAKE2b without changing the size of output, we can tell BLAKE2b to produce 20-byte digests: BLAKE2 specification defines constant lengths for salt and personalization parameters, however, for convenience, this implementation accepts byte strings of any size up to the specified length. If the length of the parameter is less than specified, it is padded with zeros, thus, for example, ``b'salt'`` and ``b'salt\x00'`` is the same value. (This is not the case for *key*.) BLAKE2 supports **keyed mode** (a faster and simpler replacement for HMAC_), **salted hashing**, **personalization**, and **tree hashing**. BLAKE2_ is a cryptographic hash function defined in :rfc:`7693` that comes in two flavors: BLAKE2_ was designed by *Jean-Philippe Aumasson*, *Samuel Neves*, *Zooko Wilcox-O'Hearn*, and *Christian Winnerlein* based on SHA-3_ finalist BLAKE_ created by *Jean-Philippe Aumasson*, *Luca Henzen*, *Willi Meier*, and *Raphael C.-W. Phan*. BLAKE2b BLAKE2s By setting *salt* parameter users can introduce randomization to the hash function. Randomized hashing is useful for protecting against collision attacks on the hash function used in digital signatures. Constants Constructor functions also accept the following tree hashing parameters: Constructors for hash algorithms that are always present in this module are :func:`sha1`, :func:`sha224`, :func:`sha256`, :func:`sha384`, :func:`sha512`, :func:`sha3_224`, :func:`sha3_256`, :func:`sha3_384`, :func:`sha3_512`, :func:`shake_128`, :func:`shake_256`, :func:`blake2b`, and :func:`blake2s`. :func:`md5` is normally available as well, though it may be missing or blocked if you are using a rare "FIPS compliant" build of Python. These correspond to :data:`algorithms_guaranteed`. Creating hash objects Credits Even though there's a native keyed hashing mode, BLAKE2 can, of course, be used in HMAC construction with :mod:`hmac` module:: Example: Examples Explanation of tree mode parameters. File hashing For any of the MD5, SHA1, SHA2, or SHA3 algorithms that the linked OpenSSL does not provide we fall back to a verified implementation from the `HACL\* project`_. Function now only available when Python is built with OpenSSL. The slow pure Python implementation has been removed. Function only available when Python is compiled with OpenSSL. Hash Hash algorithms Hash objects from this module follow the API of standard library's :mod:`hashlib` objects. Hash objects with different digest sizes have completely different outputs (shorter hashes are *not* prefixes of longer hashes); BLAKE2b and BLAKE2s produce different outputs even if the output length is the same: Hashlib now uses SHA3 and SHAKE from OpenSSL if it provides it. Here's an example of hashing a minimal tree with two leaf nodes:: If you want the adler32 or crc32 hash functions, they are available in the :mod:`zlib` module. In BLAKE2 the salt is processed as a one-time input to the hash function during initialization, rather than as an input to each compression function. It uses core algorithm from ChaCha_ cipher designed by *Daniel J.  Bernstein*. Key derivation Key derivation and key stretching algorithms are designed for secure password hashing. Naive algorithms such as ``sha1(password)`` are not resistant against brute-force attacks. A good password hashing function must be tunable, slow, and include a `salt <https://en.wikipedia.org/wiki/Salt_%28cryptography%29>`_. Keyed hashing Keyed hashing can be used for authentication as a faster and simpler replacement for `Hash-based message authentication code <https://en.wikipedia.org/wiki/HMAC>`_ (HMAC). BLAKE2 can be securely used in prefix-MAC mode thanks to the indifferentiability property inherited from BLAKE. Like :meth:`digest` except the digest is returned as a string object of double length, containing only hexadecimal digits.  This may be used to exchange the value safely in email or other non-binary environments. Maximum digest size that the hash function can output. Maximum key size. Module :mod:`base64` Module :mod:`hmac` More condensed: NIST Recommendation for Password-Based Key Derivation. New hash objects are created by calling constructor functions: Official BLAKE2 website. OpenSSL PKCS #5: Password-Based Cryptography Specification Version 2.1 Personalization Personalization string length (maximum length accepted by constructors). Personalization together with the keyed mode can also be used to derive different keys from a single one. Randomized hashing Randomized hashing is designed for situations where one party, the message preparer, generates all or part of a message to be signed by a second party, the message signer. If the message preparer is able to find cryptographic hash function collisions (i.e., two messages producing the same hash value), then they might prepare meaningful versions of the message that would produce the same hash value and digital signature, but with different results (e.g., transferring $1,000,000 to an account, rather than $10). Cryptographic hash functions have been designed with collision resistance as a major goal, but the current concentration on attacking cryptographic hash functions may result in a given cryptographic hash function providing less collision resistance than expected. Randomized hashing offers the signer additional protection by reducing the likelihood that a preparer can generate two or more messages that ultimately yield the same hash value during the digital signature generation process --- even if it is practical to find collisions for the hash function. However, the use of randomized hashing may reduce the amount of security provided by a digital signature when all portions of the message are prepared by the signer. Return a copy ("clone") of the hash object.  This can be used to efficiently compute the digests of data sharing a common initial substring. Return a digest object that has been updated with contents of file object. Return the digest of the data passed to the :meth:`update` method so far. This is a bytes object of size *length* which may contain bytes in the whole range from 0 to 255. Return the digest of the data passed to the :meth:`update` method so far. This is a bytes object of size :attr:`digest_size` which may contain bytes in the whole range from 0 to 255. SHA3 (Keccak) and SHAKE constructors :func:`sha3_224`, :func:`sha3_256`, :func:`sha3_384`, :func:`sha3_512`, :func:`shake_128`, :func:`shake_256` were added. SHAKE variable length digests Salt length (maximum length accepted by constructors). See section 2.10 in `BLAKE2 specification <https://www.blake2.net/blake2_20130129.pdf>`_ for comprehensive review of tree hashing. Simple hashing Some algorithms have known hash collision weaknesses (including MD5 and SHA1). Refer to `Attacks on cryptographic hash algorithms`_ and the `hashlib-seealso`_ section at the end of this document. Sometimes it is useful to force hash function to produce different digests for the same input for different purposes. Quoting the authors of the Skein hash function: The :func:`shake_128` and :func:`shake_256` algorithms provide variable length digests with length_in_bits//2 up to 128 or 256 bits of security. As such, their digest methods require a length. Maximum length is not limited by the SHAKE algorithm. The C code was partly rewritten for Python by *Christian Heimes*. The FIPS 202 publication on the SHA-3 Standard. The canonical name of this hash, always lowercase and always suitable as a parameter to :func:`new` to create another hash of this type. The following people have helped with development or contributed their changes to the project and the public domain according to the Creative Commons Public Domain Dedication 1.0 Universal: The following public domain dedication applies for both C hash function implementation, extension code, and this documentation: The following table shows limits for general parameters (in bytes): The following values are provided as constant attributes of the hash objects returned by the constructors: The function provides PKCS#5 password-based key derivation function 2. It uses HMAC as pseudorandom function. The function provides scrypt password-based key derivation function as defined in :rfc:`7914`. The hashlib module provides a helper function for efficient hashing of a file or file-like object. The internal block size of the hash algorithm in bytes. The name attribute has been present in CPython since its inception, but until Python 3.4 was not formally specified, so may not exist on some platforms. The number of *iterations* should be chosen based on the hash algorithm and computing power. As of 2022, hundreds of thousands of iterations of SHA-256 are suggested. For rationale as to why and how to choose what is best for your application, read *Appendix A.2.2* of NIST-SP-800-132_. The answers on the `stackexchange pbkdf2 iterations question`_ explain in detail. The size of the resulting hash in bytes. The stdlib implementation is based on pyblake2_ module. It was written by *Dmitry Chestnykh* based on C implementation written by *Samuel Neves*. The documentation was copied from pyblake2_ and written by *Dmitry Chestnykh*. The string *hash_name* is the desired name of the hash digest algorithm for HMAC, e.g. 'sha1' or 'sha256'. *password* and *salt* are interpreted as buffers of bytes. Applications and libraries should limit *password* to a sensible length (e.g. 1024). *salt* should be about 16 or more bytes from a proper source, e.g. :func:`os.urandom`. There is one constructor method named for each type of :dfn:`hash`.  All return a hash object with the same simple interface. For example: use :func:`sha256` to create a SHA-256 hash object. You can now feed this object with :term:`bytes-like objects <bytes-like object>` (normally :class:`bytes`) using the :meth:`update<hash.update>` method.  At any point you can ask it for the :dfn:`digest` of the concatenation of the data fed to it so far using the :meth:`digest()<hash.digest>` or :meth:`hexdigest()<hash.hexdigest>` methods. These functions return the corresponding hash objects for calculating BLAKE2b or BLAKE2s. They optionally take these general parameters: These sizes are available as module `constants`_ described below. This example shows how to get a (hex-encoded) 128-bit authentication code for message ``b'message data'`` with key ``b'pseudorandom key'``:: This example uses 64-byte internal digests, and returns the 32-byte final digest:: This module implements a common interface to many different secure hash and message digest algorithms.  Included are the FIPS secure hash algorithms SHA1, SHA224, SHA256, SHA384, SHA512, (defined in `the FIPS 180-4 standard`_), the SHA-3 series (defined in `the FIPS 202 standard`_) as well as RSA's MD5 algorithm (defined in internet :rfc:`1321`).  The terms "secure hash" and "message digest" are interchangeable.  Older algorithms were called message digests.  The modern term is secure hash. To allow multithreading, the Python :term:`GIL` is released while computing a hash supplied more than 2047 bytes of data at once in its constructor or :meth:`.update<hash.update>` method. To calculate hash of some data, you should first construct a hash object by calling the appropriate constructor function (:func:`blake2b` or :func:`blake2s`), then update it with the data by calling :meth:`update` on the object, and, finally, get the digest out of the object by calling :meth:`digest` (or :meth:`hexdigest` for hex-encoded string). To obtain the digest of the byte string ``b"Nobody inspects the spammish repetition"``:: To the extent possible under law, the author(s) have dedicated all copyright and related and neighboring rights to this software to the public domain worldwide. This software is distributed without any warranty. Tree mode Update the hash object with the :term:`bytes-like object`. Repeated calls are equivalent to a single call with the concatenation of all the arguments: ``m.update(a); m.update(b)`` is equivalent to ``m.update(a+b)``. Usage Using different digest sizes We recommend that all application designers seriously consider doing this; we have seen many protocols where a hash that is computed in one part of the protocol can be used in an entirely different part because two hash computations were done on similar or related data, and the attacker can force the application to make the hash inputs the same. Personalizing each hash function used in the protocol summarily stops this type of attack. Wikipedia article with information on which algorithms have known issues and what that means regarding their use. You can call :meth:`hash.update` as many times as you need to iteratively update the hash: You should have received a copy of the CC0 Public Domain Dedication along with this software. If not, see https://creativecommons.org/publicdomain/zero/1.0/. blake2b, blake2s digest_size https://csrc.nist.gov/publications/detail/fips/202/final https://en.wikipedia.org/wiki/Cryptographic_hash_function https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-132.pdf https://www.blake2.net/ https://www.ietf.org/rfc/rfc8018.txt len(key) len(person) len(salt) message digest, MD5 secure hash algorithm, SHA1, SHA2, SHA224, SHA256, SHA384, SHA512, SHA3, Shake, Blake2 Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 01:07+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 (`NIST SP-800-106 "Randomized Hashing for Digital Signatures" <https://csrc.nist.gov/publications/detail/sp/800-106/archive/2009-02-25>`_) (`Skein åå¸å½æ°æ <https://www.schneier.com/wp-content/uploads/2016/02/skein.pdf>`_, p. 21) (å¨ hashlib æ¨¡åä¸­ä½¿ç¨) **BLAKE2b**ï¼éå¯¹ 64 ä½å¹³å°è¿è¡ä¼åï¼å¹¶ä¼çæé¿åº¦ä»äº 1 å 64 å­èä¹é´ä»»æå¤§å°çæè¦ã **BLAKE2s**ï¼éå¯¹ 8 è³ 32 ä½å¹³å°è¿è¡ä¼åï¼å¹¶ä¼çæé¿åº¦ä»äº 1 å 32 å­èä¹é´ä»»æå¤§å°çæè¦ã **æºç ï¼** :source:`Lib/hashlib.py` *Alexandr Sokolovskiy* ä½¿ç¨ BLAKE2 æä»»ä½å¶ä»éç¨å å¯åå¸å½æ°ï¼ä¾å¦ SHA-256 è¿è¡ *å çåå¸* (æçº¯åå¸) å¹¶ä¸éç¨äºå¯¹å¯ç çåå¸ã è¯·åé `BLAKE2 FAQ <https://www.blake2.net/#qa>`_ äºè§£æ´å¤ä¿¡æ¯ã *data*: è¦åå¸çåå§æ°æ®åï¼å®å¿é¡»ä¸º :term:`bytes-like object`ã å®åªè½ä½ä¸ºä½ç½®åæ°ä¼ å¥ã *depth*: æ çæå¤§æ·±åº¦ (1 è³ 255ï¼å¦æ éå¶åä¸º 255ï¼è¿ç»­æ¨¡å¼ä¸ä¸º 1)ã *digest* å¿é¡»æ¯ä¸ä¸ª *str* å½¢å¼çåå¸ç®æ³åç§°ãåå¸æé å¨æè¿ååå¸å¯¹è±¡çå¯è°ç¨å¯¹è±¡ã *digest_size*: ä»¥å­èæ°è¡¨ç¤ºçè¾åºæè¦å¤§å°ã *dklen* ä¸ºæ´¾çå¯é¥çé¿åº¦ã å¦æ *dklen* ä¸º ``None`` åä¼ä½¿ç¨åå¸ç®æ³ *hash_name* çæè¦å¤§å°ï¼ä¾å¦ SHA-512 ä¸º 64ã *fanout*: æåºå¼ (0 è³ 255ï¼å¦æ éå¶å³ä¸º 0ï¼è¿ç»­æ¨¡å¼ä¸ä¸º 1)ã *fileobj* å¿é¡»æ¯ä¸ä¸ªä»¥äºè¿å¶æ¨¡å¼æå¼ç¨äºè¯»åçæä»¶ç±»å¯¹è±¡ã å®æ¥åæ¥èªåç½® :func:`open`, :class:`~io.BytesIO` å®ä¾, :meth:`socket.socket.makefile` åå»ºç SocketIO åå¶ä»ç±»ä¼¼çæä»¶å¯¹è±¡ã æ­¤å½æ°ä¹å¯è½ç»è¿ Python çå¹¶ç´æ¥ä½¿ç¨æ¥èª :meth:`~io.IOBase.fileno` çæä»¶æè¿°ç¬¦ã å¨æ­¤å½æ°è¿åæå¼åå¼å¸¸ä¹åå¿é¡»åå® *fileobj* å·²å¤äºæªç¥ç¶æã åºå½ç±è°ç¨æ¹æ¥è´è´£å³é­ *fileobj*ã *inner_size*: åé¨æè¦å¤§å° (å¯¹äº BLAKE2b ä¸º 0 è³ 64ï¼å¯¹äº BLAKE2s ä¸º 0 è³ 32ï¼è¿ç»­æ¨¡å¼ä¸åä¸º 0)ã *key*: ç¨äºå¯é¥åå¸çå¯é¥ï¼å¯¹äº BLAKE2b æé¿ 64 å­èï¼å¯¹äº BLAKE2s æé¿ 32 å­èï¼ã *last_node*: ä¸ä¸ªæææå¤ççèç¹æ¯å¦ä¸ºæåä¸ä¸ª (å¨è¿ç»­æ¨¡å¼ä¸ä¸º ``False``) çå¸å°å¼ã *leaf_size*: å¶å­çæå¤§å­èé¿åº¦ (0 è³ ``2**32-1``ï¼å¦æ éå¶æå¨è¿ç»­æ¨¡å¼ä¸åä¸º 0)ã *n* ä¸º CPU/åå­å¼éå å­ï¼*r* ä¸ºåå¤§å°ï¼*p* ä¸ºå¹¶è¡åå å­ï¼*maxmem* ä¸ºåå­éå¶ (OpenSSL 1.1.0 é»è®¤ä¸º 32 MiB)ã *dklen* ä¸ºæ´¾çå¯é¥çé¿åº¦ã *node_depth*: èç¹æ·±åº¦ (0 è³ 255ï¼å¯¹äºå¶å­æå¨è¿ç»­æ¨¡å¼ä¸åä¸º 0)ã *node_offset*: èç¹çåç§»é (å¯¹äº BLAKE2b ä¸º 0 è³ ``2**64-1``ï¼å¯¹äº BLAKE2s ä¸º 0 è³ ``2**48-1``ï¼å¯¹äºæå¤è¾¹çç¬¬ä¸ä¸ªå¶å­æå¨è¿ç»­æ¨¡å¼ä¸åä¸º 0)ã *password* å *salt* å¿é¡»ä¸º :term:`å­èç±»å¯¹è±¡ <bytes-like object>`ã åºç¨ååºåºå½å° *password* éå¶å¨åçé¿åº¦ (ä¾å¦ 1024)ã *salt* åºå½ä¸ºéå½æ¥æºä¾å¦ :func:`os.urandom` çå¤§çº¦ 16 ä¸ªææ´å¤çå­èä¸²æ°æ®ã *person*: ä¸ªæ§åå­ç¬¦ä¸²ï¼å¯¹äº BLAKE2b æé¿ 16 å­èï¼å¯¹äº BLAKE2s æé¿ 8 å­èï¼ã *salt*: ç¨äºéæºåå¸ççå¼ï¼å¯¹äº BLAKE2b æé¿ 16 å­èï¼å¯¹äº BLAKE2s æé¿ 8 å­èï¼ã 16 32 64 8 æ·»å äº :func:`blake2b` å :func:`blake2s` ã :mod:`hashlib` --- å®å¨åå¸ä¸æ¶æ¯æè¦ hash å¯¹è±¡å·æä»¥ä¸å±æ§ï¼ åå¸å¯¹è±¡å·æä¸åæ¹æ³: ä½¿ç¨åå¸è¿ç®æ¥çææ¶æ¯éªè¯ä»£ç çæ¨¡åã ä¸ä¸ªéåï¼å¶ä¸­åå«æ­¤æ¨¡åå¨ææå¹³å°ä¸é½ä¿è¯æ¯æçåå¸ç®æ³çåç§°ã è¯·æ³¨æ 'md5' ä¹å¨æ­¤æ¸åä¸­ï¼è½ç¶æäºä¸æ¸¸ååæä¾äºä¸ä¸ªæªå¼çæé¤äºæ­¤ç®æ³ç "FIPS å¼å®¹" Python ç¼è¯çæ¬ã ä¸ä¸ªéåï¼å¶ä¸­åå«å¨æè¿è¡ç Python è§£éå¨ä¸å¯ç¨çåå¸ç®æ³çåç§°ã å°è¿äºåç§°ä¼ ç» :func:`new` æ¶å°å¯è¢«è¯å«ã :attr:`algorithms_guaranteed` å°æ»æ¯å®çä¸ä¸ªå­éã åæ ·çç®æ³å¨æ­¤éåä¸­å¯è½ä»¥ä¸åçåç§°åºç°å¤æ¬¡ï¼è¿æ¯ OpenSSL çåå ï¼ã å¦æä½ ç Python ååçç :mod:`hashlib` æ¯åºäºæä¾äºå¶ä»ç®æ³ç OpenSSL ç¼è¯çä¸é¾æ¥çé£ä¹è¿å¯è½å­å¨ä¸äºéå çç®æ³ã å¶ä»ç®æ³å¨ææå®è£çä¸ *ä¸ä¿è¯å¨é½å¯ç¨* å¹¶ä¸ä»å¯éè¿ :func:`new` ä½¿ç¨åç§°æ¥è®¿é®ã åè§ :data:`algorithms_available`ã ææ hashlib çæé å¨é½æ¥åä»éå³é®å­åæ° *usedforsecurity* ä¸å¶é»è®¤å¼ä¸º ``True``ã è®¾ä¸ºåå¼å³åè®¸å¨åéçç¯å¢ä¸­ä½¿ç¨ä¸å®å¨ä¸é»å¡çåå¸ç®æ³ã ``False`` è¡¨ç¤ºæ­¤åå¸ç®æ³ä¸å¯ç¨äºå®å¨åºæ¯ï¼ä¾å¦ç¨ä½éå å¯çåååç¼©å½æ°ã éå¯¹éäºè¿å¶ç¯å¢å¯¹äºè¿å¶åå¸å¼è¿è¡ç¼è¾çå¦ä¸ç§æ¹å¼ã ä½ä¸ºå®éçä¾å­ï¼ä¸ä¸ª Web åºç¨å¯ä¸ºåéç»ç¨æ·ç cookies è¿è¡å¯¹ç§°ç­¾åï¼å¹¶å¨ä¹åå¯¹å¶è¿è¡éªè¯ä»¥ç¡®ä¿å®ä»¬æ²¡æè¢«ç¯¡æ¹:: ä½ä¸ºå¿«æ·æ¹å¼ï¼ä½ å¯ä»¥ç´æ¥ä»¥ä½ç½®åæ°çå½¢å¼åæé å¨ä¼ å¥ç¬¬ä¸ä¸ªæ°æ®åæ¥ç´æ¥æ´æ°: å±æ§ BLAKE2 BLAKE2 å¯éè¿å *person* åæ°ä¼ å¥å­èä¸²æ¥è¿è¡ä¸ªæ§å:: BLAKE2 å·æå¯éç½®çæè¦å¤§å°ï¼å¯¹äº BLAKE2b æå¤ 64 å­èï¼å¯¹äº BLAKE2s æå¤ 32 å­èã ä¾å¦ï¼è¦ä½¿ç¨ BLAKE2b æ¥æ¿ä»£ SHA-1 èä¸æ¹åè¾åºå¤§å°ï¼æä»¬å¯ä»¥è®© BLAKE2b äº§ç 20 ä¸ªå­èçæè¦: BLAKE2 è§æ ¼æè¿°ä¸ºçå¼åä¸ªæ§åå½¢åå®ä¹äºåºå®çé¿åº¦ï¼ä½æ¯ä¸ºäºæ¹ä¾¿èµ·è§ï¼æ­¤å®ç°æ¥åæå®å¨é¿åº¦ä»¥åçä»»æå¤§å°çå­èä¸²ã å¦æå½¢åé¿åº¦å°äºæå®å¼ï¼å®å°ä»¥é¶å¼è¿è¡å¡«åï¼å æ­¤ä¸¾ä¾æ¥è¯´ï¼``b'salt'`` å ``b'salt\x00'`` ä¸ºç¸åçå¼ (*key* çæåµåå¹¶éå¦æ­¤ã) BLAKE2 æ¯æ **keyed mode** (HMAC_ çæ´å¿«éæ´ç®åçæ¿ä»£), **salted hashing**, **personalization** å **tree hashing**. BLAKE2_ æ¯å¨ :rfc:`7693` ä¸­å®ä¹çå å¯åå¸å½æ°ï¼å®æä¸¤ç§å½¢å¼: BLAKE2_ æ¯ç± *Jean-Philippe Aumasson*, *Samuel Neves*, *Zooko Wilcox-O'Hearn* å *Christian Winnerlein* åºäº *Jean-Philippe Aumasson*, *Luca Henzen*, *Willi Meier* å *Raphael C.-W. Phan* æåé ç SHA-3_ å¥å´æ¹æ¡ BLAKE_ è¿è¡è®¾è®¡çã BLAKE2b BLAKE2s ç¨æ·å¯éè¿è®¾ç½® *salt* å½¢åæ¥ä¸ºåå¸å½æ°å¼å¥éæºåã éæºåå¸éç¨äºé²æ­¢å¯¹æ°å­ç­¾åä¸­ä½¿ç¨çåå¸å½æ°è¿è¡ç¢°ææ»å»ã å¸¸é æé å¨å½æ°è¿æ¥åä¸åæ å½¢åå¸å½¢å: æ¬æ¨¡åä¸­æ»æ¯å­å¨çåå¸ç®æ³æé å¨æ :func:`sha1`, :func:`sha224`, :func:`sha256`, :func:`sha384`, :func:`sha512`, :func:`sha3_224`, :func:`sha3_256`, :func:`sha3_384`, :func:`sha3_512`, :func:`shake_128`, :func:`shake_256`, :func:`blake2b` å :func:`blake2s`ã :func:`md5` éå¸¸ä¹æ¯å¯ç¨çï¼ä½å¨ä½ ä½¿ç¨ç¨æç "FIPS å¼å®¹" Python ç¼è¯çæ¶å®å¯è½ä¼ç¼ºå¤±æè¢«å±è½ã è¿äºæé å¨å¯¹åºäº :data:`algorithms_guaranteed`ã åå»ºåå¸å¯¹è±¡ å¼åäººå å³ä½¿å­å¨åççå¯é¥åå¸æ¨¡å¼ï¼BLAKE2 ä¹åæ ·å¯å¨ :mod:`hmac` æ¨¡åç HMAC æé è¿ç¨ä¸­ä½¿ç¨:: ç¤ºä¾: ä¾å­ æ æ¨¡å¼å½¢åçè¯´æã æä»¶åå¸ å¨æé¾æ¥ç OpenSSL æªæä¾ MD5, SHA1, SHA2 æ SHA3 ç®æ³çæåµä¸æä»¬å°åéè³æ¥èª `HACL\* project`_ çå·²éªè¯çå®ç°ã ç°å¨æ­¤å½æ°åªæå¨ Python éå¸¦ OpenSSL æå»ºæ¶æå¯ç¨ã æ¢éççº¯ Python å®ç°å·²è¢«ç§»é¤ã æ­¤å½æ°åªæå¨ Python éå¸¦ OpenSSL ç¼è¯æ¶æå¯ç¨ã Hash åå¸ç®æ³ æ­¤æ¨¡åçåå¸å¯¹è±¡éµå¾ªæ ååº :mod:`hashlib` å¯¹è±¡ç APIã ä¸åæè¦å¤§å°çåå¸å¯¹è±¡å·æå®å¨ä¸åçè¾åºï¼è¾ç­åå¸å¼ *å¹¶é* è¾é¿åå¸å¼çåç¼ï¼ï¼å³ä½¿è¾åºé¿åº¦ç¸åï¼BLAKE2b å BLAKE2s ä¹ä¼äº§çä¸åçè¾åº: ç°å¨ hashlib ä¼å¨ OpenSSL ææä¾çæåµä¸ä½¿ç¨ SHA3 å SHAKEã ä»¥ä¸æ¯å¯¹åå«ä¸¤ä¸ªå¶å­èç¹çæå°æ è¿è¡åå¸çä¾å­:: å¦æä½ æ³æ¾å° adler32 æ crc32 åå¸å½æ°ï¼å®ä»¬å¨ :mod:`zlib` æ¨¡åä¸­ã å¨ BLAKE2 ä¸­ï¼çå¼ä¼å¨åå§åæé´ä½ä¸ºå¯¹åå¸å½æ°çä¸æ¬¡æ§è¾å¥èä¸æ¯å¯¹æ¯ä¸ªåç¼©å½æ°çè¾å¥æ¥å¤çã å®ä½¿ç¨çæ ¸å¿ç®æ³æ¥èªç± *Daniel J. Bernstein* æè®¾è®¡ç ChaCha_ å å¯ã å¯é¥æ´¾ç å¯é¥æ´¾çåå¯é¥å»¶å±ç®æ³è¢«è®¾è®¡ç¨äºå®å¨å¯ç åå¸ã ``sha1(password)`` è¿æ ·çç®åç®æ³æ æ³é²å¾¡æ´åæ»å»ã å¥½çå¯ç åå¸å½æ°å¿é¡»å¯ä»¥å¾®è°ãæ¾æ¢æ­¥è°ï¼å¹¶ä¸åå« `å ç <https://en.wikipedia.org/wiki/Salt_%28cryptography%29>`_ã å¯é¥åå¸ å¸¦å¯é¥çåå¸è¿ç®å¯è¢«ç¨äºèº«ä»½éªè¯ï¼ä½ä¸º `åºäºåå¸çæ¶æ¯éªè¯ä»£ç  <https://en.wikipedia.org/wiki/HMAC>`_ (HMAC) çä¸ç§æ´å¿«éæ´ç®åçæ¿ä»£ã BLAKE2 å¯è¢«å®å¨å°ç¨äºåç¼ MAC æ¨¡å¼ï¼è¿æ¯ç±äºå®ä» BLAKE ç»§æ¿èæ¥çä¸å¯åºåç¹æ§ã ç±»ä¼¼äº :meth:`digest` ä½æè¦ä¼ä»¥ä¸¤åé¿åº¦å­ç¬¦ä¸²å¯¹è±¡çå½¢å¼è¿åï¼å¶ä¸­ä»åå«åå­è¿å¶æ°ç ã è¿å¯ä»¥è¢«ç¨äºå¨çµå­é®ä»¶æå¶ä»éäºè¿å¶ç¯å¢ä¸­å®å¨å°äº¤æ¢æ°æ®å¼ã åå¸å½æ°å¯è¾åºçæå¤§æè¦é¿åº¦ã æå¤§å¯é¥é¿åº¦ã æ¨¡å :mod:`base64` æ¨¡å :mod:`hmac` æ´ç®è¦çåæ³ï¼ NIST å¯¹åºäºå¯ç çå¯é¥æ´¾ççå»ºè®®ã æ°åå¸å¯¹è±¡å¯éè¿è°ç¨æé å¨å½æ°æ¥åå»º: BLAKE2 å®æ¹ç½ç« OpenSSL PKCS #5: åºäºå¯ç çå å¯è§èæè¿° 2.1 ç ä¸ªæ§å ä¸ªæ§åå­ç¬¦ä¸²é¿åº¦ï¼æé å¨ææ¥åçæå¤§é¿åº¦ï¼ã ä¸ªæ§åéåå¯é¥æ¨¡å¼ä¹å¯è¢«ç¨æ¥ä»åä¸ªå¯é¥æ´¾çåºå¤ä¸ªä¸åå¯é¥ã éæºåå¸ éæºåå¸è¢«è®¾è®¡ç¨æ¥å¤çå½ä¸æ¹ï¼æ¶æ¯åå¤èï¼è¦çæç±å¦ä¸æ¹ï¼æ¶æ¯ç­¾åèï¼è¿è¡ç­¾åçå¨é¨æé¨åæ¶æ¯çæåµã å¦ææ¶æ¯åå¤èè½å¤æ¾å°å å¯åå¸å½æ°çç¢°æç°è±¡ï¼å³ä¸¤æ¡æ¶æ¯äº§çç¸åçåå¸å¼ï¼ï¼åä»ä»¬å°±å¯ä»¥åå¤å°äº§çç¸ååå¸å¼åæ°å­ç­¾åä½å´å·æä¸åç»æçææä¹çæ¶æ¯çæ¬ï¼ä¾å¦åæä¸ªè´¦æ·è½¬å¥ $1,000,000 èä¸æ¯ $10ï¼ã å å¯åå¸å½æ°çè®¾è®¡é½æ¯ä»¥é²ç¢°ææ§è½ä¸ºå¶ä¸»è¦ç®æ ä¹ä¸çï¼ä½æ¯å½åéå¯¹å å¯åå¸å½æ°çéä¸­æ»å»å¯è½å¯¼è´ç¹å®å å¯åå¸å½æ°ææä¾çé²ç¢°ææ§è½ä½äºé¢æã éæºåå¸ä¸ºç­¾åèæä¾äºé¢å¤çä¿æ¤ï¼å¯ä»¥éä½åå¤èå¨æ°å­ç­¾åçæè¿ç¨ä¸­ä½¿å¾ä¸¤æ¡ææ´å¤æ¡æ¶æ¯æç»äº§çç¸ååå¸å¼çå¯è½æ§ --- å³ä½¿ä¸ºç¹å®åå¸å½æ°æ¾å°ç¢°æç°è±¡æ¯å¯è¡çã ä½æ¯ï¼å½æ¶æ¯çææé¨ååç±ç­¾åèåå¤æ¶ï¼ä½¿ç¨éæºåå¸å¯è½éä½æ°å­ç­¾åææä¾çå®å¨æ§ã è¿ååå¸å¯¹è±¡çå¯æ¬ï¼âåéâï¼ã è¿å¯è¢«ç¨æ¥é«æå°è®¡ç®å±äº«ç¸ååå§å­ä¸²çæ°æ®çæè¦ã è¿åä¸ä¸ªæ ¹æ®æä»¶å¯¹è±¡è¿è¡æ´æ°çæè¦å¯¹è±¡ã è¿åå½åå·²ä¼ ç» :meth:`update` æ¹æ³çæ°æ®æè¦ã è¿æ¯ä¸ä¸ªå¤§å°ä¸º *length* çå­èä¸²å¯¹è±¡ï¼å­èä¸²ä¸­å¯åå« 0 to 255 çå®æ´åå¼èå´ã è¿åå½åå·²ä¼ ç» :meth:`update` æ¹æ³çæ°æ®æè¦ã è¿æ¯ä¸ä¸ªå¤§å°ä¸º :attr:`digest_size` çå­èä¸²å¯¹è±¡ï¼å­èä¸²ä¸­å¯åå« 0 è³ 255 çå®æ´åå¼èå´ã å¢å äº SHA3 (Keccak) å SHAKE æé å¨ :func:`sha3_224`, :func:`sha3_256`, :func:`sha3_384`, :func:`sha3_512`, :func:`shake_128`, :func:`shake_256`ã SHAKE å¯åé¿åº¦æè¦ çå¼é¿åº¦ï¼æé å¨ææ¥åçæå¤§é¿åº¦ï¼ã è¯·åé `BLAKE2 è§æ ¼æè¿° <https://www.blake2.net/blake2_20130129.pdf>`_ ç¬¬ 2.10 èè·åæå³æ å½¢åå¸çå®æ´ä»ç»ã ç®ååå¸ ä¸äºç®æ³å·æå·²ç¥çç¢°æå¼±ç¹ï¼åæ¬ MD5 å SHA1ï¼ã è¯·åéæ¬ææ¡£æ«å°¾ç `Attacks on cryptographic hash algorithms`_ å `hashlib-seealso`_ å°èã åºäºä¸åçç®çå¼ºå¶è®©åå¸å½æ°ä¸ºç¸åçè¾å¥çæä¸åçæè¦ææ¶ä¹æ¯æç¨çã æ­£å¦ Skein åå¸å½æ°çä½èæè¨: :func:`shake_128` å :func:`shake_256` ç®æ³æä¾å®å¨ç length_in_bits//2 è³ 128 æ 256 ä½å¯åé¿åº¦æè¦ã ä¸ºæ­¤ï¼å®ä»¬çæè¦éæå®ä¸ä¸ªé¿åº¦ã SHAKE ç®æ³ä¸éå¶æå¤§é¿åº¦ã C ä»£ç ç± *Christian Heimes* éå¯¹ Python è¿è¡äºé¨åçéåã å³äº SHA-3 æ åç FIPS 202 å¬åã æ­¤åå¸å¯¹è±¡çè§èåç§°ï¼æ»æ¯ä¸ºå°åå½¢å¼å¹¶ä¸æ»æ¯å¯ä»¥ä½ä¸º :func:`new` çå½¢åç¨æ¥åå»ºå¦ä¸ä¸ªæ­¤ç±»åçåå¸å¯¹è±¡ã æ ¹æ®åæåäº«å¬å±é¢åè´¡ç® 1.0 éç¨è§èï¼ä¸åäººå£«ä¸ºæ­¤é¡¹ç®çå¼åæä¾äºå¸®å©æå¯¹å¬å±é¢åçä¿®æ¹ä½åºäºè´¡ç®: ä»¥ä¸å¬å±é¢åè´¡ç®åæ¶éç¨äº C åå¸å½æ°å®ç°ãæ©å±ä»£ç åæ¬ææ¡£: ä¸è¡¨æ¾ç¤ºäºå¸¸è§åæ°çéå¶ï¼ä»¥å­èä¸ºåä½ï¼ï¼ ä¸åå¼ä¼ä»¥æé å¨æè¿åçåå¸å¯¹è±¡çå¸¸éå±æ§çå½¢å¼è¢«æä¾: æ­¤å½æ°æä¾ PKCS#5 åºäºå¯ç çå¯é¥æ´¾çå½æ° 2ã å®ä½¿ç¨ HMAC ä½ä¸ºä¼ªéæºå½æ°ã æ­¤å½æ°æä¾åºäºå¯ç å å¯çå¯é¥æ´¾çå½æ°ï¼å¶å®ä¹åè§ :rfc:`7914`ã hashlib æ¨¡åæä¾äºä¸ä¸ªè¾å©å½æ°ç¨äºæä»¶ææä»¶ç±»å¯¹è±¡çé«æåå¸æä½ã ä»¥å­èè¡¨ç¤ºçåå¸ç®æ³çåé¨åå¤§å°ã è¯¥å±æ§åç§°èªè¢«å¼å¥èµ·å³å­å¨äº CPython ä¸­ï¼ä½å¨ Python 3.4 ä¹åå¹¶æªæ­£å¼ææï¼å æ­¤å¯è½ä¸å­å¨äºæäºå¹³å°ä¸ã *iterations* çæ°å¼åºå½åºäºåå¸ç®æ³åæºå¨ç®åæ¥éæ©ã å¨ 2022 å¹´ï¼å»ºè®®éæ©è¿è¡æ°ä¸æ¬¡ç SHA-256 è¿­ä»£ã å¯¹äºä¸ºä½ä»¥åå¦ä½éæ©æéåä½ çåºç¨ç¨åºçè¿­ä»£æ¬¡æ°ççç±ï¼è¯·åé NIST-SP-800-132_ ç *Appendix A.2.2*ã å¶ä¸­ `stackexchange pbkdf2 è¿­ä»£é®é¢`_ çè§£ç­æä¾çè¯¦ç»çè¯´æã ä»¥å­èè¡¨ç¤ºçç»æåå¸å¯¹è±¡çå¤§å°ã stdlib å®ç°æ¯åºäº pyblake2_ æ¨¡åçã å®ç± *Dmitry Chestnykh* å¨ *Samuel Neves* æç¼åç C å®ç°çåºç¡ä¸ç¼åã æ­¤ææ¡£æ·è´èª pyblake2_ å¹¶ç± *Dmitry Chestnykh* æ°åã å­ç¬¦ä¸² *hash_name* æ¯è¦æ±ç¨äº HMAC çåå¸æè¦ç®æ³çåç§°ï¼ä¾å¦ 'sha1' æ 'sha256'ã *password* å *salt* ä¼ä»¥å­èä¸²ç¼å²åºçå½¢å¼è¢«è§£æã åºç¨ååºåºå½å° *password* éå¶å¨åçé¿åº¦ (ä¾å¦ 1024)ã *salt* åºå½ä¸ºéå½æ¥æºä¾å¦ :func:`os.urandom` çå¤§çº¦ 16 ä¸ªææ´å¤çå­èä¸²æ°æ®ã æ¯ç§ç±»åç :dfn:`hash` é½æä¸ä¸ªæé å¨æ¹æ³ã å®ä»¬é½è¿åä¸ä¸ªå·æç¸åç®åæ¥å£çåå¸å¯¹è±¡ã ä¾å¦ï¼ä½¿ç¨ :func:`sha256` åå»ºä¸ä¸ª SHA-256 åå¸å¯¹è±¡ã ä½ å¯ä»¥ä½¿ç¨ :meth:`update<hash.update>` æ¹æ³åè¿ä¸ªå¯¹è±¡è¾å¥ :term:`å­èç±»å¯¹è±¡ <bytes-like object>` (éå¸¸æ¯ :class:`bytes`)ã å¨ä»»ä½æ¶åä½ é½å¯ä»¥ä½¿ç¨ :meth:`digest()<hash.digest>` æ :meth:`hexdigest()<hash.hexdigest>` æ¹æ³è·å¾å°ç®åä¸ºæ­¢è¾å¥è¿ä¸ªå¯¹è±¡çæ¼æ¥æ°æ®ç :dfn:`digest`ã è¿äºå½æ°è¿åç¨äºè®¡ç® BLAKE2b æ BLAKE2s çç¸åºçåå¸å¯¹è±¡ã å®ä»¬æ¥åä¸åå¯ééç¨å½¢å: å¦ä¸é¢çæ¨¡å `constants`_ ææè¿°ï¼è¿äºæ¯å¯ç¨çå¤§å°åå¼ã è¿ä¸ªä¾å­æ¼ç¤ºäºå¦ä½ä½¿ç¨å¯é¥ ``b'pseudorandom key'`` æ¥ä¸º ``b'message data'`` è·åä¸ä¸ªï¼åå­è¿å¶ç¼ç çï¼128 ä½éªè¯ä»£ç :: è¿ä¸ªä¾å­ä½¿ç¨ 64 å­èåé¨æè¦ï¼è¿å 32 å­èæç»æè¦:: æ¬æ¨¡åéå¯¹è®¸å¤ä¸åçå®å¨åå¸åæ¶æ¯æè¦ç®æ³å®ç°äºä¸ä¸ªéç¨æ¥å£ã åæ¬äº FIPS å®å¨åå¸ç®æ³ SHA1, SHA224, SHA256, SHA384, SHA512, (å®ä¹è§ `the FIPS 180-4 standard`_), SHA-3 ç³»å (å®ä¹è§ `the FIPS 202 standard`_) ä»¥å RSA ç MD5 ç®æ³ (å®ä¹è§äºèç½ :rfc:`1321`)ã æ¯è¯­ "å®å¨åå¸" å "æ¶æ¯æè¦" æ¯åä¹çã è¾æ§çç®æ³è¢«ç§°ä¸ºæ¶æ¯æè¦ã ç°ä»£çæ¯è¯­åæ¯å®å¨åå¸ã ä¸ºäºåè®¸å¤çº¿ç¨ï¼å½å¨å¶æé å¨æ :meth:`.update<hash.update>` æ¹æ³ä¸­è®¡ç®ä¸æ¬¡æ§æä¾è¶è¿ 2047 å­èæ°æ®çåå¸æ¶å°ä¼éæ¾ Python :term:`GIL`ã è¦è®¡ç®æä¸ªæ°æ®çåå¸å¼ï¼ä½ åºè¯¥é¦åéè¿è°ç¨éå½çæé å¨å½æ° (:func:`blake2b` æ :func:`blake2s`) æ¥æé ä¸ä¸ªåå¸å¯¹è±¡ï¼ç¶åéè¿å¨è¯¥å¯¹è±¡ä¸è°ç¨ :meth:`update` æ¥æ´æ°ç®æ æ°æ®ï¼æåéè¿è°ç¨ :meth:`digest` (æéå¯¹åå­è¿å¶ç¼ç å­ç¬¦ä¸²ç :meth:`hexdigest`) æ¥è·åè¯¥å¯¹è±¡çæè¦ã è¦è·åå­èä¸² ``b"Nobody inspects the spammish repetition"`` çæè¦:: å¨æ³å¾è®¸å¯çèå´åï¼ä½èå·²å°æ­¤è½¯ä»¶çå¨é¨çæä»¥åå³èåé»æ¥æå©è´¡ç®å°å¨çå¬å±é¢åã æ­¤è½¯ä»¶çåå¸ä¸éå¸¦ä»»ä½æä¿ã æ å½¢æ¨¡å¼ ç¨ :term:`bytes-like object` æ¥æ´æ°åå¸å¯¹è±¡ã éå¤è°ç¨ç¸å½äºåæ¬¡è°ç¨å¹¶ä¼ å¥ææåæ°çæ¼æ¥ç»æ: ``m.update(a); m.update(b)`` ç­ä»·äº ``m.update(a+b)``ã ç¨æ³ ä½¿ç¨ä¸åçæè¦å¤§å° æä»¬å»ºè®®ææåºç¨è®¾è®¡èæéèèè¿ç§åæ³ï¼æä»¬å·²çå°æè®¸å¤åè®®å¨åè®®çæä¸é¨åä¸­è®¡ç®åºæ¥çåå¸å¼å¨å¦ä¸ä¸ªå®å¨ä¸åçé¨åä¸­ä¹å¯ä»¥è¢«ä½¿ç¨ï¼å ä¸ºä¸¤æ¬¡åå¸è®¡ç®æ¯éå¯¹ç±»ä¼¼æç¸å³çæ°æ®è¿è¡çï¼è¿æ ·æ»å»èå¯ä»¥å¼ºå¶åºç¨ä¸ºç¸åçè¾å¥çæåå¸å¼ã ä¸ªæ§ååè®®ä¸­æä½¿ç¨çæ¯ä¸ªåå¸å½æ°å°ææå°é»æ­¢è¿ç§ç±»åçæ»å»ã åå«å³äºåªäºç®æ³å­å¨å·²ç¥é®é¢ä»¥åå¯¹å¶ä½¿ç¨æé æçå½±åçä¿¡æ¯ç Wikipedia æç« ã ä½ å¯ä»¥å¤æ¬¡è°ç¨ :meth:`hash.update` è³ä½ ææ³è¦çä»»ææ¬¡æ°ä»¥è¿­ä»£å°æ´æ°åå¸å¼: ä½ åºè¯¥å·²æ¶å°æ­¤è½¯ä»¶éå¸¦ç CC0 å¬å±é¢åä¸å±è¯ä¹¦çå¯æ¬ã å¦ææ²¡æï¼è¯·åé https://creativecommons.org/publicdomain/zero/1.0/ã blake2b, blake2s ç®æ é¿åº¦ https://csrc.nist.gov/publications/detail/fips/202/final https://en.wikipedia.org/wiki/Cryptographic_hash_function https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-132.pdf https://www.blake2.net/ https://www.ietf.org/rfc/rfc8018.txt é¿åº¦ï¼é®ï¼ é¿åº¦ï¼ä¸ªäººï¼ é¿åº¦ï¼çï¼ æ¶æ¯æè¦, MD5 å®å¨åå¸ç®æ³, SHA1, SHA2, SHA224, SHA256, SHA384, SHA512, SHA3, Shake, Blake2 