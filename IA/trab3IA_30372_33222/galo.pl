estado_inicial(([0,0,1,
		 0,2,0,
		 0,2,0],1)).

terminal(([1,1,1,
	  _,_,_,
	  _,_,_],1)).

terminal(([_,_,_,
	  1,1,1,
	  _,_,_],1)).

terminal(([_,_,_,
	  _,_,_,
	  1,1,1],1)).

terminal(([1,_,_,
	  1,_,_,
	  1,_,_],1)).

terminal(([_,1,_,
	  _,1,_,
	  _,1,_],1)).

terminal(([[_,_,1],
	  [_,_,1],
	  [_,_,1]],1)).

terminal(([1,_,_,
	  _,1,_,
	  _,_,1],1)).

terminal(([_,_,1,
	  _,1,_,
	  1,_,_],1)).

%%%%%%%%%%%%%%%%%%%%%%%

terminal(([2,2,2,
	  _,_,_,
	  _,_,_],1)).

terminal(([_,_,_,
	  2,2,2,
	  _,_,_],1)).

terminal(([_,_,_,
	  _,_,_,
	  2,2,2],1)).

terminal(([2,_,_,
	  2,_,_,
	  2,_,_],1)).

terminal(([_,2,_,
	  _,2,_,
	  _,2,_],1)).

terminal(([_,_,2,
	  _,_,2,
	  _,_,2],1)).

terminal(([2,_,_,
	  _,2,_,
	  _,_,2],1)).

terminal(([_,_,2,
	  _,2,_,
	  2,_,_],1)).

%%jogador2%%%%%%%%%%%%%%%%%%%

terminal(([1,1,1,
	  _,_,_,
	  _,_,_],2)).

terminal(([_,_,_,
	  1,1,1,
	  _,_,_],2)).

terminal(([_,_,_,
	  _,_,_,
	  1,1,1],2)).

terminal(([1,_,_,
	  1,_,_,
	  1,_,_],2)).

terminal(([_,1,_,
	  _,1,_,
	  _,1,_],2)).

terminal(([[_,_,1],
	  [_,_,1],
	  [_,_,1]],2)).

terminal(([1,_,_,
	  _,1,_,
	  _,_,1],2)).

terminal(([_,_,1,
	  _,1,_,
	  1,_,_],2)).

%%%%%%%%%%%%%%%%%%%%%%%

terminal(([2,2,2,
	  _,_,_,
	  _,_,_],2)).

terminal(([_,_,_,
	  2,2,2,
	  _,_,_],2)).

terminal(([_,_,_,
	  _,_,_,
	  2,2,2],2)).

terminal(([2,_,_,
	  2,_,_,
	  2,_,_],2)).

terminal(([_,2,_,
	  _,2,_,
	  _,2,_],2)).

terminal(([_,_,2,
	  _,_,2,
	  _,_,2],2)).

terminal(([2,_,_,
	  _,2,_,
	  _,_,2],2)).

terminal(([_,_,2,
	  _,2,_,
	  2,_,_],2)).


terminal(X):-ve_estado(X,N),N=:=0.
terminal(X):-ve_estado1(X,N),N=:=0.


%ver se o tabuleiro está cheio
ve_estado(([],1),0).
ve_estado((X,1),Num):-conta_ocorr(0,X,Num).

ve_estado1(([],2),0).
ve_estado1((X,2),Num):-conta_ocorr(0,X,Num).


conta_ocorr(Elem,[ ],0).
conta_ocorr(Elem,[Elem|Y],N) :-
	conta_ocorr(Elem,Y,N1),
	N is N1 + 1.
conta_ocorr(Elem,[Elem1|Y], N) :-
	Elem \== Elem1,
	conta_ocorr(Elem,Y,N).


%função de utilidade, retorna o valor dos estados terminais, 1-ganha
%-1-perde, e 0-empata
valor(([1,1,1,
	  _,_,_,
	  _,_,_],1),1,_).
valor(([_,_,_,
	  1,1,1,
	  _,_,_],1),1,_).
valor(([_,_,_,
	  _,_,_,
	  1,1,1],1),1,_).
valor(([1,_,_,
	  1,_,_,
	  1,_,_],1),1,_).
valor(([_,1,_,
	  _,1,_,
	  _,1,_],1),1,_).
valor(([_,_,1,
	  _,_,1,
	  _,_,1],1),1,_).
valor(([1,_,_,
	  _,1,_,
	  _,_,1],1),1,_).
