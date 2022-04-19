
%{
int number, remain, idx = 0;
char out[1000];
%}

%%
[0-9]+ {number=atoi(yytext);
        idx=0;
        if(number==0){idx = 1; out[0] = '0';}
        else{
         while(number>0){
          remain =  number % 2;
          out[idx] = remain + '0';
          number/=2;
          idx++;
          }
        }
        printf("Binary is : ");
        for(int i=idx-1;i>=0;i--) printf("%c", out[i]);
        printf("\n");
        }
. {}
\n    {return 0;}
%%
 
int yywrap(){
    return 1;
}
int main(){
    printf("Enter the Decimal Number : "); 
yylex();

return 0;
}