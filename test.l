%{
    #include"stdio.h"
    int a;
%}

%%
[\n] {printf("%d\n",a=a*a);}
%%
int yywrap()
{
    return 1;
}
int main()
{
    printf("enter the value of a: ");
    scanf("%d",&a);
    yylex();
}