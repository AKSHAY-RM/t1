%{
#include "y.tab.h"
%}
%%
"for" return FOR;
[(] return LPAREN;
[)] return RPAREN;
[{] return LF;
[}] return RF;
[=] return '=';
[-] return '-';
[+] return '+';
[>] return '>';
[<] return '<';
[;] return ';';
[a-zA-Z]* return EXP;
[0-9]+ return NUM;
[ ] return SPACE;
\n return 0;


