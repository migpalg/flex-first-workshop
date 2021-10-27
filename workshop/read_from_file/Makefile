OUTPUT_DIR=bin
SRC_DIR=src
BISON_INPUT=${SRC_DIR}/Parser.h
BISON_OUTPUT=${OUTPUT_DIR}/Parser
FLEX_INPUT=${SRC_DIR}/Parser.lex
FLEX_OUTPUT=${OUTPUT_DIR}/Parser.lex.c
GCC_OUTPUT=${OUTPUT_DIR}/Parser
GCC=gcc
GCC_FLAGS=-g

main:
	rm -rf ${OUTPUT_DIR}/*
	bison -d src/Parser.y -o bin/Parser.tab.c
	mv bin/Parser.tab.c bin/Parser.y.c
	mv bin/Parser.tab.h bin/Parser.h
	flex -o ${FLEX_OUTPUT} ${FLEX_INPUT}
	${GCC} ${GCC_FLAGS} -c bin/Parser.lex.c -o bin/Parser.lex.c
	${GCC} ${GCC_FLAGS} -c bin/Parser.y.c -o bin/Parser.y.o
	${GCC} ${GCC_FLAGS} -o ${GCC_OUTPUT} bin/Parser.y.c bin/Parser.y.o -lfl

run:
	./${GCC_OUTPUT}
