%{
#include <stdio.h>
%}

%option noyywrap

mastercard	^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}$
visa	^4[0-9]{12}(?:[0-9]{3})?$
maestro	^(5018|5020|5038|6304|6759|6761|6763)[0-9]{8,15}$
diners_club_card	^3(?:0[0-5]|[68][0-9])[0-9]{11}$
american_express	^3[47][0-9]{13}$

%%

{mastercard}	{
		printf("valid card!\n");
	}

{visa}	{
		printf("valid card!\n");
	}

{maestro}	{
		printf("valid card!\n");
	}

{diners_club_card}	{
		printf("valid card!\n");
	}

{american_express}	{
		printf("valid card!\n");
	}

.+	{
		printf("unvalid card\n");
	}

%%

int main(int argc, char *argv[]) {
	yylex();
	printf("end :)\n");
}
