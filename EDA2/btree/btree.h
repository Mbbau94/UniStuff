#define ordem 3
#define maxfilhos 2*ordem 
#define maxchaves 2*ordem-1 

/* nomear tipos*/

typedef struct btree btree;

/* definir tipos*/

struct btree {int folha;  
  int n;
  int chave[maxchaves];
  struct btree *filho[maxfilhos];
};


/* assinatura funcoes*/

void nova(btree **t);
void insere(btree **t, int k);
void insere_n_cheia(btree *t, int k);
void lista(btree *t, int b);
void parte(btree *t, int i);

