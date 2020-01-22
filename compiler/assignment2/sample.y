%token NUMBER VARIABLE
%{

	#include<stdio.h>
%}


%left '+''-'
%left '*''/''%'
%left '('')'

%%

S:VARIABLE'='E {
		printf("Entered arithmetic expression is valid\n");
		return 0;	
	}
E:E'+'E 
	|E'-'E
	|E'*'E
 	|E'/'E
	|'('E')'
	|VARIABLE
	|NUMBER
;
%%

void main(){
	printf("\n Enter any arithmetic expression");
	yyparse();
	
} 

void yyerror(){
	printf("This is not valid statement\n");
	
	
}
