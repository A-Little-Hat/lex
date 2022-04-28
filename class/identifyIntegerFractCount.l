%{
#include<stdio.h>
int i=0,f=0;
%}

%%
[-][0-9]*[.][0-9]+      {printf("%s is a fractional number\n", yytext); f++; }
[+]?[0-9]*[.][0-9]+     {printf("%s is a fractional number\n", yytext); f++;}
[+]?[-]?[0-9]+              {printf("%s is a integer\n", yytext); i++;}
.                       {printf("%s is a not a number\n", yytext);}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter number : \n");
    yylex();
    printf("fractional numbers : %d\n",f);
    printf("integer numbers : %d",i);
    return 0;
}