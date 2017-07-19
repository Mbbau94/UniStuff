#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "btree.h"
#include "time.h"

char * leFicheiro(char *fileName);

int  main(){ 
  btree *bt;
  int numero;
    printf("Insira o numero de palavras \n");
    scanf ("%i", &numero);
    printf("\n");

 novaBt(&bt);
  clock_t startbt = clock();

  char *bufferbt = leFicheiro("words_en.txt");
  //char *bufferbt3=strdup(bufferbt); //duplica para usar + tarde no remove

  char *tokenbt;
  tokenbt = strtok(bufferbt, "\n");
  
  int j=0;
  while( tokenbt != NULL ) {
      if(j==numero){
          break;
      }  
      tokenbt = strtok(NULL, "\n");
      
      inserebt(&bt, tokenbt);
      j=j+1;
  }
  clock_t endbt = clock();
  float secondsInsBt = (float)(endbt - startbt) / CLOCKS_PER_SEC;
    printf("**BTREE**\n");
    printf("Tempo a inserir %f \n", secondsInsBt);

    //lista(bt,0);
    
    //
    //btree pesquisa

    clock_t startBTpes = clock();
    char *bufferbt2 = leFicheiro("words_s.txt");
    //printf("%s\n", buffer2);
    

    char *tokenbt2 = strtok(bufferbt2, "\n"); 

    int h=0;
  int encontrouBT=0;
  
  while( tokenbt2 != NULL ) {
      if(h==numero/10){
          break;
      }
             
      tokenbt2 = strtok(NULL, "\n");

      if (existebt(bt, tokenbt2) == 1){
          encontrouBT+=1;
      }
      h=h+1;
  }

  printf(" Encontrou palavras- %d\n", encontrouBT);
  clock_t endBTpes = clock();
  float secondpesq = (float)(endBTpes - startBTpes) / CLOCKS_PER_SEC;
  printf("Tempo que demorou a encontrar %f\n", secondpesq);
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

