Þ    c      4              L  ^   M  â   ¬  Ô       d     é	     ï	     õ	     û	      
     
     
     2
     G
     \
     q
     
     
     ¬
  .   ½
  '   ì
  $     =   9  A   w  §   ¹     a  ?   v  x   ¶  g   /  6     3   Î  ý     ð      %   ñ       ¨   #     Ì  '  Ý       Å        Ò  ;   ç  ß   #      z    S     q   æ  y   X  u   Ò     H  ì   M  s   :  6   ®  ø   å      Þ  =     O   ½  j     4   x    ­  e   ¿  v  %  þ      H  !  L   ä"  L   1#     ~#  .   #  û   Á#  _   ½$  @   %  k   ^%  d   Ê%  c  /&  0   '     Ä'  3   Z(  a   (     ð(  i   ~)  ¤  è)  ã   +  µ   q,  "  '-  !   J.  $   l.     .  Ú   §.  3   /  X  ¶/  È  1  Q   Ø2  I   *3     t3  I   3  #   Õ3     ù3     4  ,   4  ²  L4  S   ÿ5  ë   S6  Ì   ?7    8     9     9     9     ¢9     §9     ­9     Á9     Ù9     î9     :     :     ):     >:     S:  #   d:  !   :     ª:  6   È:  2   ÿ:  «   2;     Þ;  .   ñ;  n    <  [   <  -   ë<  ,   =  Ó   F=  æ   >  #   ?     %?     ,?     Â?    Î?     è@     ï@     A  0   A  Ñ   ÌA  
  B  >  ©C  U   èD  d   >E     £E  l   .F  	   F  ê   ¥F  ]   G  -   îG     H     I  ?   ¬I  0   ìI  Q   J  6   oJ    ¦J  W   ²K  L  
