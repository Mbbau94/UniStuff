%condições
%mao_livre.
%para_cima(A).
%para_baixo(A).
%na_mao(A,B).
%ao_lado(A,B).

ao_lado(a,b).
ao_lado(b,c).
ao_lado(c,d).

%acçoes
%agarra(A,B).
%virar_cima_cima(A,B).
%virar_baixo_baixo(A,B).
%virar_cima_baixo(A,B).
%virar_baixo_cima(A,B).
%trocar(A,B).


%%	%%%%%%%
estado_inicial([para_baixo(a),para_cima(b),para_baixo(c),para_baixo(d),mao_livre]).
estado_final([para_cima(a),para_cima(b),para_cima(c),para_baixo(d),mao_livre]).


%accçoes
accao(agarra(A,B),[mao_livre],[na_mao(A,B)],[mao_livre]):-
	member(A,[a,b,c,d]),
	member(B,[a,b,c,d]),
	A\=B,ao_lado(A,B).

accao(virar_cima_cima(A,B),[na_mao(A,B),para_baixo(A),para_baixo(B)],
      [para_cima(A),para_cima(B),mao_livre],[para_baixo(A),para_baixo(B),na_mao(A,B)]):-
	member(A,[a,b,c,d]),
	member(B,[a,b,c,d]),
	A\=B,ao_lado(A,B).


accao(virar_baixo_baixo(A,B),[na_mao(A,B),para_cima(A),para_cima(B)],
      [para_baixo(A),para_baixo(B),mao_livre],[para_cima(A),para_cima(B),na_mao(A,B)]):-
	member(A,[a,b,c,d]),
	member(B,[a,b,c,d]),
	A\=B,ao_lado(A,B).


accao(virar_baixo_cima(A,B),[na_mao(A,B),para_cima(A),para_baixo(B)],
      [para_baixo(A),para_cima(B),mao_livre],[para_cima(A),para_baixo(B),na_mao(A,B)]):-
	member(A,[a,b,c,d]),
	member(B,[a,b,c,d]),
	A\=B,ao_lado(A,B).


accao(virar_cima_baixo(A,B),[na_mao(A,B),para_baixo(A),para_cima(B)],
      [para_cima(A),para_baixo(B),mao_livre],[para_baixo(A),para_cima(B),na_mao(A,B)]):-
	member(A,[a,b,c,d]),
	member(B,[a,b,c,d]),
	A\=B,ao_lado(A,B).


accao(trocar(A,B),[na_mao(A,B)],[ao_lado(B,A),mao_livre],[na_mao(A,B)]):-
	member(A,[a,b,c,d]),
	member(B,[a,b,c,d]),
	A\=B,ao_lado(A,B).





% P = [s1-inicial,s3127-agarra(b,c),s254-virar_baixo_cima(b,c),s4-agarra(a,b),s3-virar_cima_cima(a,b),s2-final]

