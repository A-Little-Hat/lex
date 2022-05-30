%{
    #include"stdio.h"
%}
%%
[a-zA-Z]+[_]?[a-zA-Z0-9]*   {printf("Acceptable\n");}
.                           {printf("Unacceptable\n");}
%%
int yywrap(){return 1;}
int main(){
    printf("enter a string : ");
    yylex();
    getch();
    return 0;
}