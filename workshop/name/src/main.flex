%{

#include <stdio.h>

%}

%option noyywrap

target	^([a-z]{3,}[ ]){2,}[a-z]{3,}$

%%

{target}	{
		printf("valid name! :)\n");
	}

.+	
		printf("unvalid name");
	}

%%

int main(int argc, char *argv[]) {
	printf("end\n");
}

