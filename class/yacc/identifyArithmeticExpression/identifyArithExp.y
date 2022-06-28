%{
    #include<stdio.h>
    #include<conio.h>
    int valid = 1;
%}
%token NUMBER id op
%left '+' '-'
%left '*' '/'
%left '(' ')'
%%
E:E'+'E
 |E'-'E
 |E'*'E
 |E'/'E
 |'('E')'
 |NUMBER
;
%%
int main(){
    printf("\n Enter the valid arithmatic Expression : \n");
    yyparse();
    if(valid){
        printf("\nEntered arithmatic Expression is valid\n\n");
    }
    getch();
}
int yyerror(){
    valid = 0;
    printf("\nEntered arithmatic Expression is Invalid.");
    return 0;
}