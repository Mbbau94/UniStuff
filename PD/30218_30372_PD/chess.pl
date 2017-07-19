%X1 - PEAO
%X2 - BISPO
%X3 - TORRE
%X4 - CAVALO
%X5 - RAINHA
%X6 - REI
%1X - BRANCAS
%2X - PRETAS
%10- POSIÇAO LIVRE
%
%para iniciar : tabuleiro(64).
%e depois escolher a linha e a coluna sempre por esta ordem.
%se a jogada nao for valida o programa pára False!.

do_list(N, L):-
  findall(Num, between(1, N, Num), L).

tab([23,24,22,25,26,22,24,23,
    21,21,21,21,21,21,21,21,
    10,10,10,10,10,10,10,10,
    12,10,10,22,10,10,10,23,
    16,10,10,10,10,10,10,10,
    10,10,21,10,10,10,10,16,
    10,11,11,11,11,11,11,11,
    13,14,12,15,16,12,14,13]).



div(L, A, B) :-
    append(A, B, L),
    length(A, N),
    length(B, N).


tabuleiro(N):-

	tab(L),
	len(L,Num),
	write("tamanho do tab"),
	write(Num),
	write("XADREZ"),
	nl,
	mostrar_tabuleiro(L,Num),
	jogador1(L).


altera(1, Novo_Valor, [_Valor|Vs], [Novo_Valor|Vs]):- !.

altera(Posicao, Novo_Valor, [X|Lista], [X|Novalista]):-
    Posicao > 1,
    Novaposicao is Posicao-1,
    altera(Novaposicao,Novo_Valor, Lista, Novalista).



len([], 0).
len([H|T], N) :- len(T, N1), N is N1+1.



mostrar_tabuleiro(Lt,Num):-
	write("   "),write(1),write("  "),write(2),write("  "),write(3),write("  "),write(4),write("  "),write(5),write("  "),write(6),write("  "),write(7),write("  "),write(8),
	nl,nl,
	printTab(Num,Lt,0).


jogador1(L):-write("jogador 1, Insira a linha "),nl, read(XI),nl, write("Insira a coluna "),nl,read(YI),nl,write("posiçao desejada, linha "),nl,read(XF),nl,write("coluna "),read(YF),nl, jogada1(L,XI,YI,XF,YF).

%%	F Pos final
moverpeca(I,F,T,P):-
	write("mover peçaa "),



	nth0(X,T,PE),
	write("mover peçca + peça"),nl,
	write(PE),nl,
	altera(F,P,T,T1),
	%mete a peça na pos final
	altera(I,10,T1,T2),
	%mete na pos inical uma casa vazia
	mostrar_tabuleiro(T2,64).


jogada1(T,XI,YI,XF,YF):-
	Nxi is XI -1,
	Pos is 8* Nxi + (YI-1),

	Nxf is XF -1,
	PosF is 8* Nxf +(YF-1),
	write("posicçao da peça escolhida 1-64"),
	write(Pos),nl, %Pos = posiçao boa da peça escolhida
	write(XI),nl,write(YI),nl,
	peca(Pos,T,P),
	write("Pecaa "),
	write(P),nl,
	chamar(T,Pos,PosF,P,XI,YI,XF,YF),

	moverpeca(Pos+1,PosF+1,T,P),
	write("testeeee").

%	mostrar_tabuleiro(T,64).
%
chamar(T,Pos,PosF,P,XI,YI,XF,YF):-
	peaogeral(T,Pos,PosF,P).


chamar(T,Pos,PosF,P,XI,YI,XF,YF):-
	torreGe(T,Pos,PosF,P,XI,YI,XF,YF).

chamar(T,Pos,PosF,P,XI,YI,XF,YF):-
	bispoP(T,Pos,PosF,P,XI,YI,XF,YF).

chamar(T,Pos,PosF,P,XI,YI,XF,YF):-
	bispoB(T,Pos,PosF,P,XI,YI,XF,YF).

chamar(T,Pos,PosF,P,XI,YI,XF,YF):-
	rei(T,Pos,PosF,P,XI,YI,XF,YF).

chamar(T,Pos,PosF,P,XI,YI,XF,YF):-
	rainha(T,Pos,PosF,P,XI,YI,XF,YF).

chamar(T,Pos,PosF,P,XI,YI,XF,YF):-
	cavalo(T,Pos,PosF,P,XI,YI,XF,YF).

peca(X,T,P):-
	nth0(X,T,PE),
	write("peca escolhida "),
	P = PE,
	write(PE),nl,nl.



