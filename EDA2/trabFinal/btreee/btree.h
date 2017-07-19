#define ordem 3
#define maxfilhos 2*ordem 
#define maxchaves 2*ordem-1 

/* nomear tipos*/

typedef struct btree btree;

/* definir tipos*/

struct btree {int folha;  
  int n;
  char *chave[maxchaves];
  struct btree *filho[maxfilhos];
};


/* assinatura funcoes*/

void novaBt(btree **t);
void inserebt(btree **t, char *k);
void insere_n_cheia(btree *t, char *k);
void lista(btree *t, int b);
void parte(btree *t, int i);
int existebt(btree *t, char *c);
//int removebt(btree *t, char *ch);
