
%{
  #include<stdio.h>
%}
 
%token digit

%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
E : T        {
                printf("Result = %d\n", $$);
                return 0;
            };
 
T :
    T '+' T { $$ = $1 + $3; }
    | T '-' T { $$ = $1 - $3; }
    | T '*' T { $$ = $1 * $3; }
    | T '/' T { $$ = $1 / $3; }
    | T '%' T { $$ = $1 % $3; }
    | '-' digit { $$ = -$2; }
    | '(' T ')' { $$ = $2; }
    | digit { $$ = $1; };
%%
 
int main() {
    printf("Enter the expression\n");
    yyparse();
}
 

int yyerror(char* s) {
    printf("\nExpression is invalid\n");
    exit(0);
}