printTab(0, _,_) :- !.
printTab(_, [],_).
printTab(N, [A,B,C,D,E,F,G,H|T],I) :-
	It is I+1,

	write(It),write(" "),
	write(A),write(" "),write(B),write(" "),write(C),write(" "),write(D),write(" "),write(E),write(" "),write(F),write(" "),write(G),write(" "),write(H),

	nl,
	N1 is N - 8,

	printTab(N1, T,It).


peaogeral(T,I,F,P):-
	peaoB_Anda(T,I,F,P).
peaogeral(T,I,F,P):-
	peaoB_Come(T,I,F,P).
peaogeral(T,I,F,P):-
	peaoP_Anda(T,I,F,P).
peaogeral(T,I,F,P):-
	peaoP_Come(T,I,F,P).


peaoB_Anda(T,I,F,P):-
	write("teste peao"),nl,
	F =:= I-8,
	nth0(I,T,A),
	write(A),nl,
	A =:=11,
	nth0(F,T,X),
	write(X),nl,nl,
	X =:=10,
	write("Jogada Valida").

%se tiver na ultima ja n pode avançar

peaoP_Anda(T,I,F,P):-
	write("teste pioao anda"),nl,
	F =:= I+8,
	nth0(I,T,A),
	write(A),nl,
	A =:=21,
	nth0(F,T,X),
	write(X),nl,nl,
	X =:=10,
	write("Jogada Valida").

peaoB_Come(T,I,F,P):-
	write("Comee"),nl,
	nth0(I,T,A),
	%write(A),nl,
	A =:=11,
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=49,
	nth0(F,T,X),
	F=:=I-9,
	X =\=10,
	write("Jogada Valida").

peaoB_Come(T,I,F,P):-
	write("Comee"),nl,
	nth0(I,T,A),
	%write(A),nl,
	A =:=11,
	I=\=8,
	I=\=16,
	I=\=24,
	I=\=32,
	I=\=40,
	I=\=48,

	nth0(F,T,X),
	F=:=I-7,
	X =\=10,
	write("Jogada Valida").




peaoP_Come(T,I,F,P):-
	write("Comee geral1"),nl,
	nth0(I,T,A),
	%write(A),nl,
	A =:=11,
	nth0(F,T,X),
	F=:=I-7,
	X =\=10,
	write("Jogada Valida").
peaoP_Come(T,I,F,P):-
	write("Comee geral2"),nl,
	nth0(I,T,A),
	%write(A),nl,
	A =:=11,
	nth0(F,T,X),
	F=:=I-9,
	X =\=10,
	write("Jogada Valida").


peaoP_Come(T,I,F,P):-
	write("Comee3"),nl,
	nth0(I,T,A),
	%write(A),nl,
	A =:=11,
	I=\=8,
	I=\=16,
	I=\=24,
	I=\=32,
	I=\=40,
	I=\=48,
	I=\=56,
	nth0(F,T,X),
	F=:=I-7,
	X =\=10,
	write("Jogada Valida").
%%	%%%%%%

torreGe(T,I,F,P,Xi,Yi,Xf,Yf):-
	torreB(T,I,F,P,Xi,Yi,Xf,Yf).
torreGe(T,I,F,P,Xi,Yi,Xf,Yf):-
	torreP(T,I,F,P,Xi,Yi,Xf,Yf).
	%movim verticais
torreB(T,I,F,P,LI,Ci,LF,Cf):-
	write("Torre anda"),
	nth0(I,T,A),
	A=:=13,
	D is abs(LI-LF),
	write("ehehe"),
	F =:=abs( I-(D*8)).

torreB(T,I,F,P,LI,Ci,LF,Cf):-
	write("Torre anda"),
	nth0(I,T,A),
	A=:=13,
	D is abs(LI-LF),
	write("ehehe"),
	F =:=abs( I+(D*8)).



