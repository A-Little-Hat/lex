%{
#include<stdio.h>
%}
%%
[a-z]   {printf("%s is a small character\n", yytext);}
[A-Z]   {printf("%s is a capital character\n", yytext);}
[0-9]   {printf("%s is a digit\n", yytext);}
[ ]     {printf("%s is a space\n", yytext);}
[\n]    {printf("%s is a newline\n", yytext);}
[\t]    {printf("%s is a tab\n", yytext);}
.       {printf("%s is a special character\n", yytext);}
%%
int yywrap(){
    return 1;
}
int main(){
    extern FILE *yyin;
    yyin=fopen("index.txt","r");
    yylex();
    return 0;
}