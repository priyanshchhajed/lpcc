%{
#include<stdio.h>
%}

%%
"{"                   {printf("opening curly brace:%s\n",yytext);}
"}"                   {printf("closing curly brace:%s\n",yytext);}
"="                   {printf("assignment operator:%s\n",yytext);}
";"                   {printf("semicolon\n",yytext);}
[0-9]+                {printf("number:%s\n",yytext);}
","                   {printf("comma:%s\n",yytext);}
(int|char|string)     {printf("keywords/datatypes:%s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier: %s\n", yytext); }
[-+*/]                {printf("arithmetic operators:%s\n",yytext);}
[\t\n]+               { /* Ignore whitespace */ }
%%

int yywrap(void){
}

int main(){
yyin=fopen("c_program.c","r");
yylex();
fclose(yyin);
return 0;
}