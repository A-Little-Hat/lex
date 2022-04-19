%{
    #include <stdio.h>
%}

%%
[0-9]+ {printf("It is a number\n");}
[aA-zZ]+ {printf("It is an alphabet\n");}
.  {printf("It is a special character\n");}
%%

int yywrap()
{
    return 1;
}

void main()
{
    yylex();
}