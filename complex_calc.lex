%option noyywrap

%{
#define YYSTYPE complex

#include <stdio.h>
#include <stdlib.h>
#include "complex_cal.h"
#include "complex_cal.tab.h"

void RmWs(char* str);
%}

/* Add your Flex definitions here              */
/* Some definitions are already provided to you*/
op [-+*/()]
ws [ \t]+
digits [0-9]
number (0|[1-9]+{digits}*)\.?{digits}*
im [i]
complexnum {ws}*[-]*{ws}*{number}{ws}*[+|-]{ws}*{number}{ws}*{im}{ws}*

void RmWs(char* str) {
  int i = 0, j = 0;
  char temp[strlen(str) + 1];
  strcpy(temp, str);
  while (temp[i] != '\0') {
    while (temp[i] == ' ')
      i++;
    str[j] = temp[i];
    i++;
    j++;
  }
 str[j] = '\0';
}