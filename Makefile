CFLAGS=-std=c11 -g -static

chibicc: main.o
	$(CC) -o $@ $? $(LDFLAGS)

test: chibicc
	./test.sh

clean:
	rm -f chibicc *.o *~ tmp*

.PHONY: test clean
