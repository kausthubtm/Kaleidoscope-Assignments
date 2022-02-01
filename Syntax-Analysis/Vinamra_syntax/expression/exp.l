
%{
 #include <stdlib.h>
 void yyerror(char *);
 #include "y.tab.h"
 extern yylval;
%}
%%

[0-9]+ {
 yylval = atoi(yytext);
 return INTEGER;
 }

[-+()=/*\n] { return *yytext; }
 
[ \t] ; /*whitespace*/

 /* anything else error */
. yyerror("invalid");
%%
int yywrap(void) {
 return 1;
} 