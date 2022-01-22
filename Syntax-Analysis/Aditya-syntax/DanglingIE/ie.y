%{
#include<stdio.h>
int flag=0;
%}

%token IF EXP ELSE EX XX

%%
stmts     : stmts stmt ';'
          | stmt ';' 
          ; 

stmt      : matched
          | unmatched
          ;

matched   : IF '(' EXP ')' matched ELSE matched
          | XX
          ;

unmatched : IF '(' EXP ')' stmt
          | IF '(' EXP ')' matched ELSE unmatched
          ;
%%
void main()
{
printf("Enter data:\n");
yyparse();
if(flag==0)
{
printf("\nValid");
}
}
void yyerror()
{
flag=1;
printf("\nInvalid");
}

