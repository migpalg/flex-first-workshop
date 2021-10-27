%{
#include "Parser.tab.h"
%}

blanks          [ \t\n]+
identifier		[_a-zA-Z0-9]+

%option noyywrap

%%

{blanks}        { /* ignore */ }

"procedure"		return(PROCEDURE);
"{"				return(BLOCK);
"}"				return(ENDBLOCK);

{identifier}	{
				yylval.sval = malloc(strlen(yytext));
				strncpy(yylval.sval, yytext, strlen(yytext));
				return(IDENTIFIER);
}
