%{
#include <stdio.h>
%}

%option noyywrap

cellphone	^\+57(300|301|302|304|305|310|311|312|313|314|320|321|322|323|315|316|317|318|319|350|351)[0-9]{7}$
house_phone	^\+5760[7651284][2-9][0-9]{6}$

%%

{cellphone}	{
		printf("valid phone number!\n");
	}

{house_phone}	{
		printf("valid phone number!\n");
	}

.+	{
		printf("unvalid phone number!\n");
	}

%%

int main(int argc, char *argv[]) {
	yylex();
	printf("ends\n");
}

