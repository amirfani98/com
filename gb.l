%{

#include <stdbool.h>
#include <stdio.h>

int line_number = 1;
bool error_occured = false;

%}


%%
[0-9]+    printf("< int_number , %s>\n" , yytext);
"if"      printf("< if_kw , %s>\n" , yytext);
"=+"      printf("< add , %s>\n" , yytext);
"=-"      printf("< sub , %s>\n" , yytext);
">"       printf("< gra , %s>\n" , yytext);
[0-9]+[a-zA-Z]+				{error_occured = true; return 0;} 
"<"       printf("< low , %s>\n" , yytext);
"=="      printf("< equ , %s>\n" , yytext);
"="       printf("< assignment , %s>\n" , yytext);
[{}(),]   printf("< delimiter , %s>\n" , yytext);

[_a-zA-Z][_a-zA-Z0-9]*  printf("< id , %s>\n" , yytext);

";" printf("< semicolon , %s>\n", yytext);
\n					line_number++;
[ \t\r]					; 
.					{error_occured = true; return 0;}

%%

int yywrap(){return 1;}
int main(void){

yylex();
if(error_occured)
printf("Error in line %d : Bad Input Format!!\n", line_number);

}
