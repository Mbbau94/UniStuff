#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "trie.h"


trie *novat(){
  return(malloc(sizeof(trie )));
}


void inseret(trie *t, char *chave)
{

  int i;

  if (*chave==0) {
      //printf ("inseriu2 %s\n", chave);
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
    inseret(t->prox[*chave-Minel],chave+1);
    
  }
}
void lista_ord(trie *t, char *cadeia, int n)
{
	int j;
	if(t->existe){
            *cadeia = 0;
            printf("%s\n", cadeia-n);
	
		
		
            
	}
	for(j=0;j<Nel;j++)
	{
		if(t->prox[j] != NULL)
		{
			*cadeia = j+Minel;
			lista_ord(t->prox[j],cadeia+1,n+1);
		}
	}
}
void min(trie *t,char *cadeia)
{
	int j=0;
        while(t->prox[j] != NULL)
        {
            *cadeia = j + Minel;
            if(t->existe)
            {
                printf("%s\n",cadeia);
            }

            min(t->prox[j],cadeia+1);
            
        }
        j++;
        
}
void max(trie *t,char *cadeia)
{
	int j;
	if(t->existe)
	{
		*cadeia = 0;
	}
	for (j=0;j<Nel;j++)
	{
		if(t->prox[j] != NULL)
		{
			*cadeia = j+Minel;
			max(t->prox[j],cadeia+1);
		}
	}
}
int existet(trie *t, char *chave)
{
	if(*chave == 0)
	{
		return t->existe;
	}
	else if(t->prox[*chave - Minel] == NULL)
	{
		return 0;
	}
	else
	{
		return existet(t->prox[*chave - Minel],chave+1);
	}
}

void trieremove(trie *t, char *chave)
{
    //int i;
    if (*chave == 0)
    {
        t->existe = 0;
    }
    else 
    {
        if( t->prox[*chave - Minel] == NULL)
        {
            return;
        }
        else
        trieremove(t->prox[*chave - Minel], chave+1);
    }
}
void trieremovefull(trie *t, char *chave)
{
    //int i;
    if (*chave == 0)
    {
        t->existe = 0;
        free(t);
    }
    else 
    {
        if( t->prox[*chave - Minel] == NULL)
        {
            return;
        }
        else
            trieremovefull(t->prox[*chave - Minel], chave+1);
    }
}
/*trie proxima(trie *t,char *chave,char *prox)
{
    	if(*chave == 0)
	{
            *prox = t->prox;
	}
	else if(t->prox[*chave - Minel] == NULL)
	{
            prox = NULL;
            return *prox;
	}
	else
	{
            return proxima(t->prox[*chave - Minel],chave+1,prox);
	}
}*/