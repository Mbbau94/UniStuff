#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "trie.h"


trie *nova()
{
  return(malloc(sizeof(trie )));
}


void insere(trie *t, char *chave)
{

  int i;

  if (*chave==0) {
    t->existe =1;
  }
  else {
    if (t->prox[*chave - Minel]==NULL) {
      t->prox[*chave - Minel]= malloc(sizeof(trie));
      t->prox[*chave - Minel]->existe=0;
      for (i=0;i<Nel;i++) {
	t->prox[*chave - Minel]->prox[i]=NULL; 
      }
    }
    insere(t->prox[*chave-Minel],chave+1);
  }
}

