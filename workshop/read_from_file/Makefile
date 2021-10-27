main:
	rm -rf bin/*
	bison -d src/Parser.y -o bin/Parser.tab.c
	mv bin/Parser.tab.c bin/Parser.y.c
	flex -o bin/Parser.lex.c src/Parser.lex 
	gcc -g -c bin/Parser.lex.c -o bin/Parser.lex.o
	gcc -g -c bin/Parser.y.c -o bin/Parser.y.o
	gcc -o bin/Parser bin/Parser.lex.o bin/Parser.y.o -lfl

run:
	bin/Parser < data/sample.txt
