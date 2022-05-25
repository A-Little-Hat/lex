%{
    int count=1;
%}
%%
[ ] {count++;}
.    {}
%%
int yywrap(){return 1;}
int main(){
    printf("enter a string :");
    yylex();
    printf("total word is %d",count);
    return 0;
}