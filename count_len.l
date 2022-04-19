%{
#include<stdio.h>
int count = 0;
%}
%%
. {count++;}
%%
int yywrap(){
    return 1;
}
int main(){
    extern FILE *yyin;
    yyin=fopen("index.txt","r");
    yylex();
    printf("%d\n",count);
    return 0;
}