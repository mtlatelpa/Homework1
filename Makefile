CFLAGS = -I ./include
LIB    = ./libggfonts.so
LFLAGS = $(LIB) -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: asteroids acpp lab1

asteroids: asteroids.cpp ppm.c log.c
	g++ $(CFLAGS) asteroids.cpp log.c -Wall -Wextra $(LFLAGS) -o asteroids

acpp: asteroids.cpp ppm.c log.c
	g++ $(CFLAGS) asteroids.cpp log.c -Wall -Wextra $(LFLAGS) -o acpp
lab1: lab1.cpp
	g++ $(CFLAGS) lab1.cpp log.c -Wall -Wextra $(LFLAGS) -o lab1

clean:
	rm -f asteroids acpp
	rm -f lab1
	rm -f *.o
