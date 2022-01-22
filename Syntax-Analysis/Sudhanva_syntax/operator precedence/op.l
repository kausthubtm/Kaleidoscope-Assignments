%{
    #include<stdio.h>
    #include "y.tab.h"
    extern yylval;
%}
 
%%
[0-9]+    {
              yylval = atoi(yytext);
              return digit;
            }
 

[ \t\v]+ ;       
 
[\n]            { return 0; }
[-+/%*]          { return *yytext; }
. yyerror("ivalid");
%%
int yywrap()
{
return 1;
}
