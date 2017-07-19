
%criar o tabuleiro nxn
%	       	    L, C
estado_inicial((18,18)).
estado_final((26,26)).


%tabuleiro(tab,5).

block((1,2),(1,3)).
block((1,3),(1,2)).

block((2,2),(2,3)).
block((2,3),(2,2)).

block((4,4),(3,4)).
block((3,4),(4,4)).

block((4,5),(3,5)).
block((3,5),(4,5)).

%op(Estado_act,operador,Estado_seg,Custo)

:- dynamic(visited/1).


op((L,C),dir,(L,C1),1):- 
	C1 is C+1, 
	C \=C1, 
	C1 =<30,
	C1 >0,
	\+visited((L,C1)),
	\+ block((L,C),(L,C1)),
	assertz(visited((L,C1))).
	


op((L,C),esq,(L,C1),1):- 
	C1 is C-1, 
	C \=C1, 
	C1 =<30, 
	C1>0,
	\+visited((L,C1)),
	\+ block((L,C),(L,C1)),
	assertz(visited((L,C1))).
	

op((L,C),cima,(L1,C),1):- 
	L1 is L-1, 
	L \=L1, 
	L1 =<30, 
	L1>0,
	\+visited((L1,C)),
	\+ block((L,C),(L1,C)),
	assertz(visited((L1,C))).
	

op((L,C),baixo,(L1,C),1):- 
	L1 is L+1, 
	L \=L1, 
	L1 =<30, 
	L1>0,
	\+visited((L1,C)),
	\+ block((L,C),(L1,C)),
	assertz(visited((L1,C))).

	

%h(Estado Atual, V)
h(E,V):-
	h1(E,V1),
	%h2(E,V2),
	V is V1.

h1((X,Y),V):-
	findall((X,Y), (block((X,Y),_);block(_,(X,Y))), Pl),
	length(Pl, V).

h2((X,Y),V):-
	estado_final((A,B)),
	V is ((A-X) +(B-Y)).


