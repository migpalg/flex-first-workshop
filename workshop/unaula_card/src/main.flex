%{
#include <stdio.h>
%}

%option noyywrap

target	^(19[6-9][0-9]|20[01][0-9]|202[0-2])[12][02345][0-9]{6}$

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
