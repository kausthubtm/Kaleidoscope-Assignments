%{
#include<stdio.h>  
#include<stdlib.h>  
%} 

%token IF ELSE digit op END alpha

%left '+''-'  
%left '*''/'  
%right '^'  
%right '=' 
%left op 
%left and or
%%
S	:ST END{printf("\n Accepted\n");exit(0);}
ST      :IF'('D')''{'ST'}'
	|IF'('D')''{'ST'}'ELSE'{'ST'}'
	|E';'
	|E';'ST
D	:A C A
	|A
C	:and
	|or
A	:E op E
	|E
E	:alpha '='E
	|E'+'E   
	|E'-'E   
	|E'*'E   
	|E'/'E  
	|E'^'E  
	|'('E')'
	|'-'E
	|digit
	|alpha
	;
%%   
int main()  
{   
 yyparse();  
 yylex();  
 return END;  
}  
yyerror(char *s)  
{  
 printf("\nError");  
}     