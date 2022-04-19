%{
#include<stdio.h>
int count = 0, num = 0;
%}
%%
[aA-zZ] {count++;}
[0-9] {num++;}
. {;}
%%
int yywrap(){
    return 1;
}
int main(){
    extern FILE *yyin;
    yyin=fopen("index.txt","r");
    yylex();
    printf(" character : %d",count);
    printf(" number : %d",num);
}