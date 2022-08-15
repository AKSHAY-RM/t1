%{
#include<stdio.h>
#include<stdio.h>
#include<string.h>
%}
%%
S:A B
 ;	
A:'a'A'b'
 |
 ;
B:'b'B'c'
 |
 ;
%%
int main()
{
	
	printf("\nEnter a string:\n");
	yyparse();
	printf("\n Correct\n");
	return 0;
}
int yyerror()
{
	printf("\nError\n");
	exit(0);
	
}	
