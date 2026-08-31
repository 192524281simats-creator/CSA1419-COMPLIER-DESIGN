%{
#include <stdio.h>
%}

%%
[0-9]+(\.[0-9]+)?    { printf("Constant: %s\n", yytext); }
[ \t\n]+             ;
.                    ;
%%

int main()
{
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}