OUTPUT_DIR=bin
SRC_DIR=src
FLEX_INPUT=${SRC_DIR}/main.flex
FLEX_OUTPUT=${OUTPUT_DIR}/main.yy.c
GCC_OUTPUT=${OUTPUT_DIR}/main
GCC=gcc
GCC_FLAGS=-g

main:
	rm -rf ${OUTPUT_DIR}/*
	flex -o ${FLEX_OUTPUT} ${FLEX_INPUT}
	${GCC} ${GCC_FLAGS} -o ${GCC_OUTPUT} ${FLEX_OUTPUT}

run:
	./${GCC_OUTPUT}
