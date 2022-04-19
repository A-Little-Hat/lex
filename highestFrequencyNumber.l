/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int arr[129]={0};
%}
 
/*** Rule Section has two rules, first rule matches with any character except new line character and second rule does not take input after the enter ***/
%%
. {arr[(int)yytext[0]]++;}
\n    {return 0;}
%%
 
/*** Code Section prints the most frequent character 
 and its frequency present in the given input***/
int yywrap(){}
int main(){
  int i, freq=-32700, character;
    printf("Enter the string: ");
    yylex();
    for(i = 0;i < 129;i++){
        if(freq < arr[i]){
            freq = arr[i];
            character = i;
        }
    }
    printf("\nFrequency is %d and the character with the highest frequency is %c",freq, character);
    if(character==' ') printf("[space]");
    printf("\n");
    return 0;
}