
%{
#include <stdio.h>
#include <stdlib.h>
%}


%%
([A-Za-z0-9]+[A-Za-z0-9\._-]*[A-Za-z0-9]+@[A-Za-z0-9]+[\_-]) ;

([A-Za-z0-9]+[A-Za-z0-9\.\_-]*[A-Za-z0-9]+@[A-Za-z0-9]+([\.][A-Za-z0-9]+)*) {
  printf("%s\n", yytext);
}

.  ;
\n ;
[[:space:]] ;

%%

int main() {
  yylex();
  return 0;
}
