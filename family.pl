female(pam). 
female(ann). 
female(liz). 
female(angela). 
female(sue). 
female(mary). 

male(pat). 
male(bob). 
male(tom). 
male(jim). 
male(dave). 

parent(bob,mary). 
parent(bob,ann). 
parent(bob,pat). 
parent(bob,sue). 
parent(tom,liz). 
parent(tom,bob). 
parent(pam,bob). 
parent(sue,dave). 
parent(sue,angela). 
parent(pat,jim).

mother(X,Y):- 
    parent(X,Y),female(X).
    father(X,Y):- parent(X,Y),male(X).
    brother(X,Y) :- parent(Z,X), parent(Z,Y),male(X),X\==Y.
    sister(X,Y) :- parent(Z,X), parent(Z,Y),female(X),X\==Y.
 
grandparent(X,Y):-parent(Z,Y),parent(X,Z).
uncle(X,Z) :- brother(X,Y), parent(Y,Z).
commonparent(X,Y):-parent(Z,X),parent(Z,Y). 
children(X,Y):-parent(Y,X).
granddaughter(X,Y):-parent(Z,X),parent(Y,Z),female(X). 
sibling(X,Y):-parent(Z,Y),parent(Z,X).
