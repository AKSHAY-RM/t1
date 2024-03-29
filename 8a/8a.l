%{
#undef yywrap
#define yywrap() 1
#include "y.tab.h";
extern yylval;
%}

ALPHA [A-Za-z_]
DIGIT [0-9]
%%

{ALPHA}({ALPHA}|{DIGIT})* return ID;
{DIGIT}+ {yylval=atoi(yytext); return NUM;}
[\n\t] yyterminate();
. return yytext[0];
%%
