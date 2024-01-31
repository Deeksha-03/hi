%{
#include<stdio.h>
%}
%%
[+|-]?[0-9]*[.][0-9]* {printf("%s is a floating-point number\n",yytext);}
.* {printf("%s is not a floating-point number\n",yytext);}
%%
int yywrap()
{
}
int main()
{
printf("Enter the string : ");
yylex();
return 0;
}

