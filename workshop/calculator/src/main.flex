%{

#include <stdio.h>

%}

%option noyywrap

target	^(\(?([\+\-]?[0-9]+(\.[0-9]+)?)(\)+)?([\+\-\/\*\^]|rad)?)+$

%%

{target}	{
		printf("valid expresion\n");
	}

.+	{
		printf("unvalid expresion\n");
	}

%%

int main(int argc, char *argv[]) {
	// Look for terminal input
	yylex();

	printf("calculator end :)\n");
}
