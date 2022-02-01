%{
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}
/*lower case*/
integer [0-9]
op [+-/*%=><&|">="|"<="|"=="|"!="]
alphabet [a-z_]
exp2 ({integer}{op}{integer}{op}?)+                   

exp {alphabet}({op}|{integer}|{alphabet})*   
num {integer}+

space [\t]
%%
XX {return (XX);} 
if {return (if);}
else {return (else);}
{exp2} {return (exp2);}
{exp} return (exp);	
{space} ;
[\n] {return 0;}
. {return yytext[0];}
%%
int yywrap()
{
return 1;
}