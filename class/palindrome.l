%{
    int i, j, flag;
%}
%%
[a-zA-z0-9]*    { for (i = 0, j = yyleng - 1; i <= j; i++, j--) {
                        if (yytext[i] == yytext[j]) {
                            flag = 1;
                        }else{
                            flag = 0;
                            break;
                        }
                    }
                    if (flag == 1)
                    printf("Given string is Palindrome");
                    else
                        printf("Given string is not Palindrome"); 
                }
%%
int yywrap()
{
    return 1;
}
int main()
{
    printf("Enter a string :");
    yylex();
    return 0;
}  