valor(([_,_,1,
	  _,1,_,
	  1,_,_],1),1,_).

valor(([2,2,2,
	  _,_,_,
	  _,_,_],1),-1,_).
valor(([_,_,_,
	  2,2,2,
	  _,_,_],1),-1,_).
valor(([_,_,_,
	  _,_,_,
	  2,2,2],1),-1,_).
valor(([2,_,_,
	  2,_,_,
	  2,_,_],1),-1,_).
valor(([_,2,_,
	  _,2,_,
	  _,2,_],1),-1,_).
valor(([_,_,2,
	  _,_,2,
	  _,_,2],1),-1,_).
valor(([2,_,_,
	  _,2,_,
	  _,_,2],1),-1,_).
valor(([_,_,2,
	  _,2,_,
	  2,_,_],1),-1,_).

%jogador2
valor(([1,1,1,
	  _,_,_,
	  _,_,_],2),-1,_).
valor(([_,_,_,
	  1,1,1,
	  _,_,_],2),-1,_).
valor(([_,_,_,
	  _,_,_,
	  1,1,1],2),-1,_).
valor(([1,_,_,
	  1,_,_,
	  1,_,_],2),-1,_).
valor(([_,1,_,
	  _,1,_,
	  _,1,_],2),-1,_).
valor(([_,_,1,
	  _,_,1,
	  _,_,1],2),-1,_).
valor(([1,_,_,
	  _,1,_,
	  _,_,1],2),-1,_).
valor(([_,_,1,
	  _,1,_,
	  1,_,_],2),-1,_).

valor(([2,2,2,
	  _,_,_,
	  _,_,_],2),1,_).
valor(([_,_,_,
	  2,2,2,
	  _,_,_],2),1,_).
valor(([_,_,_,
	  _,_,_,
	  2,2,2],2),1,_).
valor(([2,_,_,
	  2,_,_,
	  2,_,_],2),1,_).
valor(([_,2,_,
	  _,2,_,
	  _,2,_],2),1,_).
valor(([_,_,2,
	  _,_,2,
	  _,_,2],2),1,_).
valor(([2,_,_,
	  _,2,_,
	  _,_,2],2),1,_).
valor(([_,_,2,
	  _,2,_,
	  2,_,_],2),1,_).


valor(X,0,_):-ve_estado(X,N),N=:=0.
valor(X,0,_):-ve_estado1(X,N),N=:=0.


%operadores
op1(X,coloca_x_em_1,Y):-altera(1,1,X,Y).
op1(X,coloca_x_em_2,Y):-altera(2,1,X,Y).
op1(X,coloca_x_em_3,Y):-altera(3,1,X,Y).
op1(X,coloca_x_em_4,Y):-altera(4,1,X,Y).
op1(X,coloca_x_em_5,Y):-altera(5,1,X,Y).
op1(X,coloca_x_em_6,Y):-altera(6,1,X,Y).
op1(X,coloca_x_em_7,Y):-altera(7,1,X,Y).
op1(X,coloca_x_em_8,Y):-altera(8,1,X,Y).
op1(X,coloca_x_em_9,Y):-altera(9,1,X,Y).

op1(X,coloca_o_em_1,Y):-altera(1,2,X,Y).
op1(X,coloca_o_em_2,Y):-altera(2,2,X,Y).
op1(X,coloca_o_em_3,Y):-altera(3,2,X,Y).
op1(X,coloca_o_em_4,Y):-altera(4,2,X,Y).
op1(X,coloca_o_em_5,Y):-altera(5,2,X,Y).
op1(X,coloca_o_em_6,Y):-altera(6,2,X,Y).
op1(X,coloca_o_em_7,Y):-altera(7,2,X,Y).
op1(X,coloca_o_em_8,Y):-altera(8,2,X,Y).
op1(X,coloca_o_em_9,Y):-altera(9,2,X,Y).

altera(Posicao,Val,([X|Lista],1),([Val|Lista],2)):-
	Posicao=:=1,
	Novaposicao is Posicao-1,!,
	X=:=0.
altera(Posicao,Val,([X|Lista],1),([X|Novalista],2)):-
	Novaposicao is Posicao-1,
	altera(Novaposicao,Val,(Lista,1),(Novalista,2)).

altera1(Posicao,Val,([X|Lista],2),([Val|Lista],1)):-
	Posicao=:=1,
	Novaposicao is Posicao-1,!,
	X=:=0.
altera1(Posicao,Val,([X|Lista],2),([X|Novalista],1)):-
	Novaposicao is Posicao-1,
	altera1(Novaposicao,Val,(Lista,2),(Novalista,1)).


