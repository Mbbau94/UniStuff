#include <stdio.h>
#include <stdlib.h>
#include "tad_fila.h"

/* nova_fila() - devolve uma nova fila */
struct fila *fila_nova()
{
  struct fila *f = (struct fila *) malloc(sizeof(struct fila));
  
  f->cabeca = f->cauda = NULL;
  return f;
}

/* fila_vazia(f) - testa se a fila f está vazia */
int fila_vazia(struct fila *f)
{
  return(f->cabeca==NULL);
}

/* fila_insere(f, v) - insere o valor v no fim da fila f */
void fila_insere(struct fila *f, int v)
{
  struct lista *l = (struct lista *) malloc(sizeof(struct lista));
  
  l->val   = v;
  l->prox  = NULL;
  
  if (fila_vazia(f)) {
    f->cabeca = f->cauda = l;
  }
  else {
    f->cauda->prox = l;
    f->cauda       = l;
  }
}

/* fila_remove(f) - remove o valor no início da fila f e devolve-o */
int fila_remove(struct fila *f)
{
  if(!fila_vazia(f)) {
    struct lista *cabeca = f->cabeca;
    int vcabeca          = f->cabeca->val;
    
    f->cabeca=f->cabeca->prox;
    free(cabeca);
    
    return(vcabeca);
  }
  else { /* fila vazia */
    return(-1); /* assumimos que os valores da fila são sempre positivos */
  }
}


