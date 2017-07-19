
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	   exercicio 2                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

estado_inicial(([0,0,0,0,0,
		 0,0,0,0,0,
		 0,2,0,0,0,
		 0,2,2,0,0,
		 1,1,1,0,0],1)).

terminal(([_,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_],1)).

terminal(([_,_,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1],1)).
terminal(([1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   2,_,_,_,_],1)).
terminal(([_,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,2,_,_,_],1)).
terminal(([_,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,2,_,_],1)).
terminal(([_,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,2,_],1)).
terminal(([_,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,2],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   1,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_],1)).
terminal(([_,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,1],1)).
terminal(([1,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,_],1)).
terminal(([_,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,1,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   1,_,_,_,_],1)).
terminal(([_,_,_,_,1,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,1,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_],1)).
terminal(([_,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   1,_,_,_,_,
	   _,_,_,_,_],1)).

%agora com a pe�a 2
terminal(([_,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_],1)).

terminal(([_,_,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2],1)).
terminal(([2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   1,_,_,_,_],1)).
terminal(([_,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,1,_,_,_],1)).
terminal(([_,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,1,_,_],1)).
terminal(([_,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,1,_],1)).
terminal(([_,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,1],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   2,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_],1)).
terminal(([_,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,2],1)).
terminal(([2,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,_],1)).
terminal(([_,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,2,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   2,_,_,_,_],1)).
terminal(([_,_,_,_,2,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   _,_,_,_,_],1)).
terminal(([_,_,_,_,_,
	   _,_,_,_,2,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_],1)).
terminal(([_,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   2,_,_,_,_,
	   _,_,_,_,_],1)).

%jogador 2
terminal(([_,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_],2)).

terminal(([_,_,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1],2)).
terminal(([1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   2,_,_,_,_],2)).
terminal(([_,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,2,_,_,_],2)).
terminal(([_,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,2,_,_],2)).
terminal(([_,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,2,_],2)).
terminal(([_,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,2],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   1,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_],2)).
terminal(([_,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,1],2)).
terminal(([1,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,_],2)).
terminal(([_,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,1,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   1,_,_,_,_],2)).
terminal(([_,_,_,_,1,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,1,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_],2)).
terminal(([_,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   1,_,_,_,_,
	   _,_,_,_,_],2)).

%agora com a pe�a 2
terminal(([_,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_],2)).

terminal(([_,_,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2],2)).
terminal(([2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   1,_,_,_,_],2)).
terminal(([_,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,1,_,_,_],2)).
terminal(([_,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,1,_,_],2)).
terminal(([_,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,1,_],2)).
terminal(([_,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,1],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   2,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_],2)).
terminal(([_,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,2],2)).
terminal(([2,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,_],2)).
terminal(([_,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,2,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   2,_,_,_,_],2)).
terminal(([_,_,_,_,2,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   _,_,_,_,_],2)).
terminal(([_,_,_,_,_,
	   _,_,_,_,2,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_],2)).
terminal(([_,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   2,_,_,_,_,
	   _,_,_,_,_],2)).


%tabuleiro cheio
terminal(X):-ve_estado(X,N),N=:=0.
terminal(X):-ve_estado1(X,N),N=:=0.


%ver se o tabuleiro est� cheio
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

%fun��o de utilidade

valor(([_,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_],1),1,_).