%agente especial para jogar
%chamar sucessivamente o jogador1 e 2 alternadamente
a:-agente_especial(([1,2,0,0,1,2,0,0,0],1)).
agente_especial(X):-nl,nl,
	write("-- AGENTE ESPECIAL - HUMANO VS MINMAX --"),
	nl,nl,
	imprime_galo(X),nl,nl,
	agente_especial2(X).

agente_especial2(X):-
	write("Lugar onde deseja jogar: "),
	read(A),
	altera1(A,2,X,Y),
	not(terminal(Y)),
	nl,nl,imprime_galo(Y),nl,nl,
	agente_especial1(Y).


agente_especial1(X):-
	consult(minimax),
	minimax_decidir(X,A),
	write("MINMAX jogou em: "),write(A),nl,nl,
	ve_alteracao(X,A,Y),
	imprime_galo(Y),nl,nl,
	not(terminal(Y)),
	agente_especial2(Y).


ve_alteracao(X,A,Y):-
	A=coloca_x_em_1,
	altera(1,1,X,Y).
ve_alteracao(X,A,Y):-
	A=coloca_x_em_2,
	altera(2,1,X,Y).

ve_alteracao(X,A,Y):-
	A=coloca_x_em_3,
	altera(3,1,X,Y).

ve_alteracao(X,A,Y):-
	A=coloca_x_em_4,
	altera(4,1,X,Y).
ve_alteracao(X,A,Y):-
	A=coloca_x_em_5,
	altera(5,1,X,Y).
ve_alteracao(X,A,Y):-
	A=coloca_x_em_6,
	altera(6,1,X,Y).
ve_alteracao(X,A,Y):-
	A=coloca_x_em_7,
	altera(7,1,X,Y).
ve_alteracao(X,A,Y):-
	A=coloca_x_em_8,
	altera(8,1,X,Y).
ve_alteracao(X,A,Y):-
	A=coloca_x_em_9,
	altera(9,1,X,Y).


imprime_galo(([A,B,C,D,E,F,G,H,I],_)):-
	write(A),write(" "),write(B),write(" "),write(C),nl,
	write(D),write(" "),write(E),write(" "),write(F),nl,
	write(G),write(" "),write(H),write(" "),write(I),nl.

%função de avaliação
% -> número de casas com peças seguidas 1, tendo em conta a linha ou
% coluna ou diagonal
%
avalia(([1,1,1,
	  _,_,_,
	  _,_,_],1),3,_).

avalia(([_,_,_,
	  1,1,1,
	  _,_,_],1),3,_).

avalia(([_,_,_,
	  _,_,_,
	  1,1,1],1),3,_).

avalia(([1,_,_,
	  1,_,_,
	  1,_,_],1),3,_).

avalia(([_,1,_,
	  _,1,_,
	  _,1,_],1),3,_).

avalia(([_,_,1,
	  _,_,1,
	  _,_,1],1),3,_).

avalia(([1,_,_,
	  _,1,_,
	  _,_,1],1),3,_).

avalia(([_,_,1,
	  _,1,_,
	  1,_,_],1),3,_).
%%%
%
avalia(([1,1,A,
	  _,_,_,
	  _,_,_],1),2,_):-A\=1.
avalia(([A,1,1,
	  _,_,_,
	  _,_,_],1),2,_):-A\=1.


avalia(([_,_,_,
	  1,1,A,
	  _,_,_],1),2,_):-A\=1.
avalia(([_,_,_,
	  A,1,1,
	  _,_,_],1),2,_):-A\=1.


avalia(([_,_,_,
	  _,_,_,
	  1,1,A],1),2,_):-A\=1.
avalia(([_,_,_,
	  _,_,_,
	  A,1,1],1),2,_):-A\=1.


avalia(([A,_,_,
	  1,_,_,
	  1,_,_],1),2,_):-A\=1.
avalia(([1,_,_,
	  1,_,_,
	  A,_,_],1),2,_):-A\=1.


avalia(([_,A,_,
	  _,1,_,
	  _,1,_],1),2,_):-A\=1.
avalia(([_,1,_,
	  _,1,_,
	  _,A,_],1),2,_):-A\=1.


avalia(([_,_,A,
	  _,_,1,
	  _,_,1],1),2,_):-A\=1.
avalia(([_,_,1,
	  _,_,1,
	  _,_,A],1),2,_):-A\=1.


