%{
#include<stdio.h>
%}
alpha[a-zA-Z]
digit[0-9]
%%
(int|float|char) printf("Keyword");
{alpha}({alpha}|{digit})* printf("Identifier");
{digit}+ printf("Constants");
[+|-|*|%] printf("Operators");
[!|,|.|?] printf("Punctuation mark");
%%
int yywrap()
{
}
int main()
{
 yylex();
 return 0;
}
