#define Maxel 'z'
#define Minel 'a'
#define Nel (Maxel - Minel +1)

/* nomear tipos*/
typedef struct trie trie;

/* definir tipos*/
struct trie {int existe; trie *prox[Nel];};


/* assinatura funcoes*/
trie *novat();
void inseret(trie *t, char *chave);
void lista_ord(trie *t, char *cadeia, int n);
void min(trie *t, char *cadeia);
void max(trie *t, char *cadeia);
void trieremove(trie *t, char *cadeia);
int existet(trie *t, char *cadeia);