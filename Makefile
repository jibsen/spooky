##
## SpookyHash - 128-bit noncryptographic hash function
##
## GCC Makefile
##

.SUFFIXES:

.PHONY: clean all

CFLAGS = -std=c99 -Wall -Wextra -pedantic -Ofast -flto
CXXFLAGS = -std=c++11 -Wall -Wextra -pedantic -Ofast -flto
LDFLAGS =

ifeq ($(OS),Windows_NT)
  LDFLAGS += -static
  ifeq ($(CC),cc)
    CC = gcc
  endif
endif

objs = testspooky.o spooky.o

target = testspooky

all: $(target)

%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

%.o : %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<

$(target): $(objs)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^ $(LDLIBS)

clean:
	$(RM) $(objs) $(target)
