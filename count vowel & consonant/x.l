%{
	int vow_count=0;
	int const_count =0;
%}

%%
[aAeEiIoOuU] {vow_count++;}
[a-zA-Z] {const_count++;}
%%
int yywrap(){}
int main()
{
	printf("Enter your string : \n ");
	yylex();
	printf("number of vowel : %d\n", vow_count);
	printf("number of consonent : %d\n", const_count);
	return 0;
}

