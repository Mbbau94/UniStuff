

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "btree.h"



void nova(btree **t)
{*t = malloc(sizeof(**t));
(*t)->folha=1;
(*t)->n=0;}


void insere(btree **t, int k)
{int i; 
struct  btree *x;
 if ((*t)->n == 2*ordem -1) { /*parte nó*/
   nova(&x);
   x->filho[0]=*t;
   *t=x;
   x->folha=0;
   parte(x,0);
 };
 insere_n_cheia(*t,k);
 }


void insere_n_cheia(btree *t, int k)
{
  int i, j;
 if (t->folha) { /*insere no local adequado*/
  for (i=0;((i<t->n)&&(t->chave[i] < k)); i++);
  for (j=t->n;j>i;j--) t->chave[j]=t->chave[j-1];
  t->chave[i]=k;
   t->n=t->n+1;
 }
 else
   {
   for (i=0;(i<t->n)&&(t->chave[i] < k); i++);
/* t->filho[i]; ou le do disco*/
   if (t->filho[i]->n == 2*ordem -1) /*se está cheia*/
     {
     parte(t,i);
     insere_n_cheia(t,k);}
   else{ 
     insere_n_cheia(t->filho[i],k);}
   }; 
}
    
void parte(btree *t, int i)
{int j; 
 btree *z= malloc(sizeof(*t));
 z->folha=t->filho[i]->folha;
 z->n = t->filho[i]->n= ordem-1;
 /*copia chaves de filho i para novo*/
   for (j=0;j <ordem-1 ;j++) 
     z->chave[j]=t->filho[i]->chave[ordem+j];
   if (!z->folha)     
{
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



void lista(btree *t, int b)
{ int i,j;

 if(! (t->folha)){
   for (i=t->n;i>=0;i--) {lista(t->filho[i],b+3);} 
 }
 for (i=t->n-1; i>=0;i--) {
for (j=0;j<b;j++) printf(" ");
printf("|%d|\n", t->chave[i]);};
 printf("\n");
}



          


