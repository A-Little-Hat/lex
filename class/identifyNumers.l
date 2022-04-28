%{
#include<stdio.h>
%}

%%
[-][0-9]*[.][0-9]+      {printf("%s is a number\n", yytext);}
[+]?[0-9]*[.][0-9]+     {printf("%s is a number\n", yytext);}
[+]?[-]?[0-9]+              {printf("%s is a number\n", yytext);}
.                       {printf("%s is a not a number\n", yytext);}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter number : \n");
    yylex();
    return 0;
}