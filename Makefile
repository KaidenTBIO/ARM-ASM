# Makefile

${a}: first.o
	gcc -o $@ $+
	./${a}

${a}.o: first.s
	as -o $@ $<

clean:
	rm -vf ${a} *.o
