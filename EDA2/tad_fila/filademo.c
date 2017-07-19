#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tad_fila.h"

void help()
{
  printf("Comandos:\n");
  printf("  i X\tinsere o valor X na fila\n");
  printf("  r\tremove (e mostra) o valor no topo da fila\n");
  printf("  e\tmostra se a fila está vazia\n");
  printf("  h\tmostra estas instruções\n");
  printf("  q\tsai do programa\n\n");
}

int main()
{
  struct fila *f = fila_nova();
  int v;
  char comando[32];
 
  help();
  
  while (1) {
    scanf ("%s", comando);
    if (!strcmp (comando, "i")) {
      scanf ("%d", &v);
      fila_insere (f, v);
      printf ("inseriu %d\n", v);
    }
    else if (!strcmp (comando, "r")) {
      v = fila_remove (f);
      printf ("remove -> %d\n", v);
    }
    else if (!strcmp (comando, "e")) {
      printf ("vazio -> %s\n", fila_vazia (f)? "TRUE": "FALSE");
    }
    else if (!strcmp (comando, "h")) {
      help();
    }
    else if (!strcmp (comando, "q")) {
      printf("Adeus!\n");
      exit (0);
    }
}
}

