%%
"int"     printf("< int , %s>\n " , yytext);
"if"      printf("< if , %s>\n " , yytext);
"=+"      printf("< add , %s>\n " , yytext);
"=-"      printf("< sub , %s>\n " , yytext);
">"       printf("< gra , %s>\n " , yytext);
"<"       printf("< low , %s>\n " , yytext);
"=="      printf("< equ , %s>\n " , yytext);
[{}(),]   printf("< deli , %s>\n " , yytext);

[_a-zA-Z][_a-zA-Z0-9]*  printf("< id , %s>\n " , yytext);

";" printf("< semicolon , %s>\n ", yytext);
.         ;


%%
