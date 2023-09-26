build:
	 docker build -t ubuntu:ccpp .
exec:
	 docker run -itv ./1cc:/root $(CID) /bin/bash


CFLAGS=-std=c11 -g -static

1cc: 1cc.c

test: 1cc
	  ./test.sh

compile:
	cc -o _1cc 1cc.c
clean:
	  rm -f 1cc *.o *~ tmp*

.PHONY: test clean