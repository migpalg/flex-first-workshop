%{

#include <stdio.h>

%}

%option noyywrap

target	[a-zA-Z]+

%%

{target}	{
		/* here matchs! */
	}

%%

int main(int argc, char *argv[]) {
	printf("hello world!");
}
