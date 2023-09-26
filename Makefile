build:
	 docker build -t ubuntu:ccpp .
_exec:
	 docker run -itv /Users/0xpeipei/Desktop/c-compiler-tutorial:/root $(CID) /bin/bash
do:
	make _exec CID=3267e4fa6a72

compile:
	gcc -O2 -S main.c