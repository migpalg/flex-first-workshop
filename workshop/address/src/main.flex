%{

#include <stdio.h>

%}

%option noyywrap

target	^(carrera|calle|avenida|transversal)[ ]?([0-9]+(sur|norte|[a-z])?)[ ]?#?[ ]?([0-9]+(sur|norte|[a-z])?)[ ]?\-?[ ]?([0-9]+(sur|norte|[a-z])?)$

%%

{target}	{
		printf("valid address!\n");
	}

.+	{
		printf("unvalid address :(\n");
	}

%%

int main(int argc, char *argv[]) {
	yylex();
}
