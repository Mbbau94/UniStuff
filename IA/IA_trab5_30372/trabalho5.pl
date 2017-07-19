%h(condiçao,S0).
h(para_baixo(a),S0).
h(para_cima(b),S0).
h(para_baixo(c),S0).
h(para_baixo(d),S0).
h(mao_livre,S0).
h(ao_lado(a,b),S0).
h(ao_lado(b,c),S0).
h(ao_lado(c,d),S0).

%h(condiçao,S0).
%h(para_baixo(a),s0).
%h(para_cima(b),s0).
%h(para_baixo(c),s0).
%h(para_baixo(d),s0).
%h(mao_livre,s0).
%h(ao_lado(a,b),s0).
%h(ao_lado(b,c),s0).
%h(ao_lado(c,d),s0).


%condiçoes positivas da acçoes
%acçao agarrar
h(na_mao(A,B),r(agarra(A,B),S)):-h(mao_livre,S),h(ao_lado(A,B),S).

%accão vira cima cima
h(para_cima(A),r(virar_cima_cima(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_baixo(A),S),
	h(para_baixo(B),S),
	h(ao_lado(A,B),S).

h(para_cima(B),r(virar_cima_cima(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_baixo(A),S),
	h(para_baixo(B),S),
	h(ao_lado(A,B),S).

h(mao_livre,r(virar_cima_cima(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_baixo(A),S),
	h(para_baixo(B),S),
	h(ao_lado(A,B),S).



%acçao vira baixo cima
h(para_baixo(A),r(virar_baixo_cima(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_cima(A),S),
	h(para_baixo(B),S),
	h(ao_lado(A,B),S).

h(para_cima(B),r(virar_baixo_cima(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_cima(A),S),
	h(para_baixo(B),S),
	h(ao_lado(A,B),S).

h(mao_livre,r(virar_baixo_cima(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_cima(A),S),
	h(para_baixo(B),S),
	h(ao_lado(A,B),S).

%acçao vira cima baixo
h(para_cima(A),r(virar_cima_baixo(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_baixo(A),S),
	h(para_cima(B),S),
	h(ao_lado(A,B),S).

h(para_baixo(B),r(virar_cima_baixo(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_baixo(A),S),
	h(para_cima(B),S),
	h(ao_lado(A,B),S).

h(mao_livre,r(virar_cima_baixo(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_baixo(A),S),
	h(para_cima(B),S),
	h(ao_lado(A,B),S).




%accçao vira baixo baixo
h(para_baixo(A),r(virar_baixo_baixo(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_cima(A),S),
	h(para_cima(B),S),
	h(ao_lado(A,B),S).

h(para_baixo(B),r(virar_baixo_baixo(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_cima(A),S),
	h(para_cima(B),S),
	h(ao_lado(A,B),S).

h(mao_livre,r(virar_baixo_baixo(A,B),S)):-
	h(na_mao(A,B),S),
	h(para_cima(A),S),
	h(para_cima(B),S),
	h(ao_lado(A,B),S).

%acção trocar
h(ao_lado(B,A),r(trocar(A,B),S)):-h(na_mao(A,B),S),h(ao_lado(A,B),S).
h(mao_livre,r(trocar(A,B),S)):-h(na_mao(A,B),S),h(ao_lado(A,B),S).


%%	%%%%%%%%%%%%%%%%%%%%%
%leis de inercia


h(mao_livre,r(A,S)):-
	h(mao_livre,S),
	A\=agarra(_,_).


h(para_cima(A),r(F,S)):-
	h(para_cima(A),S),
	F\={virar_baixo_baixo(A,A),virar_cima_baixo(_,A),virar_baixo_cima(A,_)}.

h(para_baixo(A),r(F,S)):-
	h(para_baixo(A),S),
	F\={virar_cima_cima(A,A),virar_cima_baixo(A,_),virar_baixo_cima(_,A)}.

h(na_mao(A,B),r(F,S)):-
	h(na_mao(A,B),S),
	F\={trocar(A,B),virar_cima_cima(A,B),virar_baixo_baixo(A,B),virar_cima_baixo(A,B),virar_baixo_cima(A,B)}.


h(ao_lado(A,B),r(F,S)):-
	h(ao_lado(A,B),S),
	F\={trocar(A,B),virar_cima_cima(A,B),virar_baixo_baixo(A,B),virar_cima_baixo(A,B),virar_baixo_cima(A,B),agarra(A,B)}.


%query
% h(para_cima(a),S),h(para_cima(b),S),h(para_cima(c),S),h(para_baixo(d),S),h(mao_livre,S),h(ao_lado(a,b),S),h(ao_lado(b,c),S),h(ao_lado(c,d),S).
%
%
%
%S = r(virar_cima_cima(a,b),r(agarra(a,b),r(virar_baixo_cima(b,c),r(agarra(b,c),_))))


















