
%{
/* Definition section */
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}

digit [0-9]
binopr [+-/*%^=><&|"=="|"!="|">="|"<="]
char [a-zA-Z_]
ex ({digit}{binopr}{digit}{binopr}?)+                   


EXP {char}({binopr}|{digit}|{char})*   
num {digit}+

unopr [~!]


space [ \t]
/* Rule Section */
%%
XX {printf("XX\n"); return (XX);} 
IF {printf("IF\n"); return (IF);}               /*Warning about rule could mean its already bein satisfied by another rule on top */
ELSE {printf("ELSE\n");return (ELSE);}
{ex} {printf("EXP-%s\n",yytext);return (EX);}
{EXP} {printf("EXP-%s\n",yytext);return (EXP);}	
{space} ;
[\n] {return 0;}

. {return yytext[0];}

%%

int yywrap()
{
return 1;

}

