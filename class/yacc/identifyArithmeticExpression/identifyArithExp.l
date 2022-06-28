%{
    #include"y.tab.h"
%}
%%
[0-9]+(\.[0-9]*)?   return NUMBER;
\n                  return 0;
.                   return yytext[0];
%%
int yywrap(){return 1;}