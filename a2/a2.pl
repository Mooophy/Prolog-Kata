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

%C.d
word(one,   un).
word(two,   deux).
word(three, trois).
word(four,  quatre).
word(five,  clinq).
word(six,   six).
word(seven, sept).
word(eight, huit).
word(nine,  neuf).
word(ten,   dix).

translate([],[]).
translate([EH|ET], [FH|FT]) :-
  word(EH,FH), translate(ET, FT).

%Part D

notin(X,[]).
notin(X,[H|T]) :- X\=H, notin(X,T).

nodups([]).
nodups([A|B]) :- notin(A,B), nodups(B).

item(a).
item(b).
item(c).
item(d).

allItems([]).
allItems([H|T]) :-
  item(H),
  allItems(T).

arr(Arr, Size) :-
  length(Arr, Size),
  allItems(Arr),
  nodups(Arr).

fillSq([R0, R1, R2, R3]) :-
  arr(R0, 4),
  arr(R1, 4),
  arr(R2, 4),
  arr(R3, 4),
  nodups([R0, R1, R2, R3]).
  
  
  
   
