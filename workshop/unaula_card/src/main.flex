%{
#include <stdio.h>
%}

%option noyywrap

target	^(196[6-9]|19[7-9][0-9]|20[01][0-9]|202[01])[12][02345][0-9]{6}$

%%

{target}	{
		printf("valid unaula card!\n");
	}

.+	{
		printf("unvalid unaula card! :(\n");
	}

%%

int main(int argc, char *argv[]) {
	yylex();
}
