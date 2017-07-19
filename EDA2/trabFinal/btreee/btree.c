

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "btree.h"
#include "time.h"



void novaBt(btree **t){
  *t = malloc(sizeof(**t));
  (*t)->folha=1;
  (*t)->n=0;
}


void inserebt(btree **t, char *k){

  //int i; 
  struct  btree *x;

  if ((*t)->n == 2*ordem -1) { /*parte nó*/
    novaBt(&x);
    x->filho[0]=*t;
    *t=x;
    x->folha=0;
    parte(x,0);
  };
  insere_n_cheia(*t,k);
}


void insere_n_cheia(btree *t, char *k){

  int i, j;
  if (t->folha) { /*insere no local adequado*/
    for (i=0; ((i < t->n) && strcmp(t->chave[i], k) < 0); i++);
      for (j=t->n; j>i; j--) 
        t->chave[j] = t->chave[j-1];
        t->chave[i]=strdup(k);
        t->n = t->n + 1;
  }
  else{
    for (i=0;(i < t->n) && strcmp(t->chave[i], k) < 0; i++);
  /* t->filho[i]; ou le do disco*/
      if (t->filho[i]->n == 2*ordem -1){ /*se está cheia*/
        parte(t,i);
        insere_n_cheia(t,k);
      }
      else{ 
        insere_n_cheia(t->filho[i],k);
      }
  }; 
}
    
void parte(btree *t, int i){

  int j; 
  btree *z= malloc(sizeof(*t));
  z->folha=t->filho[i]->folha;
  z->n = t->filho[i]->n= ordem-1;
  /*copia chaves de filho i para novo*/
  for (j=0;j <ordem-1 ;j++) 
    z->chave[j]=t->filho[i]->chave[ordem+j];
  if (!z->folha){
    for (j=0;j<ordem ;j++) 
      z->filho[j]=t->filho[i]->filho[ordem+j];
  }
  for (j=t->n;j>i;j--) 
    t->chave[j]=t->chave[j-1];
  for (j=t->n;j>i;j--)
    t->filho[j+1]=t->filho[j];
  t->chave[i]=t->filho[i]->chave[ordem-1];  
  t->filho[i+1]=z;
  t->n=t->n+1;
}



void lista(btree *t, int b){ 
  int i,j;

  if(! (t->folha)){
    for (i=t->n;i>=0;i--) {
      lista(t->filho[i],b+3);} 
  }
  for (i=t->n-1; i>=0;i--) {
    for (j=0;j<b;j++) printf(" ");
      printf("|%s|\n", t->chave[i]);
  };
  printf("\n");
}


  int existebt(btree *t, char *k){
    int i;
    for (i=0; i < t->n; i++) {
      if (strcmp(t->chave[i], k) == 0) { // encontrou 
        return 1;
      }
      else if (strcmp(t->chave[i], k) > 0) { 
        break;
      }
    }
    
    if (t->folha){ 
      return 0;
    }
    else{ 
      return existebt(t->filho[i], k);
    }
  }

  /*int removebt(btree *t, char *ch){
    int i = 0;
    while((i < t->n) && strcmp(t->chave[i],ch) < 0) i++;
    if((i < t->n)  && (t->folha) && strcmp(t->chave[i],ch) == 0){
        if(t->n > ordem - 1){
            t->chave[i] = NULL;
            free(t->chave[i]);
            return (1);
        }
        else
            return(0);
            //Supostamente tinha que aceder ao "outro" filho para pedir emprestado um flho
    }
    if ((i < t->n) && (!t->folha) && strcmp(t->chave[i],ch) == 0){
        if(t->filho[i]->n < maxchaves && t->filho[i+1]->n > ordem - 1)
        {
            t->filho[i]->chave[t->filho[i]->n +1] = t->chave[i];
            t->chave[i] = t->filho[i+1]->chave[0];
            t->filho[i]->chave[t->filho[i]->n +1] = NULL;//Vale a pena??
            free(t->filho[i]->chave[t->filho[i]->n + 1]);
            //aqui ""olasd
        }
    }
    if (!t->folha) return (removebt(t->filho[i], ch));
  }*/







          


