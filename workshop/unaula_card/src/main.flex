%{
#include <stdio.h>
%}

%option noyywrap

target	[1-9][0-9]{3}[12][02345][0-9]{6}

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
