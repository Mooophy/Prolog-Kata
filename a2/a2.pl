%Part B
:- op(700, xfy, =>>).
=>>(L, R) :-
  (L - 2 * R)  * (R - 2 * L) =:= 0.

:- op(700, fx, isSingleton).
isSingleton(List) :- 
  length(List, 1).

%Part C
%C.a
totalInList([], 0).
totalInList([Head|Tail], Sum) :-
  totalInList(Tail, SumOfTail), Sum is Head + SumOfTail.

%C.b
count(Word, [], 0).
count(Word, [Word|Tail], N) :-
  count(Word, Tail, NofTail), N is 1 + NofTail.
count(Word, [OtherWord|Tail], NofTail) :-
  OtherWord \= Word, count(Word, Tail, NofTail).

%C.c
adjAve([],[]).
adjAve([_],[]).
adjAve([Fst, Snd | TailIn], [Ave | TailOut]) :-
    adjAve(TailIn, TailOut), Ave is (Fst + Snd) / 2.


