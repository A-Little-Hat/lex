%{
int f1=0,f2=0;
char oper;
float op1=0,op2=0,ans=0;
void eval();

%}

DIGIT [0-9]
NUM {DIGIT}+(\.{DIGIT}+)?
OP [*/+-]

%%

{NUM} {
	if(f1==0)
	{
		op1=atof(yytext);
		f1=1;
	}

	else if(f2==-1)
	{
		op2=atof(yytext);
		f2=1;
	}

	if((f1==1) && (f2==1))
	{
		eval();
		f1=0;
		f2=0;

	}
}

{OP} {
	
	oper=(char) *yytext;
	f2=-1;
}

[\n] {

	if(f1==1 && f2==1)
	{	
		eval;
		f1=0;
		f2=0;
	}
}	

%%
int yywrap()
{
    return 1;
}

int main()
{
	yylex();
}


void eval()
{
	switch(oper)
	{
		case '+':
			ans=op1+op2;
			break;

		case '-':
			ans=op1-op2;
			break;

		case '*':
			ans=op1*op2;
			break;

		case '/':
			if(op2==0)
			{
				printf("ERROR");
				return;
			}
			else
			{
				ans=op1/op2;
			}
			break;
		default:
			printf("operation not available");
			break;
	}
	printf("The answer is = %lf \n",ans);
}