%mov horizontal direita
torreB(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=13,
	D is abs(Ci-Cf),
	F=:= I+ D.

torreB(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=13,
	D is abs(Ci-Cf),
	F=:= I- D.
%%	%%%%%%%%%%%%
%
	%movim verticais peça preta

		%movim verticais
torreP(T,I,F,P,LI,Ci,LF,Cf):-
	write("Torre anda"),
	nth0(I,T,A),
	A=:=23,
	D is abs(LI-LF),
	write("ehehe"),
	F =:=abs( I-(D*8)).

torreP(T,I,F,P,LI,Ci,LF,Cf):-
	write("Torre anda"),
	nth0(I,T,A),
	A=:=23,
	D is abs(LI-LF),
	write("ehehe"),
	F =:=abs( I+(D*8)).



%mov horizontal direita
torreP(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=23,
	D is abs(Ci-Cf),
	F=:= I+ D.

torreP(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=23,
	D is abs(Ci-Cf),
	F=:= I- D.

%%	%%%%%%%%
%esquerdo cima
bispoB(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=12,
	D is abs(Ci-Cf),
	F =:= abs(I-(9*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.
%direita baixo
bispoB(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=12,
	D is abs(Ci-Cf),
	F =:= abs(I+(9*D)),
	I=\=8,
	I=\=16,
	I=\=24,
	I=\=32,
	I=\=40,
	I=\=48,
	I=\=56,
	I=\=64.
%direita cima
bispoB(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=12,
	D is abs(Ci-Cf),
	F =:= abs(I-(7*D)),
	I=\=8,
	I=\=16,
	I=\=24,
	I=\=32,
	I=\=40,
	I=\=48,
	I=\=56,
	I=\=64.
%esq baixo

bispoB(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=12,
	D is abs(Ci-Cf),
	F =:= abs(I+(7*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.
%%	%%%%%
% pretoo
% direita cima
bispoP(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=22,
	D is abs(Ci-Cf),
	F =:= abs(I-(9*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.
%direita baixo
bispoP(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=22,
	D is abs(Ci-Cf),
	F =:= abs(I+(9*D)),
	I=\=8,
	I=\=16,
	I=\=24,
	I=\=32,
	I=\=40,
	I=\=48,
	I=\=56,
	I=\=64.
%direita cima
bispoP(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=22,
	D is abs(Ci-Cf),
	F =:= abs(I-(7*D)),
	I=\=8,
	I=\=16,
	I=\=24,
	I=\=32,
	I=\=40,
	I=\=48,
	I=\=56,
	I=\=64.
%esq baixo

bispoP(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=22,
	D is abs(Ci-Cf),
	F =:= abs(I+(7*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.

%%	%%%%%%%%%%%%
% direita
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=16,
	F=:=I+1,
	D is abs(ci-cf),
	D=:=1,
	\+memberchk(I,[8,16,24,32,40,48,56,64]),
	write("Jogada válida"),
	nl.



%esq
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	F>=1,
	F=<64,

	A=:=16,
	D is abs(Ci-Cf),
	D=:=1,
	\+memberchk(I,[9,17,25,33,41,49,57]),
	F=:=I-1.

%cima
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=16,
	D is abs(Li-Lf),
	D=:=1,
	F=:=I-8,
	F>=1.
%baixo
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=16,
	D is abs(Li-Lf),
	D=:=1,
	F=:=I+8,
	F=<64.

%diaonal direita cima
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=16,
	D is abs(Ci-Cf),
	D2 is abs(Li-Lf),
	D=:=1,
	D2 =:=1,

	F=:=I-7,
	I=\=64,
	F>=1,F=<64.


%diag esq baixo
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=16,
	D is abs(Ci-Cf),
	D2 is abs(Li-Lf),
	D=:=1,
	D2=:=1,
	F=:=I+7,
	F=<64,F>=1.

%diag esq cima
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=16,
	D is abs(Ci-Cf),
	D2 is abs(Li-Lf),
	D =:=1,
	D2 =:=1,
	F=:=I-9,
	F>=1,F=<64.

%diag dir baixo
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=16,
	D is abs(Ci-Cf),
	D =:=1,
	D2 is abs(Li- Lf),
	D2 =:=1,
	F=:=I+9,
	F=<64,
	F>=1.

%%	%%%%%%%%
%
%	% direita
rei(T,I,F,P,Li,Ci,Lf,Cf):-

	nth0(I,T,A),
	A=:=26,
	F=:=I+1,
	D is abs(ci-cf),
	D=:=1,
	\+memberchk(I,[8,16,24,32,40,48,56,64]),
	write("Jogada válida"),
	nl.


%esq
rei(T,I,F,P,Li,Ci,Lf,Cf):-

	nth0(I,T,A),
	F>=1,
	F=<64,

	A=:=26,
	D is abs(Ci-Cf),
	D=:=1,
	\+memberchk(I,[9,17,25,33,41,49,57]),
	F=:=I-1.




%cima
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=26,
	D is abs(Li-Lf),
	D=:=1,
	F=:=I-8,
	F>=1.

%baixo
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=26,
	D is abs(Li-Lf),
	D=:=1,
	F=:=I+8,
	F>=1,F=<64.
.

%diaonal direita cima
rei(T,I,F,P,Li,Ci,Lf,Cf):-


	nth0(I,T,A),
	A=:=26,
	D is abs(Ci-Cf),
	D2 is abs(Li-Lf),
	D=:=1,
	D2 =:=1,

	F=:=I-7,
	F>1.



%diag esq baixo
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=26,
	D is abs(Ci-Cf),
	D2 is abs(Li-Lf),
	D=:=1,
	D2=:=1,
	F=:=I+7,
	F=<64,F>=1.



%diag esq cima
rei(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=26,
	D is abs(Ci-Cf),
	D2 is abs(Li-Lf),
	D =:=1,
	D2 =:=1,
	F=:=I-9,
	F>=1,F=<64.



%diag dir baixo
rei(T,I,F,P,Li,Ci,Lf,Cf):-

	nth0(I,T,A),
	A=:=26,
	D is abs(Ci-Cf),
	D =:=1,
	D2 is abs(Li- Lf),
	D2 =:=1,
	F=:=I+9,
	F=<64,
	F>=1.


%%	%%%%%%%%%%%%%%%%%%%%
%cavaloooo
%
cavalo(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),

	%Ci=:=1,
	A=:=24,
	memberchk(I,[1,2,9,10,17,18,25,26,33,34,41,42,49,50,57,58]),
	\+memberchk(F,[7,8,15,16,23,24,31,32,39,40,47,48,55,56,63,64]),
	N is abs(I-F),
	memberchk(N,[15,10]),write("Jogada válida"),nl.

cavalo(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	write("cavalo2 c 2"),
	A=:=24,
	%write(Ci),
	%Ci=:=2,
	write("cavalo2 c2 2"),
	memberchk(I,[7,8,15,16,23,24,31,32,39,40,47,48,55,56,63,64]),
	\+memberchk(F,[1,2,9,10,17,18,25,26,33,34,41,42,49,50,57,58]),
	N is abs(I-F),
	memberchk(N,[15,17,10]),write("Jogada válida"),nl.

cavalo(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=24,
	\+memberchk(F,[0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-15]),
	\+memberchk(F,[65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80]),
	N is abs(I-F),
	memberchk(N,[15,17,6,10]),write("Jogada válida"),nl.

cavalo(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=24,
	\+memberchk(F,[0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-15]),
	\+memberchk(F,[65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80]),
	N is abs(I-F),
	memberchk(N,[15,17,6,10]),write("Jogada válida"),nl.

cavalo(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=14,
	memberchk(I,[1,2,9,10,17,18,25,26,33,34,41,42,49,50,57,58]),
	\+memberchk(F,[7,8,15,16,23,24,31,32,39,40,47,48,55,56,63,64]),
	N is abs(I-F),
	memberchk(N,[15,17,6,10]),write("Jogada válida"),nl.

cavalo(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=14,
	memberchk(I,[7,8,15,16,23,24,31,32,39,40,47,48,55,56,63,64]),
	\+memberchk(F,[1,2,9,10,17,18,25,26,33,34,41,42,49,50,57,58]),
	N is abs(I-F),
	memberchk(N,[15,17,6,10]),write("Jogada válida"),nl.

cavalo(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=14,
	\+memberchk(F,[0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-15]),
	\+memberchk(F,[65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80]),
	F=<64,F>=1,
	N is abs(I-F),
	memberchk(N,[15,17,6,10]),write("Jogada válida"),nl.

cavalo(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=14,
	\+memberchk(F,[0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-15]),
	\+memberchk(F,[65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80]),
	F=<64,F>=1,
	N is abs(I-F),
	memberchk(N,[15,17,6,10]),write("Jogada válida"),nl.

%Rainha
rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
				A=:=25,
				memberchk(I,[1,2,3,4,5,6,7,8]),
				N is abs(I-F),
				memberchk(N,[1,2,3,4,5,6,7]),
				\+memberchk(F,[9,10,11,12,13,14,15,16]),
				%verificar(I,F,1,T),
				write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=25,
	memberchk(I,[9,10,11,12,13,14,15,16]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[1,2,3,4,5,6,7,8,17,18,19,20,21,22,23,24]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),

	A=:=25,
	memberchk(I,[17,18,19,20,21,22,23,24]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[9,10,11,12,13,14,15,16,25,26,27,28,29,30,31,32]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
%(I,F,T):-n_esimo(I,A,T),
	A=:=25,
	memberchk(I,[25,26,27,28,29,30,31,32]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[17,18,19,20,21,22,23,24,33,34,35,36,37,38,39,40]),
	verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=25,
	memberchk(I,[33,34,35,36,37,38,39,40]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[25,26,27,28,29,30,31,32,41,42,43,44,45,46,47,48]),
	%	verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=25,
	memberchk(I,[41,42,43,44,45,46,47,48]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[49,50,51,52,53,54,55,56,33,34,35,36,37,38,39,40]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=25,
	memberchk(I,[49,50,51,52,53,54,55,56]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[41,42,43,44,45,46,47,48,57,58,59,60,61,62,63,64]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=25,
	memberchk(I,[48,57,58,59,60,61,62,63,64]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[49,50,51,52,53,54,55,56]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.


rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=25,
	F>0,
	F<65,
	N is abs(I-F),
	memberchk(N,[8,16,24,32,40,48,56,64]),
	%verificar(I,F,8,T),
	write("Jogada vÃ¡lida"),nl.




rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=15,
	memberchk(I,[1,2,3,4,5,6,7,8]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[9,10,11,12,13,14,15,16]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=15,
	memberchk(I,[9,10,11,12,13,14,15,16]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[1,2,3,4,5,6,7,8,17,18,19,20,21,22,23,24]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),

	A=:=15,
	memberchk(I,[17,18,19,20,21,22,23,24]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[9,10,11,12,13,14,15,16,25,26,27,28,29,30,31,32]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),

	A=:=15,
	memberchk(I,[25,26,27,28,29,30,31,32]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[17,18,19,20,21,22,23,24,33,34,35,36,37,38,39,40]),
	verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),

	A=:=15,
	memberchk(I,[33,34,35,36,37,38,39,40]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[25,26,27,28,29,30,31,32,41,42,43,44,45,46,47,48]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),

	A=:=15,
	memberchk(I,[41,42,43,44,45,46,47,48]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[49,50,51,52,53,54,55,56,33,34,35,36,37,38,39,40]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),

	A=:=15,
	memberchk(I,[49,50,51,52,53,54,55,56]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[41,42,43,44,45,46,47,48,57,58,59,60,61,62,63,64]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=15,
	memberchk(I,[48,57,58,59,60,61,62,63,64]),
	N is abs(I-F),
	memberchk(N,[1,2,3,4,5,6,7]),
	\+memberchk(F,[49,50,51,52,53,54,55,56]),
	%verificar(I,F,1,T),
	write("Jogada vÃ¡lida"),nl.


rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=15,
	F>0,
	F<65,
	N is abs(I-F),
	memberchk(N,[8,16,24,32,40,48,56,64]),
	%verificar(I,F,8,T),
	write("Jogada vÃ¡lida"),nl.

rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=15,
	D is abs(Ci-Cf),
	F =:= abs(I+(7*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.



rainha(T,I,F,P,Li,Ci,Lf,Cf):-nth0(I,T,A),
	A=:=25,
	D is abs(Ci-Cf),
	F =:= abs(I+(7*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.

rainha(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=15,
	D is abs(Ci-Cf),
	F =:= abs(I-(7*D)),
	I=\=8,
	I=\=16,
	I=\=24,
	I=\=32,
	I=\=40,
	I=\=48,
	I=\=56,
	I=\=64.


rainha(T,I,F,P,Li,Ci,Lf,Cf):-

	nth0(I,T,A),
	A=:=25,
	D is abs(Ci-Cf),
	F =:= abs(I-(7*D)),
	I=\=8,
	I=\=16,
	I=\=24,
	I=\=32,
	I=\=40,
	I=\=48,
	I=\=56,
	I=\=64.


rainha(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=25,
	D is abs(Ci-Cf),
	F =:= abs(I+(9*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.

rainha(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=15,
	D is abs(Ci-Cf),
	F =:= abs(I+(9*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.


rainha(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=15,
	D is abs(Ci-Cf),
	F =:= abs(I-(9*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.

rainha(T,I,F,P,Li,Ci,Lf,Cf):-
	nth0(I,T,A),
	A=:=25,
	D is abs(Ci-Cf),
	F =:= abs(I-(9*D)),
	I=\=1,
	I=\=9,
	I=\=17,
	I=\=25,
	I=\=33,
	I=\=41,
	I=\=49,
	I=\=57.


%%	%%%%%% nao esta a ser usado
%VVVVVV
n_esimo(1,Elem,[Elem|_]).

n_esimo(N,Elem,[_|Cauda]):- n_esimo(M,Elem, Cauda),
       N is M +1.



verificar(I,F,A,T):-
	P is I+A,
	Y is abs(F-P),
	Y>=0,
	n_esimo(P,X,T),
	X="OO",

	verificar(P,F,A,T).

%verificar(I,F,A,T):-!,P is I+A,
%				Y is abs(F-P),
%				Y<0,true.


verificar(I,F,A,T):-
	P is I+A,
	Y is abs(F-P),
	Y>=0,
	n_esimo(P,X,T),
	X="OO",
	memberchk(X,["CB","BB","RB","KB","TB","PB"]),
	verificar(P,F,A,T).

