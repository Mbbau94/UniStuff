#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "trie.h"



int  main()
{ trie *t=nova();
  char v[32];
 char comando[32];

while (1) {
    scanf ("%s", comando);
    if (!strcmp (comando, "i")) {
      scanf ("%s", v);
      insere(t, v);
      printf ("inseriu %s\n", v);
    }
    else if (!strcmp (comando, "l")) {
      lista_ord(t,v,0);
    }
    else if (!strcmp (comando, "min")) {
      min(t, v);
      printf("min: %s\n", v);
    }
    else if (!strcmp (comando, "q")) {
      exit (0);
    }
}
}

