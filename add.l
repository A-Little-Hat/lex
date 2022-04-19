%{
#include<stdio.h>
int a,b;
%}

%%
 {printf("%d\n",a+b);}
%%

int yywrap(){
    return 1;
}
int main(){
    printf("enter a and b\n");
    scanf("%d%d",&a,&b);
    yylex();
}