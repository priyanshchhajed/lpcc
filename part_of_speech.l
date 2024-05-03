%{
#include<stdio.h>
%}

%%
(Destiny) {printf("Noun:%s\n",yytext);}
(Dread|Run|arrives) {printf("verb:%s\n",yytext);}
(it) {printf("pronoun:%s\n",yytext);}
(from) {printf("preposition:%s\n",yytext);}
(same) {printf("adjective:%s\n",yytext);}
(all|the) {printf("Determiner/article:%s\n",yytext);}
[\t\n]+ 
%%

int yywrap(void){}

int main(){
yyin=fopen("input.txt","r");
yylex();
fclose(yyin);
return 0;
}