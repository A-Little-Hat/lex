%{
    int lCount=0, uCount = 0;
%}
%%
[a-z] {printf("%s is a lower case.\n",yytext);lCount++;}
[A-Z] {printf("%s is a white space.\n",yytext);uCount++;}
.    {}
%%
int yywrap(){return 1;}
int main(){
    printf("enter a string :");
    yylex();
    printf("total uppercase is %d\n",uCount);
    printf("total lowercase is %d",lCount);
    return 0;
}