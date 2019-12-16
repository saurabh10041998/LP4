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
	yylex();
	return 0;

}
int yywrap(){
	return 1;
}
