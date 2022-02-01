%{
#include<stdio.h>
%}
%token if exp else exp2 XX
%%
stmts     : stmts stmt ';'
          | stmt ';' 
          ; 

stmt      : matched
          | unmatched
          ;

matched   : if'(' exp ')'matched else matched
          | XX
          ;

unmatched : if '(' exp ')' stmt
          | if '(' exp ')' matched else unmatched
          ;
%%
void main()
{
yyparse();
printf("\nValid");
}
void yyerror()
{
printf("\nInvalid");
exit(0);
}