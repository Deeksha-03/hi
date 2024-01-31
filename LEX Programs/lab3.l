%{
#include<stdio.h>
%}
%%
int|char|float|else|for|void|mainz\while {printf("%s is keyword\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("%s is identifier\n",yytext);}
[0-9]* {printf("%s is a constant\n",yytext);}
[+*^%/<>&=()|]* {printf("%s is operator\n",yytext);}
[?|,.'";:]* {printf("%s is punctuation\n",yytext);}
%%
int yywrap()
{
}
int main()
{
printf("Enter input\n");
yylex();
return 0;
}
