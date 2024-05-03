%{
#include<stdio.h>
%}
%%
"{" {printf("opening curly brace:%s\n",yytext);}
"}" {printf("closing curly brace:%s\n",yytext);}
"(" {printf("oppening round bracket:%s\t",yytext);}
")" {printf("closing round bracket:%s\t",yytext);}
";" {printf("semicolon:%s\n",yytext);}
(int|char|string|float) {printf("keyword:%s\t",yytext);}
"=" {printf("assignment operator:%s\t",yytext);}
[0-9]+ {printf("number:%s\t",yytext);}
"printf"    { printf("Function:%s\t",yytext); }
"inti"    {printf("no space between int and identifier\t");}
[a-zA-Z_][a-zA-Z0-9_]* {printf("identifier:%s\t",yytext);}
[-+*/] {printf("Arithmetic operator:%s\t",yytext);}
\"([^\"]|\.)*\"  { printf("String Literal: %s\n", yytext); }

[\t\n]+ 
%%
int yywrap(void){
}
int main(){
yyin=fopen("input.c","r");
yylex();
fclose(yyin);
return 0;
}