avalia(([A,_,_,
	  _,1,_,
	  _,_,1],1),2,_):-A\=1.
avalia(([1,_,_,
	  _,1,_,
	  _,_,A],1),2,_):-A\=1.


avalia(([_,_,A,
	  _,1,_,
	  1,_,_],1),2,_):-A\=1.
avalia(([_,_,1,
	  _,1,_,
	  A,_,_],1),2,_):-A\=1.

%apenas uma igual
avalia(([1,_,_,
	  _,_,_,
	  _,_,_],1),1,_).
avalia(([_,1,_,
	  _,_,_,
	  _,_,_],1),1,_).
avalia(([_,_,1,
	  _,_,_,
	  _,_,_],1),1,_).
avalia(([_,_,_,
	  1,_,_,
	  _,_,_],1),1,_).
avalia(([_,_,_,
	  _,1,_,
	  _,_,_],1),1,_).
avalia(([_,_,_,
	  _,_,1,
	  _,_,_],1),1,_).
avalia(([_,_,_,
	  _,_,_,
	  1,_,_],1),1,_).
avalia(([_,_,_,
	  _,_,_,
	  _,1,_],1),1,_).
avalia(([_,_,_,
	  _,_,_,
	  _,_,1],1),1,_).



%jogador2
avalia(([2,2,2,
	  _,_,_,
	  _,_,_],2),3,_).

avalia(([_,_,_,
	  2,2,2,
	  _,_,_],2),3,_).

avalia(([_,_,_,
	  _,_,_,
	  2,2,2],2),3,_).

avalia(([2,_,_,
	  2,_,_,
	  2,_,_],2),3,_).

avalia(([_,2,_,
	  _,2,_,
	  _,2,_],2),3,_).

avalia(([_,_,2,
	  _,_,2,
	  _,_,2],2),3,_).

avalia(([2,_,_,
	  _,2,_,
	  _,_,2],2),3,_).

avalia(([_,_,2,
	  _,2,_,
	  2,_,_],2),3,_).
%%%
%
avalia(([2,2,A,
	  _,_,_,
	  _,_,_],2),2,_):-A\=2.
avalia(([A,2,2,
	  _,_,_,
	  _,_,_],2),2,_):-A\=2.


avalia(([_,_,_,
	  2,2,A,
	  _,_,_],2),2,_):-A\=2.
avalia(([_,_,_,
	  A,2,2,
	  _,_,_],2),2,_):-A\=2.


avalia(([_,_,_,
	  _,_,_,
	  2,2,A],2),2,_):-A\=2.
avalia(([_,_,_,
	  _,_,_,
	  A,2,2],2),2,_):-A\=2.


avalia(([A,_,_,
	  2,_,_,
	  2,_,_],2),2,_):-A\=2.
avalia(([2,_,_,
	  2,_,_,
	  A,_,_],2),2,_):-A\=2.


avalia(([_,A,_,
	  _,2,_,
	  _,2,_],2),2,_):-A\=2.
avalia(([_,2,_,
	  _,2,_,
	  _,A,_],2),2,_):-A\=2.


avalia(([_,_,A,
	  _,_,2,
	  _,_,2],2),2,_):-A\=2.
avalia(([_,_,2,
	  _,_,2,
	  _,_,A],2),2,_):-A\=2.


avalia(([A,_,_,
	  _,2,_,
	  _,_,2],2),2,_):-A\=2.
avalia(([2,_,_,
	  _,2,_,
	  _,_,A],2),2,_):-A\=2.


avalia(([_,_,A,
	  _,2,_,
	  2,_,_],2),2,_):-A\=2.
avalia(([_,_,2,
	  _,2,_,
	  A,_,_],2),2,_):-A\=2.

%apenas uma igual
avalia(([2,_,_,
	  _,_,_,
	  _,_,_],2),1,_).
avalia(([_,2,_,
	  _,_,_,
	  _,_,_],2),1,_).
avalia(([_,_,2,
	  _,_,_,
	  _,_,_],2),1,_).
avalia(([_,_,_,
	  2,_,_,
	  _,_,_],2),1,_).
avalia(([_,_,_,
	  _,2,_,
	  _,_,_],2),1,_).
avalia(([_,_,_,
	  _,_,2,
	  _,_,_],2),1,_).
avalia(([_,_,_,
	  _,_,_,
	  2,_,_],2),1,_).
avalia(([_,_,_,
	  _,_,_,
	  _,2,_],2),1,_).
avalia(([_,_,_,
	  _,_,_,
	  _,_,2],2),1,_).





