%{
	/* Declaration section */
	#include<stdlib.h>
	#include<stdio.h>
	#include<assert.h>

%}

DIG [0-9]
L [a-zA-Z_]

%%

[\t]+|[\n]+		/*Ignore whitespaces and newline*/ ;

#include[ ]*<[^>]+>    printf("%s ----> Header file\n",yytext);
int|float|char|double|struct|union|enum  printf("%s -----> Data Type\n", yytext); 

auto|break|switch|case|do|while|for|if|else[ ]*if|else|default|return|typedef 	printf("%s ----> Keyword\n",yytext);
L?\"(\\.|[^\\"])*\"	printf("%s -----> string literal\n",yytext);
{DIG}+		printf("%s -----> Numeral\n", yytext); 
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
