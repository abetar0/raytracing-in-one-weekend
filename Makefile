CC=g++
CFLAGS=-std=c++11

raytracing:
	$(CC) $(CFLAGS) -o raytracing.out  main.cc

image: raytracing
	[ -f ./image.ppm ] && rm ./image.ppm || echo file not exists
	./raytracing.out > image.ppm
	open -a ToyViewer ./image.ppm

clean:
		rm -f *.o
.PHONY: clean
