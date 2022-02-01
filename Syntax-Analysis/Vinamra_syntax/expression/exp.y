%token INTEGER VARIABLE
%left '+' '-'
%left '*' '/'
%%

expr:
 INTEGER
 | VARIABLE { $$ = sym[$1]; }
 | expr '+' expr { $$ = $1 + $3; }
 | expr '-' expr { $$ = $1 - $3; }
 | expr '*' expr { $$ = $1 * $3; }
 | expr '/' expr { $$ = $1 / $3; }
 | '(' expr ')' { $$ = $2; }
 ;
%%
void yyerror(char *s) {
 printf("%s\n", s);
 return 0;
}
int main() {
 yyparse();
 return 0;
}