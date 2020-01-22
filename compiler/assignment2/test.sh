yacc -d sample.y
lex sample.l
gcc lex.yy.c y.tab.c
./a.out
