
SpookyHash in C
===============

[SpookyHash][] is a 128-bit noncryptographic hash, written by Bob Jenkins and
placed in the public domain.

The original implementation is in C++, and this is my conversion to C99. It
should be thread-safe and endian-neutral (but has only been tested on x86).

It is made available under [CC0][].

Some similar efforts:

  - http://github.com/uxcn/spookyhash-c
  - http://github.com/centaurean/spookyhash

[SpookyHash]: http://burtleburtle.net/bob/hash/spooky.html
[CC0]: http://creativecommons.org/publicdomain/zero/1.0/
