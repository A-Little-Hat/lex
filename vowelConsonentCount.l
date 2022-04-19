/*** Definition Section has two variables
which can be accessed inside yylex()
and main() ***/
%{
int v_count = 0;
int c_count = 0;
%}
%%
[aeiouAEIOU] {v_count++;}
[a-zA-Z] {c_count++;} 
.       {}
\n    {return 0;}
%%
int yywrap(){
    return 1;
}
int main(){
printf("enter a string : ");
yylex();
printf("\nNumber of vowels in the string is %d Number of consonants in the string %d\n",v_count,c_count);
return 0;
}