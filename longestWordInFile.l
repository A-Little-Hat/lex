%{
#include<stdio.h>
#include<string.h>
int max=0;
char a[100];
%}


%%

[aA-zZ]*  { if(yyleng>max){max=yyleng; strcpy(a,yytext);} } 

.  {;}


%%



int yywrap(){
    return 1;
}



int main(){
    extern FILE *yyin;
    yyin=fopen("index.txt","r");
    yylex();
    printf("Longest word is ");
    puts(a);
    printf("Length = %d",max);
}