valor(([_,_,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_],1),1,_).
valor(([_,_,_,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1],1),1,_).
valor(([1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   2,_,_,_,_],1),1,_).
valor(([_,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,2,_,_,_],1),1,_).
valor(([_,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,2,_,_],1),1,_).
valor(([_,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,2,_],1),1,_).
valor(([_,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,2],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_],1),1,_).
valor(([_,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),1,_).
valor(([_,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),1,_).
valor(([1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),1,_).
valor(([_,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),1,_).
valor(([_,_,_,_,_,
	   1,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_],1),1,_).
valor(([_,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,1],1),1,_).
valor(([1,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,_],1),1,_).
valor(([_,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,1,
	   _,_,_,_,_],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   1,_,_,_,_],1),1,_).
valor(([_,_,_,_,1,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   _,_,_,_,_],1),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,1,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_],1),1,_).
valor(([_,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   1,_,_,_,_,
	   _,_,_,_,_],1),1,_).

%agora com a pe�a 2
valor(([_,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_],1),-1,_).

valor(([_,_,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2],1),-1,_).
valor(([2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   1,_,_,_,_],1),-1,_).
valor(([_,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,1,_,_,_],1),-1,_).
valor(([_,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,1,_,_],1),-1,_).
valor(([_,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,1,_],1),-1,_).
valor(([_,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,1],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),-1,_).
valor(([2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),-1,_).
valor(([_,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   2,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,2],1),-1,_).
valor(([2,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,_],1),-1,_).
valor(([_,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,2,
	   _,_,_,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   2,_,_,_,_],1),-1,_).
valor(([_,_,_,_,2,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   _,_,_,_,_],1),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,2,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_],1),-1,_).
valor(([_,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   2,_,_,_,_,
	   _,_,_,_,_],1),-1,_).

%jogador 2
valor(([_,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_],2),-1,_).

valor(([_,_,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1],2),-1,_).
valor(([1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   1,_,_,_,_,
	   2,_,_,_,_],2),-1,_).
valor(([_,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,1,_,_,_,
	   _,2,_,_,_],2),-1,_).
valor(([_,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,1,_,_,
	   _,_,2,_,_],2),-1,_).
valor(([_,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,1,_,
	   _,_,_,2,_],2),-1,_).
valor(([_,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,1,
	   _,_,_,_,2],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),-1,_).
valor(([1,1,1,1,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),-1,_).
valor(([_,1,1,1,1,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   1,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,1],2),-1,_).
valor(([1,_,_,_,_,
	   _,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,_],2),-1,_).
valor(([_,1,_,_,_,
	   _,_,1,_,_,
	   _,_,_,1,_,
	   _,_,_,_,1,
	   _,_,_,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   1,_,_,_,_],2),-1,_).
valor(([_,_,_,_,1,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   _,_,_,_,_],2),-1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,1,
	   _,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_],2),-1,_).
valor(([_,_,_,1,_,
	   _,_,1,_,_,
	   _,1,_,_,_,
	   1,_,_,_,_,
	   _,_,_,_,_],2),-1,_).

%agora com a pe�a 2
valor(([_,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_],2),1,_).

valor(([_,_,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_],2),1,_).
valor(([_,_,_,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2],2),1,_).
valor(([2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   2,_,_,_,_,
	   1,_,_,_,_],2),1,_).
valor(([_,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,2,_,_,_,
	   _,1,_,_,_],2),1,_).
valor(([_,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,2,_,_,
	   _,_,1,_,_],2),1,_).
valor(([_,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,2,_,
	   _,_,_,1,_],2),1,_).
valor(([_,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,2,
	   _,_,_,_,1],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_],2),1,_).
