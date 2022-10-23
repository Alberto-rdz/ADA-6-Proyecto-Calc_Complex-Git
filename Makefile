complex_cal: complex_cal.lex.yy.c complex_cal.tab.c
	gcc -o complex_cal complex_cal.lex.yy.c complex_cal.tab.c

complex_cal.lex.yy.c:
	flex -o complex_cal.lex.yy.c complex_cal.lex
complex_cal.tab.c: complex_cal.tab.h
	bison complex_cal.y 
complex_cal.tab.h:
	bison -d complex_cal.y 
