%{
#include<stdio.h>
int n=0,p=0;
%}

%%
[-][0-9]*[.][0-9]+      {printf("%s is a negative fractional number\n", yytext); n++; }
[+]?[0-9]*[.][0-9]+     {printf("%s is a positive fractional number\n", yytext); p++;}
.                       {printf("%s is a not a fractional number\n", yytext);}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter number : \n");
    yylex();
    printf("negative fractional numbers : %d\n",n);
    printf("positive fractional numbers : %d",p);
    return 0;
}