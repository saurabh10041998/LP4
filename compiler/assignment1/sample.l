%{
	/* Declaration section */
	#include <stdlib.h>
	#include <stdio.h>

%}

%%

[\t]+		/*Ignore whitespaces*/ ;

. 		printf("%s", yytext);

%%

int main(){
	extern FILE *yyin;
	yyin = fopen("example.c", "r");
	yylex();
	return 0;

}
int yywrap(){
	return 1;
}
