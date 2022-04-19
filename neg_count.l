%{
#include<stdio.h>
int count=0;
%}

%%
-[0-9]+  { printf("%s is a neg number\n", yytext); count++; }
[0-9]+   {printf("%s is not a neg number\n", yytext);;}
%%

int yywrap(){
    return 1;
}

int main(){
    extern FILE *yyin;
    yyin=fopen("number.txt","r");
    yylex();
    printf("neg count : %d",count);
    return 0;
}