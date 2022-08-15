%{
#include<stdio.h>
int p=0,n=0,pf=0,nf=0;
%}
%%
[+]?[0-9]+ {p++;} //+2
[-][0-9]+ {n++;}//-4
[0-9]*[.][0-9]+ {pf++;}//.5 or 0.4
[-][0-9]*[.][0-9]+ {nf++;}//-.9 or -0.9
[-][0-9]*[.]*[0-9]+[/][-][0-9]*[.]*[0-9]+ {pf++;}//-9.9/-9.9
[0-9]*[.]*[0-9]+[/][0-9]*[.]*[0-9]+ {pf++;}//9.9/9.9 or.9/.0
[0-9]*[.]*[0-9]+[/][-][0-9]*[.]*[0-9]+ {nf++;}//9.9/-.9
[-][0-9]*[.]*[0-9]+[/][0-9]*[.]*[0-9]+ {nf++;}//-.9/0.0
\n return 0;
%%
int main()
{
printf("Enter the no.'s\n");
yylex();
printf("Number of positive integers=%d\n\tnegative integers=%d\n\tpositivefractions=%d\n\tnegative fractions=%d\n",p,n,pf,nf);
}
