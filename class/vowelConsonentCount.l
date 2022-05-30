%{
int v = 0;
int c = 0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;} 
.       {}
%%
int yywrap(){
    return 1;
}
int main(){
printf("enter a string : ");
yylex();
printf("\nNumber of vowels in the string is %d Number of consonants in the string %d\n",v,c);
getch();
return 0;
}