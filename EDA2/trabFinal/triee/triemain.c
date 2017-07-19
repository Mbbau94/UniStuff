#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "trie.h"
#include "time.h"

char *leFicheiro(char *fileName);

int main(){
	int numero;
	//char v[32];

	printf("Insira o numero de palavras \n");
  	scanf ("%i", &numero);
  	printf("\n");
		
	trie *t=novat();

	clock_t start = clock();

	char *buffer = leFicheiro("words_en.txt");
	char *buffer3=strdup(buffer); //duplica para usar + tarde no remove

	//printf("%s /n", buffer3);
	char *token;
	token = strtok(buffer, "\n");
	
	int i=0;
	while( token != NULL ) {
	    if(i==numero){
	        break;
	    }

	    token = strtok(NULL, "\n");
	    
	    inseret(t, token);
	    i=i+1;
	}
	clock_t end = clock();
	float seconds = (float)(end - start) / CLOCKS_PER_SEC;
  	printf("**TRIE** \n");
  	printf("Tempo a inserir %f \n", seconds);
  	//lista_ord(t, v, 0);

  	//
  	//2º ficheiro para pesquisar
  	//

  	clock_t startenct = clock();
  	char *buffer2 = leFicheiro("words_s.txt");

  	char *token2 = strtok(buffer2, "\n"); 

  	int f=0;
	int encontrou=0;
	
	while( token2 != NULL ) {
	    if(f==numero/10){
	        break;
	    }
	           
	    token2 = strtok(NULL, "\n");

	    if (existet(t, token2) == 1){
	        encontrou+=1;
	    }
	    f=f+1;
	}

	printf(" Encontrou palavras- %d\n", encontrou);
	clock_t endenct = clock();
	float secondsenct = (float)(endenct - startenct) / CLOCKS_PER_SEC;
	printf("Tempo que demorou a encontrar %f\n", secondsenct);

	//
	//remove todas
	//
	clock_t startremove = clock();

	char *token3 = strtok(buffer3, "\n");

  	int z=0;

	while(token3 != NULL && z < numero){ 
	      
	      token3 = strtok (NULL,"\n");
	      
	      trieremove(t, token3);
	      z++;
	}


	clock_t endremove = clock();
	float secondsremove = (float)(endremove - startremove) / CLOCKS_PER_SEC;
	printf("Tempo a remover %f\n",secondsremove);
	
}
char * leFicheiro(char *fileName){

	FILE *file;
	char *buffer;
  	int size;
  	file= fopen(fileName, "r");

  	if(!file) {
        fputs("File error.\n", stderr);
        exit(1);
    }

  	fseek(file, 0, SEEK_END); 
  	size = ftell(file);
  	fseek(file, 0, SEEK_SET); 
  	
  	buffer = malloc(size);
  	fread(buffer, 1, size, file);

  	fclose(file);

  	return buffer;
 
}
	//lista_ord(t, v, 0);
	
	//