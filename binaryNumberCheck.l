%{

#include<stdio.h>

%}


%%
^((0|1)+)(\.(0|1))?((0|1)*)$ { printf("It is a binary number"); }
.*  { printf("It is not a binary number"); }

%%



int yywrap(){
    return 1;
}


int main(){
    printf("Enter the number\n");
    yylex();
    return 0;
}