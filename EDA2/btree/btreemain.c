#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "btree.h"



int  main()
{ btree *t;
  int v;
 char comando[32];
nova(&t);
while (1) {
    scanf ("%s", comando);
    if (!strcmp (comando, "i")) {
      scanf ("%d", &v);
      insere(&t, v);
      printf ("inseriu %d\n", v);
    }
    else if (!strcmp (comando, "l")) {
      lista(t,0);
    }
    else if (!strcmp (comando, "q")) {
      exit (0);
    }
}
}

