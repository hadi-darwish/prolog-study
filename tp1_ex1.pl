% Exercise 1
% H1: Jean is happy if one of his employees works
% H2: Anyone who has fun is happy
% H3: Peter and Paul are employees of John
% H4: Paul has fun and Pierre works
% (a) Translate this statement into Prolog
% (b) Who are the happy people? give the tree of resolution.

happy(jean) :- employee(X, jean) , works(X).
happy(X) :- fun(X).
employee(peter, jean).
employee(paul, jean).
fun(paul).
works(pierre).

% (b) in swiprolog command line write
% [tp1_ex1].
% happy(X) and press sapce to get next until finish