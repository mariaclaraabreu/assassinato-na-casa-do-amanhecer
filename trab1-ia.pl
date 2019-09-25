%fatos identificados
temchave(anna).
temchave(beth).
relacionamento(ben,anna).
relacionamento(ben,karen).
relacionamento(anna,peter).
relacionamento(peter,hannah).
relacionamento(hannah,peter).
relacionamento(hannah,harry).
relacionamento(harry,marie).
relacionamento(marie,adrian).
relacionamento(adrian,karen).
estava(peter,segunda,copenhague).
estava(peter,terca,copenhague).
estava(peter,quarta,odensee).
estava(peter,quinta,copenhague).
estava(peter,sexta,apartamento).
estava(karen,segunda,odensee).
estava(karen,terca,odensee).
estava(karen,quarta,odensee).
estava(karen,quinta,copenhague).
estava(karen,sexta,apartamento).
estava(harry,segunda,apartamento).
estava(harry,terca,odensee).
estava(harry,quarta,apartamento).
estava(harry,quinta,apartamento).
estava(harry,sexta,apartamento).
estava(beth,segunda,apartamento).
estava(beth,terca,odensee).
estava(beth,quarta,odensee).
estava(beth,quinta,copenhague).
estava(beth,sexta,apartamento).
estava(adrian,segunda,apartamento).
estava(adrian,terca,apartamento).
estava(adrian,quarta,copenhague).
estava(adrian,quinta,apartamento).
estava(adrian,sexta,apartamento).
estava(hannah,segunda,apartamento).
estava(hannah,terca,odensee).
estava(hannah,quarta,odensee).
estava(hannah,quinta,apartamento).
estava(hannah,sexta,apartamento).
estava(ben,segunda,copenhague).
estava(ben,terca,copenhague).
estava(ben,quarta,odensee).
estava(ben,quinta,copenhague).
estava(ben,sexta,apartamento).
estava(marie,segunda,apartamento).
estava(marie,terca,copenhague).
estava(marie,quarta,copenhague).
estava(marie,quinta,copenhague).
estava(marie,sexta,apartamento).
riqueza(karen).
riqueza(hannah).
riqueza(harry).
riqueza(adrian).
pobreza(peter).
disturbio(adrian).
disturbio(marie).
roubochave(P):- estava(P,segunda,copenhague);estava(P,terca,odensee).
estavanoap(P):- estava(P,quinta,apartamento);estava(P,sexta,apartamento).
roubomartelo(P):- estava(P,quarta,apartamento);estava(P,quinta,apartamento).
serelacionou(P):- relacionamento(anna,X),relacionamento(P,X).
assassino(P):- roubochave(P),estavanoap(P),roubomartelo(P),serelacionou(P).


% Passos para a descoberta do assassino
%
% --- A morte é avaliada como tendo ocorrido na quinta ou
% sexta-feira, portanto, é possível inferir que a pessoa que estava no
% apartamento nestes dias ou em um deles é o(a) assassino(a):
% estava(X,quinta,apartamento);estava(X,sexta,apartamento).
% X=peter,karen,harry,beth,adrian,hannah,ben,marie (estavam no
% apartamento na quinta ou sexta)
% ______________________________________________________
%
% --- Sherlock Holmes estabeleceu que a arma do crime poderia ser um
% taco de beisebol que foi roubado de Ben na quinta em Odensee ou na
% quarta em Copenhague. Para saber se isso é verdade, necessitou-se
% verificar a veracidade dessas afirmações:
%
% estava(ben,quinta,odensee);estava(ben,quarta,copenhague).
% A resposta fornecida foi false para ambas as consultas, ou seja, não
% foi um taco que matou anna, foi um martelo.
%_______________________________________________________
%
% --- Sabendo que a arma que matou anna foi um martelo e que este
% tivera sido roubado do apartamento na quarta ou quinta-feira, é
% possível deduzir que dentre as pessoas que estavam lá nestes dias ou
% em um deles, uma delas roubou a arma. Para saber quem estava no AP no
% dia em que o martelo foi roubado, a seguinte consulta foi realizada:
% estava(X,quarta,apartamento);estava(X,quinta,apartamento).
% X=harry,adrian,hannah
%
%_______________________________________________________
%
% --- O assassino entrou no quarto usando a chave que foi roubada de
% Anna na segunda em Copenhague ou na terça em Odensee. Assim, para
% saber quem estava nestes locais nos dias informados, a seguinte consulta foi realizada:
% estava(X,segunda,copenhague);estava(X,terca,odensee).
% X=peter,ben,karen,harry,beth,hannah
% ______________________________________________________
%
%
% --- O assassino pode ter matado por motivo de ciúme. Com isso, para
% saber quem o pode ter feito, é necessário saber com quem anna se
% relacionou e, por sua vez, com quem estas pessoas se relacionaram.
% Assim, a seguinte consulta pode ser realizada:
% relacionamento(anna,X),relacionamento(P,X).
% Ou seja, anna se realacionou com peter e peter se relacionou com
% hannah.
%
% % em Resumo, a consulta final foi estabelecida em uma das regras deste documento, tendo como resultado que Hannah foi a assassina que, motivada pelo ciúme, cometeu o crime utilizando um martelo :(
%
%
