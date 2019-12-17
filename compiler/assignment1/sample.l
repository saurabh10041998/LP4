%{
	/* Declaration section */
	#include<stdlib.h>
	#include<stdio.h>
	#include<assert.h>

%}

%%

[\t]+|[\n]+		/*Ignore whitespaces and newline*/ ;

#include[ ]*<[^>]+>    printf("%s ----> Header file\n",yytext);

.               /*printf("%s\n", yytext)*/;

%%

int main(int argc, char* argv[]){
	
	assert(argc >= 2);
	extern FILE *yyin;
	yyin = fopen(argv[1], "r");
	yylex();
	return 0;

}
int yywrap(){
	return 1;
}
