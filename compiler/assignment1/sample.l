%{
	/* Declaration section */
	//#include <stdlib.h>
	//#include <stdio.h>

%}

%%

[\t]+|[\n]+		/*Ignore whitespaces and newline*/ ;

#include[ ]*<[^>]+>    printf("%s ----> Header file\n",yytext);

.               /*printf("%s\n", yytext)*/;

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
