
%%
[0-9]+    printf("< int_number , %s>\n" , yytext);
"if"      printf("< if_kw , %s>\n" , yytext);
"=+"      printf("< add , %s>\n" , yytext);
"=-"      printf("< sub , %s>\n" , yytext);
">"       printf("< gra , %s>\n" , yytext);
"<"       printf("< low , %s>\n" , yytext);
"=="      printf("< equ , %s>\n" , yytext);
"="       printf("< assignment , %s>\n" , yytext);
[{}(),]   printf("< delimiter , %s>\n" , yytext);

[_a-zA-Z][_a-zA-Z0-9]*  printf("< id , %s>\n" , yytext);

";" printf("< semicolon , %s>\n", yytext);
\n        ;
.         ;

%%
