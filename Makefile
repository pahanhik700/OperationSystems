ifdef OS
	RM = del /Q
else
	RM = rm -f
endif
all: myprog

myprog: myprog.o myfunc.o
	g++ -g -o myprog myprog.o myfunc.o

myprog.o: myprog.cpp
	g++ -c -Wall -g myprog.cpp

myfunc.o: myfunc.cpp
	g++ -c -Wall -g myfunc.cpp

clean:
	$(RM) *.o
	$(RM) *.exe