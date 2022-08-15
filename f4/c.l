%{
    #include<stdio.h>
    int k=0,i=0,o=0;
%}
%%
(auto|break|case|char|continue|do|default|const|double|else|enum|extern|for|if|goto|float|int|long|register|return|signed|static|sizeof|short|struct|switch|typedef|union|void|while|volatile|unsigned) { k++;}
("_"|[a-z]|[A-Z])("_"|[a-z]|[A-Z]|[0-9])* {i++;}
"#include".* ;
"#"[a-zA-Z]+.* ;
[;] ;
[ ] ;
[,] ;
[0-9]* ;
[{}()] ;
[*+%/-] {o++;}
[\n] ;
%%
int main(){
    yyin=fopen("d.c","r");
    yylex();
    printf("Keyword: %d Identifiers: %d Operators: %d\n",k,i,o);
    return 0;
}
int yywrap(){}