valor(([_,_,_,_,_,
	   2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),1,_).
valor(([_,_,_,_,_,
	   _,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),1,_).
valor(([2,2,2,2,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),1,_).
valor(([_,2,2,2,2,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_,
	   _,_,_,_,_],2),1,_).
valor(([_,_,_,_,_,
	   2,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_],2),1,_).
valor(([_,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,2],2),1,_).
valor(([2,_,_,_,_,
	   _,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,_],2),1,_).
valor(([_,2,_,_,_,
	   _,_,2,_,_,
	   _,_,_,2,_,
	   _,_,_,_,2,
	   _,_,_,_,_],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   2,_,_,_,_],2),1,_).
valor(([_,_,_,_,2,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   _,_,_,_,_],2),1,_).
valor(([_,_,_,_,_,
	   _,_,_,_,2,
	   _,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_],2),1,_).
valor(([_,_,_,2,_,
	   _,_,2,_,_,
	   _,2,_,_,_,
	   2,_,_,_,_,
	   _,_,_,_,_],2),1,_).


%tabuleiro cheio
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
op1(X,coloca_x_em_10,Y):-altera(10,1,X,Y).
op1(X,coloca_x_em_11,Y):-altera(11,1,X,Y).
op1(X,coloca_x_em_12,Y):-altera(12,1,X,Y).
op1(X,coloca_x_em_13,Y):-altera(13,1,X,Y).
op1(X,coloca_x_em_14,Y):-altera(14,1,X,Y).
op1(X,coloca_x_em_15,Y):-altera(15,1,X,Y).
op1(X,coloca_x_em_16,Y):-altera(16,1,X,Y).
op1(X,coloca_x_em_17,Y):-altera(17,1,X,Y).
op1(X,coloca_x_em_18,Y):-altera(18,1,X,Y).
op1(X,coloca_x_em_19,Y):-altera(19,1,X,Y).
op1(X,coloca_x_em_20,Y):-altera(20,1,X,Y).
op1(X,coloca_x_em_21,Y):-altera(21,1,X,Y).
op1(X,coloca_x_em_22,Y):-altera(22,1,X,Y).
op1(X,coloca_x_em_23,Y):-altera(23,1,X,Y).
op1(X,coloca_x_em_24,Y):-altera(24,1,X,Y).
op1(X,coloca_x_em_25,Y):-altera(25,1,X,Y).


op1(X,coloca_o_em_1,Y):-altera(1,2,X,Y).
op1(X,coloca_o_em_2,Y):-altera(2,2,X,Y).
op1(X,coloca_o_em_3,Y):-altera(3,2,X,Y).
op1(X,coloca_o_em_4,Y):-altera(4,2,X,Y).
op1(X,coloca_o_em_5,Y):-altera(5,2,X,Y).
op1(X,coloca_o_em_6,Y):-altera(6,2,X,Y).
op1(X,coloca_o_em_7,Y):-altera(7,2,X,Y).
op1(X,coloca_o_em_8,Y):-altera(8,2,X,Y).
op1(X,coloca_o_em_9,Y):-altera(9,2,X,Y).
op1(X,coloca_o_em_10,Y):-altera(10,2,X,Y).
op1(X,coloca_o_em_11,Y):-altera(11,2,X,Y).
op1(X,coloca_o_em_12,Y):-altera(12,2,X,Y).
op1(X,coloca_o_em_13,Y):-altera(13,2,X,Y).
op1(X,coloca_o_em_14,Y):-altera(14,2,X,Y).
op1(X,coloca_o_em_15,Y):-altera(15,2,X,Y).
op1(X,coloca_o_em_16,Y):-altera(16,2,X,Y).
op1(X,coloca_o_em_17,Y):-altera(17,2,X,Y).
op1(X,coloca_o_em_18,Y):-altera(18,2,X,Y).
op1(X,coloca_o_em_19,Y):-altera(19,2,X,Y).
op1(X,coloca_o_em_20,Y):-altera(20,2,X,Y).
op1(X,coloca_o_em_21,Y):-altera(21,2,X,Y).
op1(X,coloca_o_em_22,Y):-altera(22,2,X,Y).
op1(X,coloca_o_em_23,Y):-altera(23,2,X,Y).
op1(X,coloca_o_em_24,Y):-altera(24,2,X,Y).
op1(X,coloca_o_em_25,Y):-altera(25,2,X,Y).

altera(Posicao,Val,([X|Lista],1),([Val|Lista],2)):-
	Posicao=:=1,
	Novaposicao is Posicao-1,!,
	X=:=0.
altera(Posicao,Val,([X|Lista],1),([X|Novalista],2)):-
	Novaposicao is Posicao-1,
	altera(Novaposicao,Val,(Lista,1),(Novalista,2)).


























