L  ã   WN  8  ;O  X   tP  S   ÍP     !Q  '   :Q  É   bQ  e   ,R  A   R  W   ÔR  a   ,S  3  S  .   ÂT  ~   ñT  "   pU  ^   U     òU  N   ~V    ÍV  ¹   gX  ¨   !Y  %  ÊY  (   ðZ  (   [     B[  »   [[  D   \  N  \\  ®  «]  N   Z_  G   ©_     ñ_  T   
`  %   _`     `     `     `   (For backwards compatibility, the exception class is also available as ``ossaudiodev.error``.) (If :mod:`ossaudiodev` receives an error from a system call such as :c:func:`open`, :c:func:`write`, or :c:func:`ioctl`, it raises :exc:`OSError`. Errors detected directly by :mod:`ossaudiodev` result in :exc:`OSSAudioError`.) *device* is the audio device filename to use.  If it is not specified, this module first looks in the environment variable :envvar:`AUDIODEV` for a device to use.  If not found, it falls back to :file:`/dev/dsp`. *mode* is one of ``'r'`` for read-only (record) access, ``'w'`` for write-only (playback) access and ``'rw'`` for both. Since many sound cards only allow one process to have the recorder or player open at a time, it is a good idea to open the device only for the activity needed.  Further, some sound cards are half-duplex: they can be opened for reading or writing, but not both at once. 11025 22050 44100 8000 96000 :const:`AFMT_A_LAW` :const:`AFMT_IMA_ADPCM` :const:`AFMT_MU_LAW` :const:`AFMT_S16_BE` :const:`AFMT_S16_LE` :const:`AFMT_S8` :const:`AFMT_U16_BE` :const:`AFMT_U16_LE` :const:`AFMT_U8` :meth:`channels` to set the number of channels :meth:`setfmt` to set the output format :meth:`speed` to set the sample rate :mod:`ossaudiodev` --- Access to OSS-compatible audio devices :mod:`ossaudiodev` defines the following variables and functions: Alternately, you can use the :meth:`setparameters` method to set all three audio parameters at once.  This is more convenient, but may not be as flexible in all cases. Audio Device Objects Audio device objects also support several read-only attributes: Audio device objects also support the context management protocol, i.e. they can be used in a :keyword:`with` statement. Before you can write to or read from an audio device, you must call three methods in the correct order: Boolean indicating whether the device has been closed. CD quality audio (at 16 bits/sample and 2 channels) Call this function to specify a recording source.  Returns a bitmask indicating the new recording source (or sources) if successful; raises :exc:`OSError` if an invalid source was specified.  To set the current recording source to the microphone input:: Consult the OSS documentation for a full list of audio formats, and note that most devices support only a subset of these formats.  Some older devices only support :const:`AFMT_U8`; the most common format used today is :const:`AFMT_S16_LE`. DVD quality audio (at 24 bits/sample) Description Explicitly close the audio device.  When you are done writing to or reading from an audio device, you should explicitly close it.  A closed device cannot be used again. For example,  :: For most purposes, the :const:`SOUND_MIXER_VOLUME` (master volume) and :const:`SOUND_MIXER_PCM` controls should suffice---but code that uses the mixer should be flexible when it comes to choosing mixer controls.  On the Gravis Ultrasound, for example, :const:`SOUND_MIXER_VOLUME` does not exist. Format Immediately stop playing or recording and return the device to a state where it can accept commands.  The OSS documentation recommends closing and re-opening the device after calling :meth:`reset`. Mixer Device Objects Mixer objects also support the context management protocol. Note the unusual calling syntax: the *first* argument is optional, and the second is required.  This is a historical artifact for compatibility with the older :mod:`linuxaudiodev` module which :mod:`ossaudiodev` supersedes. Open a mixer device and return an OSS mixer device object.   *device* is the mixer device filename to use.  If it is not specified, this module first looks in the environment variable :envvar:`MIXERDEV` for a device to use.  If not found, it falls back to :file:`/dev/mixer`. Open an audio device and return an OSS audio device object.  This object supports many file-like methods, such as :meth:`read`, :meth:`write`, and :meth:`fileno` (although there are subtle differences between conventional Unix read/write semantics and those of OSS audio devices).  It also supports a number of audio-specific methods; see below for the complete list of methods. Operations in this module now raise :exc:`OSError` where :exc:`IOError` was raised. Put the device into non-blocking mode.  Once in non-blocking mode, there is no way to return it to blocking mode. Raises :exc:`OSSAudioError` if an invalid control is specified, or :exc:`OSError` if an unsupported control is specified. Raises :exc:`OSSAudioError` if an invalid mixer control was specified, or if the specified volumes were out-of-range. Rate Read *size* bytes from the audio input and return them as a Python string. Unlike most Unix device drivers, OSS audio devices in blocking mode (the default) will block :func:`read` until the entire requested amount of data is available. Return a bitmask of the audio output formats supported by the soundcard.  Some of the formats supported by OSS are: Return the file descriptor associated with the device. Returns a bitmask indicating stereo mixer controls.  If a bit is set, the corresponding control is stereo; if it is unset, the control is either monophonic or not supported by the mixer (use in combination with :meth:`controls` to determine which). Returns a bitmask specifying the mixer controls that may be used to record.  See the code example for :meth:`controls` for an example of reading from a bitmask. Returns the file handle number of the open mixer device file. Returns the number of samples that are in the hardware buffer yet to be played. Returns the number of samples that could be queued into the hardware buffer to be played without blocking. Returns the size of the hardware buffer, in samples. Returns the volume of a given mixer control.  The returned volume is a 2-tuple ``(left_volume,right_volume)``.  Volumes are specified as numbers from 0 (silent) to 100 (full volume).  If the control is monophonic, a 2-tuple is still returned, but both volumes are the same. See the code example for the :meth:`controls` function for an example of getting data from a bitmask. Set the key audio sampling parameters---sample format, number of channels, and sampling rate---in one method call.  *format*,  *nchannels*, and *samplerate* should be as specified in the :meth:`setfmt`, :meth:`channels`, and :meth:`speed`  methods.  If *strict* is true, :meth:`setparameters` checks to see if each parameter was actually set to the requested value, and raises :exc:`OSSAudioError` if not.  Returns a tuple (*format*, *nchannels*, *samplerate*) indicating the parameter values that were actually set by the device driver (i.e., the same as the return values of :meth:`setfmt`, :meth:`channels`, and :meth:`speed`). Set the number of output channels to *nchannels*.  A value of 1 indicates monophonic sound, 2 stereophonic.  Some devices may have more than 2 channels, and some high-end devices may not support mono. Returns the number of channels the device was set to. Sets the volume for a given mixer control to ``(left,right)``. ``left`` and ``right`` must be ints and between 0 (silent) and 100 (full volume).  On success, the new volume is returned as a 2-tuple. Note that this may not be exactly the same as the volume specified, because of the limited resolution of some soundcard's mixers. Signed, 16-bit audio, big-endian byte order (as used by 68k, PowerPC, Sparc) Signed, 16-bit audio, little-endian byte order (as used by Intel processors) Signed, 8 bit audio String containing the name of the device file. Tell the driver that there is likely to be a pause in the output, making it possible for the device to handle the pause more intelligently.  You might use this after playing a spot sound effect, before waiting for user input, or before doing disk I/O. The :mod:`ossaudiodev` module is deprecated (see :pep:`PEP 594 <594#ossaudiodev>` for details). The I/O mode for the file, either ``"r"``, ``"rw"``, or ``"w"``. The audio device objects returned by :func:`.open` define the following methods and (read-only) attributes: The following convenience methods combine several ioctls, or one ioctl and some simple calculations. The following methods each map to exactly one :c:func:`ioctl` system call.  The correspondence is obvious: for example, :meth:`setfmt` corresponds to the ``SNDCTL_DSP_SETFMT`` ioctl, and :meth:`sync` to ``SNDCTL_DSP_SYNC`` (this can be useful when consulting the OSS documentation).  If the underlying :c:func:`ioctl` fails, they all raise :exc:`OSError`. The mixer object provides two file-like methods: The module defines a large number of constants supplied by the OSS device driver; see ``<sys/soundcard.h>`` on either Linux or FreeBSD for a listing. The remaining methods are specific to audio mixing: This exception is raised on certain errors.  The argument is a string describing what went wrong. This method closes the open mixer device file.  Any further attempts to use the mixer after this file is closed will raise an :exc:`OSError`. This method returns a bitmask indicating which control(s) are currently being used as a recording source. This method returns a bitmask specifying the available mixer controls ("Control" being a specific mixable "channel", such as :const:`SOUND_MIXER_PCM` or :const:`SOUND_MIXER_SYNTH`).  This bitmask indicates a subset of all available mixer controls---the :const:`SOUND_MIXER_\*` constants defined at module level. To determine if, for example, the current mixer object supports a PCM mixer, use the following Python code:: This module allows you to access the OSS (Open Sound System) audio interface. OSS is available for a wide range of open-source and commercial Unices, and is the standard audio interface for Linux and recent versions of FreeBSD. Try to set the audio sampling rate to *samplerate* samples per second.  Returns the rate actually set.  Most sound devices don't support arbitrary sampling rates.  Common rates are: Try to set the current audio format to *format*---see :meth:`getfmts` for a list.  Returns the audio format that the device was set to, which may not be the requested format.  May also be used to return the current audio format---do this by passing an "audio format" of :const:`AFMT_QUERY`. Unsigned, 16-bit big-endian audio Unsigned, 16-bit little-endian audio Unsigned, 8-bit audio Wait until the sound device has played every byte in its buffer.  (This happens implicitly when the device is closed.)  The OSS documentation recommends closing and re-opening the device rather than using :meth:`sync`. Writable :term:`bytes-like object` is now accepted. Write a :term:`bytes-like object` *data* to the audio device and return the number of bytes written.  If the audio device is in blocking mode (the default), the entire data is always written (again, this is different from usual Unix device semantics).  If the device is in non-blocking mode, some data may not be written---see :meth:`writeall`. Write a :term:`bytes-like object` *data* to the audio device: waits until the audio device is able to accept data, writes as much data as it will accept, and repeats until *data* has been completely written. If the device is in blocking mode (the default), this has the same effect as :meth:`write`; :meth:`writeall` is only useful in non-blocking mode.  Has no return value, since the amount of data written is always equal to the amount of data supplied. `Open Sound System Programmer's Guide <http://www.opensound.com/pguide/oss.pdf>`_ a 4:1 compressed format defined by the Interactive Multimedia Association a logarithmic encoding a logarithmic encoding (used by Sun ``.au`` files and :file:`/dev/audio`) default rate for :file:`/dev/audio` is equivalent to  :: speech recording the official documentation for the OSS C API Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:10+0000
Last-Translator: Bryanä¸å¯æè®®, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 ï¼ä¸ºäºåä¸å¼å®¹ï¼æ­¤å¼å¸¸ç±»ä¹å¯éè¿ ``ossaudiodev.error`` è®¿é®ãï¼ ï¼å¦æ :mod:`ossaudiodev` ä»ç³»ç»è°ç¨ä¾å¦ :c:func:`open`, :c:func:`write` æ :c:func:`ioctl` æ¥æ¶å°éè¯¯ï¼å®å°å¼å :exc:`OSError`ã ç± :mod:`ossaudiodev` ç´æ¥æ£æµå°çéè¯¯å°å¼å :exc:`OSSAudioError`ãï¼ *device* æ¯è¦ä½¿ç¨çé³é¢è®¾å¤æä»¶åã å¦ææªæå®ï¼åæ­¤æ¨¡åä¼åå¨ç¯å¢åé :envvar:`AUDIODEV` ä¸­æ¥æ¾è¦ä½¿ç¨çè®¾å¤ã å¦ææªæ¾å°ï¼å®å°åéä¸º :file:`/dev/dsp`ã *mode* å¯ä»¥ä¸º ``'r'`` è¡¨ç¤ºåªè¯»ï¼å½é³ï¼è®¿é®ï¼``'w'`` è¡¨ç¤ºåªåï¼åæ¾ï¼è®¿é®ä»¥å ``'rw'`` è¡¨ç¤ºåæ¶è¯»åã ç±äºè®¸å¤å£°å¡å¨åä¸æ¶é´åªåè®¸åä¸ªè¿ç¨æå¼å½é³æºææ­æ¾å¨ï¼å æ­¤å¥½çåæ³æ¯åªæ ¹æ®æ´»å¨çéè¦æå¼è®¾å¤ã å¹¶ä¸ï¼æäºå£°å¡æ¯ååå·¥çï¼å®ä»¬å¯ä»¥è¢«æå¼ç¨äºè¯»åæåå¥ï¼ä½ä¸è½åæ¶è¯»åã 11025 22050 44100 8000 96000 :const:`AFMT_A_LAW` :const:`AFMT_IMA_ADPCM` :const:`AFMT_MU_LAW` :const:`AFMT_S16_BE` :const:`AFMT_S16_LE` :const:`AFMT_S8` :const:`AFMT_U16_BE` :const:`AFMT_U16_LE` :const:`AFMT_U8` :meth:`channels` è®¾ç½®å£°éæ°é :meth:`setfmt` è®¾ç½®è¾åºæ ¼å¼ :meth:`speed` è®¾ç½®éæ ·ç :mod:`ossaudiodev`  --- è®¿é®å¼å®¹OSSçé³é¢è®¾å¤ :mod:`ossaudiodev` å®ä¹äºä¸ååéåå½æ°: æèï¼ä½ ä¹å¯ä»¥ä½¿ç¨ :meth:`setparameters` æ¹æ³ä¸æ¬¡æ§å°è®¾ç½®å¨é¨ä¸ä¸ªé³é¢åæ°ã è¿æ´ä¸ºä¾¿æ·ï¼ä½å¯è½ä¸ä¼å¨ææåºæ¯ä¸é½ä¸æ ·çµæ´»ã é³é¢è®¾å¤å¯¹è±¡ é³é¢è®¾å¤å¯¹è±¡è¿æ¯æå ä¸ªåªè¯»å±æ§: é³é¢è®¾å¤å¯¹è±¡è¿æ¯æä¸ä¸æç®¡çåè®®ï¼å°±æ¯è¯´å®ä»¬å¯ä»¥å¨ :keyword:`with` è¯­å¥ä¸­ä½¿ç¨ã å¨ä½ åå¥æè¯»åé³é¢è®¾å¤ä¹åï¼ä½ å¿é¡»æç§æ­£ç¡®çé¡ºåºè°ç¨ä¸ä¸ªæ¹æ³: ææè®¾å¤æ¯å¦å·²è¢«å³é­çå¸å°å¼ã CDåè´¨çé³é¢ï¼16ä½éæ ·å2ééï¼ è°ç¨æ­¤å½æ°æ¥æå®ä¸ä¸ªå½é³æºã å¦ææååè¿åä¸ä¸ªæææ°å½é³æºçä½æ©ç ï¼å¦ææå®äºæ æçæºåä¼å¼å :exc:`OSError`ã å¦æè¦å°å½åå½é³æºè®¾ä¸ºéº¦åé£è¾å¥:: è¯·åé OSS ææ¡£è·åé³é¢æ ¼å¼çå®æ´åè¡¨ï¼è¿è¦æ³¨æå¤§å¤æ°è®¾å¤é½åªæ¯æè¿äºåè¡¨çä¸ä¸ªå­éã æäºè¾æ§çè®¾å¤ä»æ¯æ :const:`AFMT_U8`ï¼ç®åæä¸ºå¸¸ç¨çæ ¼å¼æ¯ :const:`AFMT_S16_LE`ã DVDåè´¨çé³é¢ï¼24ä½éæ ·ï¼ æè¿° æ¾å¼å°å³é­é³é¢è®¾å¤ã å½ä½ å®æåå¥æè¯»åé³é¢è®¾å¤åï¼ä½ åºå½æ¾å¼å°å³é­å®ã å·²å³é­çè®¾å¤ä¸å¯è¢«åæ¬¡ä½¿ç¨ã ä¾å¦ï¼:: å¯¹äºå¤§å¤æ°ç®çæ¥è¯´ï¼:const:`SOUND_MIXER_VOLUME` (ä¸»é³é) å :const:`SOUND_MIXER_PCM` æ§ä»¶åºè¯¥è¶³å¤äº --- ä½ä½¿ç¨æ··é³å¨çä»£ç åºå½å¨éæ©æ··é³å¨æ§ä»¶æ¶ä¿æçµæ´»ã ä¾å¦å¨ Gravis Ultrasound ä¸ï¼:const:`SOUND_MIXER_VOLUME` æ¯ä¸å­å¨çã æ ¼å¼ ç«å³åæ­¢æ­æ¾æå½å¶å¹¶ä½¿è®¾å¤è¿åå¯æ¥åå½ä»¤çç¶æã OSS ææ¡£å»ºè®®å¨è°ç¨ :meth:`reset` ä¹åå³é­å¹¶éæ°æå¼è®¾å¤ã æ··é³å¨è®¾å¤å¯¹è±¡ æ··é³å¨è®¾å¤è¿æ¯æä¸ä¸æç®¡çåè®®ã è¯·æ³¨æè¿éç¹æ®çè°ç¨è¯­æ³: *first* åæ°æ¯å¯éçï¼èç¬¬äºä¸ªåæ°åæ¯å¿éçã è¿æ¯åºäºåå²åå è¦ä¸ :mod:`ossaudiodev` ææ¿ä»£ç :mod:`linuxaudiodev` æ¨¡åä¿æå¼å®¹ã æå¼ä¸ä¸ªæ··é³è®¾å¤å¹¶è¿å OSS æ··é³è®¾å¤å¯¹è±¡ã *device* æ¯è¦ä½¿ç¨çæ··é³è®¾å¤æä»¶åã å¦ææªæå®ï¼åæ­¤æ¨¡åä¼åå¨ç¯å¢åé :envvar:`MIXERDEV` ä¸­æ¥æ¾è¦ä½¿ç¨çè®¾å¤ã å¦ææªæ¾å°ï¼å®å°åéä¸º :file:`/dev/mixer`ã æå¼ä¸ä¸ªé³é¢è®¾å¤å¹¶è¿å OSS é³é¢è®¾å¤å¯¹è±¡ã æ­¤å¯¹è±¡æ¯æè®¸å¤æä»¶ç±»æ¹æ³ï¼ä¾å¦ :meth:`read`, :meth:`write` å :meth:`fileno` (ä¸è¿ä¼ ç»ç Unix è¯»/åè¯­ä¹ä¸ OSS é³é¢è®¾å¤çå­å¨ä¸äºç»å¾®çå·®å¼)ã å®è¿æ¯æä¸äºé³é¢ä¸å±çæ¹æ³ï¼å®æ´çæ¹æ³åè¡¨è§ä¸æã æ­¤æ¨¡åä¸­è¿å»ä¼å¼å :exc:`IOError` çæä½ç°å¨å°å¼å :exc:`OSError`ã å°è®¾å¤è½¬ä¸ºéé»å¡æ¨¡å¼ã ä¸æ¦å¤äºéé»å¡æ¨¡å¼ï¼å°æ æ³å°å¶è½¬åé»å¡æ¨¡å¼ã å¦ææå®äºæ æçæ§ä»¶åä¼å¼å :exc:`OSSAudioError`ï¼æèå¦ææå®äºä¸åæ¯æçæ§ä»¶åä¼å¼å :exc:`OSError`ã å¦ææå®äºæ æçæ··é³æ§ä»¶ï¼æèæå®çé³éè¶åºéå¶åä¼å¼å :exc:`OSSAudioError`ã éæ ·ç ä»é³é¢è¾å¥è®¾å¤è¯»å *size* ä¸ªå­èå¹¶è¿åä¸º Python å­èä¸²ã ä¸å¤§å¤æ° Unix è®¾å¤é©±å¨ä¸åï¼å¤äºé»å¡æ¨¡å¼ï¼é»è®¤ï¼ç OSS é³é¢è®¾å¤å°é»å¡ :func:`read` ç´å°æè¯·æ±å¤§å°çæ°æ®å¨é¨å¯ç¨ã è¿åå£°å¡ææ¯æçé³é¢è¾åºæ ¼å¼çä½æ©ç ã OSS æ¯æçä¸é¨åæ ¼å¼å¦ä¸: è¿åä¸è®¾å¤ç¸å³èçæä»¶æè¿°ç¬¦ã è¿åä¸ä¸ªè¡¨ç¤ºç«ä½å£°æ··é³æ§ä»¶çä½æ©ç ã å¦æè®¾ç½®äºæ¯ç¹ä½ï¼åå¯¹åºçæ§ä»¶å°±æ¯ç«ä½å£°çï¼å¦ææªè®¾ç½®ï¼åæ§ä»¶ä¸ºåå£°éæèä¸è¢«æ··é³å¨ææ¯æï¼è¯·éå :meth:`controls` ä½¿ç¨ä»¥ç¡®å®æ¯åªç§æåµï¼ã è¿åä¸ä¸ªææå¯è¢«ç¨äºå½é³çæ··é³å¨æ§ä»¶çä½æ©ç ã è¯·æ¥ç :meth:`controls` çä»£ç ç¤ºä¾äºè§£å¦ä½è¯»åä½æ©ç ã è¿åæå¼çæ··é³å¨è®¾å¤æä»¶çæä»¶å¤çå¥æå·ã è¿åç¡¬ä»¶ç¼å²åºä¸­å¾æ­æ¾çéæ ·æ°ã è¿åå¯ä»¥è¢«å å¥ç¡¬ä»¶ç¼å²åºéåä»¥éé»å¡æ¨¡å¼æ­æ¾çéæ ·æ°ã è¿åç¡¬ä»¶ç¼å²åºçå¤§å°ï¼ä»¥éæ ·æ°è¡¨ç¤ºã è¿åç»å®æ··é³æ§ä»¶çé³éã è¿åçé³éæ¯ä¸ä¸ª 2 åç» ``(left_volume,right_volume)``ã é³éè¢«è¡¨ç¤ºä¸ºä» 0 (éé³) å° 100 (æå¤§é³é) çæ°å­ã å¦ææ§ä»¶æ¯åå£°éçï¼ä»ç¶ä¼è¿åä¸ä¸ª 2 åç»ï¼ä½ä¸¤ä¸ªé³éå¿å®ç¸åã è¯·æ¥ç :meth:`controls` å½æ°çä»£ç ç¤ºä¾äºè§£å¦ä½ä»ä½æ©ç è·åæ°æ®ã å¨ä¸æ¬¡æ¹æ³è°ç¨ä¸­è®¾ç½®å³é®çé³é¢éæ ·åæ° --- éæ ·æ ¼å¼ãå£°éæ°åéæ ·çã *format*,  *nchannels* å *samplerate* åºå½ä¸å¨ :meth:`setfmt`, :meth:`channels` å :meth:`speed`  æ¹æ³ä¸­ææå®çä¸è´ã å¦æ *strict* ä¸ºçå¼ï¼å :meth:`setparameters` ä¼æ£æ¥æ¯ä¸ªåæ°æ¯å¦ç¡®å®è¢«è®¾ç½®ä¸ºæè¯·æ±çå¼ï¼å¦æä¸æ¯åä¼å¼å :exc:`OSSAudioError`ã è¿åä¸ä¸ªåç» (*format*, *nchannels*, *samplerate*) ææç±è®¾å¤é©±å¨å®éè®¾ç½®çåæ°å¼ (å³ä¸ :meth:`setfmt`, :meth:`channels` å :meth:`speed` çè¿åå¼ç¸å)ã å°è¾åºå£°éæ°è®¾ä¸º *nchannels*ã å¼ä¸º 1 è¡¨ç¤ºåå£°éï¼2 è¡¨ç¤ºç«ä½å£°ã æäºè®¾å¤å¯è½æ¥æ 2 ä¸ªä»¥ä¸çå£°éï¼å¹¶ä¸æäºé«ç«¯è®¾å¤è¿å¯è½ä¸æ¯æåå£°éã è¿åä¸ºè®¾å¤è®¾ç½®çå£°éæ°ã å°ç»å®æ··é³æ§ä»¶çé³éè®¾ä¸º ``(left,right)``ã ``left`` å ``right`` å¿é¡»ä¸ºæ´æ°å¹¶å¨ 0 (éé³) è³ 100 (æå¤§é³é) ä¹é´ã å½æ§è¡æåçï¼æ°çé³éå°ä»¥ 2 åç»å½¢å¼è¿åã è¯·æ³¨æè¿å¯è½ä¸å®å¨ç­äºææå®çé³éï¼å ä¸ºæäºå£°å¡çæ··é³å¨æç²¾åº¦éå¶ã æç¬¦å·ç 16 ä½é³é¢ï¼éç¨å¤§ç«¯å­èåºï¼å¦ 68k, PowerPC, Sparc æç¨çï¼ æç¬¦å·ç 16 ä½é³é¢ï¼éç¨å°ç«¯å­èåºï¼å¦ Intel å¤çå¨æç¨çï¼ æç¬¦å·ç 8 ä½é³é¢ åå«è®¾å¤æä»¶åç§°çå­ç¬¦ä¸²ã åç¥è®¾å¤å¨è¾åºä¸­å¯è½ææåï¼ä½¿å¾è®¾å¤å¯ä»¥æ´æºè½å°å¤çæåã ä½ å¯ä»¥å¨æ­æ¾ä¸ä¸ªå®ç¹é³æä¹åãç­å¾ç¨æ·è¾å¥ä¹åææ§è¡ç£ç I/O ä¹åä½¿ç¨æ­¤æ¹æ³ã :mod:`ossaudiodev` æ¨¡åå·²è¢«å¼ç¨ï¼è¯·åé :pep:`PEP 594 <594#ossaudiodev>` äºè§£è¯¦æï¼ã æä»¶ç I/O æ¨¡å¼ï¼å¯ä»¥ä¸º ``"r"``, ``"rw"`` æ ``"w"``ã :func:`.open` æè¿åçé³é¢è®¾å¤å¯¹è±¡å®ä¹äºä¸åæ¹æ³åï¼åªè¯»ï¼å±æ§: ä¸åä¾¿æ·æ¹æ³åå¹¶äºå¤ä¸ª ioctlï¼ææ¯åå¹¶äºä¸ä¸ª ioctl ä¸æäºç®åçè¿ç®ã ä¸åæ¹æ³åèªæ å°ä¸ä¸ª :c:func:`ioctl` ç³»ç»è°ç¨ã å¯¹åºå³ç³»å¾ææ¾ï¼ä¾å¦ï¼:meth:`setfmt` å¯¹åº ``SNDCTL_DSP_SETFMT`` ioctlï¼è :meth:`sync` å¯¹åº ``SNDCTL_DSP_SYNC`` (è¿å¨æ¥é OSS ææ¡£æ¶å¾æç¨)ã å¦æä¸å±ç :c:func:`ioctl` å¤±è´¥ï¼å®ä»¬å°å¼å :exc:`OSError`ã æ··é³å¨å¯¹è±¡æä¾äºä¸¤ä¸ªæä»¶ç±»æ¹æ³: è¯¥æ¨¡åå®ä¹äºå¤§éç±OSSè®¾å¤é©±å¨æä¾çå¸¸éï¼ è¯·åé ``<sys/soundcard.h>`` Linux æ FreeBSD ä¸çåè¡¨ã å¶ä½æ¹æ³é½æ¯æ··é³ä¸å±ç: æ­¤å¼å¸¸ä¼éå¯¹ç¹å®éè¯¯è¢«å¼åã å¶åæ°ä¸ºä¸ä¸ªæè¿°éè¯¯ä¿¡æ¯çå­ç¬¦ä¸²ã æ­¤æ¹æ³ä¼å³é­æå¼çæ··é³å¨è®¾å¤æä»¶ã å¨æä»¶è¢«å³é­åä»»ä½ç»§ç»­ä½¿ç¨æ··é³å¨çå°è¯é½å°å¼å :exc:`OSError`ã æ­¤æ¹æ³è¿åä¸ä¸ªè¡¨ç¤ºå½åè¢«ç¨ä½å½é³æºççæ§ä»¶çä½æ©ç ã æ­¤æ¹æ³è¿åä¸ä¸ªè¡¨ç¤ºå¯ç¨çæ··é³æ§ä»¶çä½æ©ç  ("æ§ä»¶" æ¯ä¸ç¨çå¯æ··å "å£°é"ï¼ä¾å¦ :const:`SOUND_MIXER_PCM` æ :const:`SOUND_MIXER_SYNTH`)ã è¯¥æ©ç ä¼æå®ææå¯ç¨æ··é³æ§ä»¶çä¸ä¸ªå­é --- å®ä»¬æ¯å¨æ¨¡åå±çº§ä¸å®ä¹ç :const:`SOUND_MIXER_\*` å¸¸éã ä¸¾ä¾æ¥è¯´ï¼è¦ç¡®å®å½åæ··é³å¨å¯¹è±¡æ¯å¦æ¯æ PCM æ··é³å¨ï¼å°±ä½¿ç¨ä»¥ä¸ Python ä»£ç :: è¯¥æ¨¡ååè®¸æ¨è®¿é® OSSï¼å¼æ¾å¼é³åç³»ç»ï¼é³é¢æ¥å£ã OSS å¯ç¨äºå¹¿æ³çå¼æºååä¸ Unicesï¼å¹¶ä¸æ¯ Linux åææ°çæ¬ç FreeBSD çæ åé³é¢æ¥å£ã å°è¯å°é³é¢éæ ·çè®¾ä¸ºæ¯ç§ *samplerate* æ¬¡éæ ·ã è¿åå®éè®¾ç½®çéæ ·çã å¤§å¤æ°è®¾å¤é½ä¸æ¯æä»»æçéæ ·çã å¸¸è§çéæ ·çä¸º: å°è¯å°å½åé³é¢æ ¼å¼è®¾ä¸º *format* --- è¯·åé :meth:`getfmts` è·åæ ¼å¼åè¡¨ã è¿åä¸ºè®¾å¤è®¾ç½®çé³é¢æ ¼å¼ï¼è¿å¯è½å¹¶éæè¯·æ±çæ ¼å¼ã ä¹å¯è¢«ç¨æ¥è¿åå½åé³é¢æ ¼å¼ --- è¿å¯ä»¥éè¿ä¼ å¥ç¹æ®ç "é³é¢æ ¼å¼" :const:`AFMT_QUERY` æ¥å®ç°ã æ ç¬¦å·ç 16 ä½å¤§ç«¯å­èåºé³é¢ æ ç¬¦å·ç 16 ä½å°ç«¯å­èåºé³é¢ æ ç¬¦å·ç 8 ä½é³é¢ ç­å¾ç´å°é³é¢è®¾å¤æ­æ¾å®å¶ç¼å²åºä¸­çææå­èã ï¼è¿ä¼å¨è®¾å¤è¢«å³é­æ¶éå¼å°åçãï¼ OSS å»ºè®®å³é­åéæ°æå¼è®¾å¤èä¸æ¯ä½¿ç¨ :meth:`sync`ã ç°å¨æ¥åå¯åç :term:`å­èç±»å¯¹è±¡ <bytes-like object>`ã å°ä¸ä¸ª :term:`bytes-like object` *data* åå¥é³é¢è®¾å¤å¹¶è¿ååå¥çå­èæ°ã å¦æé³é¢è®¾å¤å¤äºé»å¡æ¨¡å¼ï¼é»è®¤ï¼ï¼åæ»æ¯ä¼åå¥å®æ´æ°æ®ï¼è¿è¿æ¯ä¸åäºéå¸¸ç Unix è®¾å¤è¯­ä¹ï¼ã å¦æè®¾å¤å¤äºéé»å¡æ¨¡å¼ï¼åå¯è½ä¼æé¨åæ°æ®æªè¢«åå¥ --- åè§ :meth:`writeall`ã å°ä¸ä¸ª :term:`bytes-like object` *data* åå¥é³é¢è®¾å¤ï¼ç­å¾ç´å°é³é¢è®¾å¤è½å¤æ¥æ¶æ°æ®ï¼å°æ ¹æ®å¶æè½æ¥æ¶çæ°æ®éå°½å¯è½å¤å°åå¥ï¼å¹¶éå¤æä½ç´è³ *data* è¢«å®å¨åå¥ã å¦æè®¾å¤å¤äºé»å¡æ¨¡å¼ï¼é»è®¤ï¼ï¼åå¶ææä¸ :meth:`write` ç¸åï¼:meth:`writeall` ä»éç¨äºéé»å¡æ¨¡å¼ã å®æ²¡æè¿åå¼ï¼å ä¸ºåå¥çæ°æ®éæ»æ¯ç­äºææä¾çæ°æ®éã `å¼æ¾ä¹å£°ç³»ç»ç¨åºåæå <http://www.opensound.com/pguide/oss.pdf>`_ ä¸ç§ 4:1 åç¼©æ ¼å¼ï¼ç± Interactive Multimedia Association å®ä¹ ä¸ç§å¯¹æ°ç¼ç æ ¼å¼ ä¸ç§å¯¹æ°ç¼ç æ ¼å¼ï¼è¢« Sun ``.au`` æä»¶å :file:`/dev/audio` æä½¿ç¨ï¼ :file:`/dev/audio` çé»è®¤éæ ·ç ç­ä»·äº :: è¯­é³å½é³ OSS C API çå®æ¹ææ¡£ 