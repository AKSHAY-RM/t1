%{
#include<stdio.h>
#include<string.h>
int c=0;
int mc=0;
%}
%%
"//"[^\n]* { c++;}
"/*"[^*/]*"*/" { mc++; 
		for(int i=0;yytext[i]!='\0';i++)
			{
			if(yytext[i]=='\n')
				mc++;
			}
	       }
. {fprintf(yyout,"%s",yytext);}
\n { fprintf(yyout,"%s",yytext);}
%%
int main()
{
yyin= fopen("v.txt","r");
yyout = fopen("y.txt","w");
yylex();
printf("sl=%d\n multiline comments=%d\n",c,mc);
return 0;
}
int yywrap()
{
return 1;
}
