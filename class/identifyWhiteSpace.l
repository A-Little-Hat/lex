%{
    int count=0;
%}
%%
[ ] {printf("%s is a white space.\n",yytext);count++;}
.    {}
%%
int yywrap(){return 1;}
int main(){
    printf("enter a string :");
    yylex();
    printf("total whitespace is %d",count);
    return 0;
}