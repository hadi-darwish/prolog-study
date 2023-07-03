father(eric,jean).
father(paul,jacques).
father(paul,catherine).
mother(francoise,catherine).
mother(catherine,jeanne).
mother(catherine,pierrette).
mother(pierrette,nathalie).
man(eric).
man(jean).
man(jacques).
woman(catherine).
woman(nathalie).
woman(jeanne).
woman(francoise).
woman(pierrette).


parent(X,Y):-father(X,Y);mother(X,Y).
grandparent(X,Y):-parent(X,Z),parent(Z,Y).
son(X,Y):-parent(Y,X),man(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),woman(X).
brother(X,Y):-parent(Z,X),parent(Z,Y),man(X).
uncle(X,Y):-brother(X,Z),parent(Z,Y).
cousin(X,Y):-son(X,Z),uncle(Z,Y).

% (b) - son(jacques,paul). true
%  -  mother(jeanne,_).  false
%  mother(X,_).
%   X = francoise ;
%   X = catherine ;
%   X = catherine ;
%   X = pierrette.
% mother(catherine,X).
%   X = jeanne ;
%   X = pierrette.