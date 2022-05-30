%{
    #include"stdio.h"
%}
%%
[a-zA-Z0-9 ]+    {}
.               {printf("\n%s is a special character",yytext);}
%%
int yywrap(){return 1;}
int main(){
    printf("enter a string : ");
    yylex();
    getch();
    return 0;
}