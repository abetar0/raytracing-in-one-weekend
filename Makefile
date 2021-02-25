CC=g++
CFLAGS=-std=c++11

raytracing:
	$(CC) $(CFLAGS)  main.cc
#test: raytracing

clean:
		rm -f *.o
.PHONY: clean
