%{
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}
%option noyywrap
%%
"if" {return IF;}
"else" {return ELSE;}
["||"] {return or;}
["&&"] {return and;}
["<"|">"|"=="|"!="|"<="|">="] {return op;}
[0-9]+ {return digit;}
[a-zA-Z]+ {return alpha;}
[\n];
[\t];
"$" {return END;}
. {return yytext[0];}
%%