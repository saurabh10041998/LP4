%{

	#include<stdio.h>
	#include "y.tab.h"	

%}

%%

[a-zA-Z]+    return VARIABLE;
[0-9]+       return NUMBER;
[ \t]+	     return 0;
.            ;

%%

int yywrap(){
	return 1;	
}
