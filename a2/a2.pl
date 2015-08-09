%Part B
:- op(700, xfy, =>>).
=>>(L, R) 
  :-  (L - 2 * R)  * (R - 2 * L) =:= 0.

:- op(700, fx, isSingleton).
isSingleton(List) 
  :-  length(List, 1).

%Part C
%C.a
totalInList([], 0).
totalInList([Head|Tail], Sum) 
  :-  totalInList(Tail, SumOfTail), Sum is Head + SumOfTail.

%C.b
count(Word, [], 0).
count(Word, [Word|Tail], N) 
  :-  count(Word, Tail, NofTail), N is 1 + NofTail.
count(Word, [OtherWord|Tail], NofTail) 
  :-  OtherWord \= Word, count(Word, Tail, NofTail).

%C.c
adjAve([],[]).
adjAve([_],[]).
adjAve([Fst, Snd | TailIn], [Ave | TailOut])
  :-  adjAve(TailIn, TailOut), Ave is (Fst + Snd) / 2.

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
translate([EH|ET], [FH|FT]) 
  :-  word(EH,FH), translate(ET, FT).

%Part D
item(a).
item(b).
item(c).
item(d).

fillRow([X0, X1, X2, X3])
  :-  item(X0), item(X1), item(X2), item(X3), 
      X0 \= X1, X0 \= X2, X0 \= X3, X1 \= X2, X1 \= X3, X2 \= X3.

fillSq([R0, R1, R2, R3])
  :-  fillRow(R0), fillRow(R1), fillRow(R2), fillRow(R3),
      R0 \= R1, R0 \= R2, R0 \= R3, R1 \= R2, R1 \= R3, R2 \= R3.

noClash([], []).
noClash([L|Ls], [R|Rs])
  :-  L \= R, noClash(Ls, Rs).

testSq([R0,R1,R2,R3])
  :-  noClash(R0, R1),  noClash(R0, R2),  noClash(R0, R3), 
      noClash(R1, R2),  noClash(R1, R3),  noClash(R2, R3).

printList([])
  :-  write('|').
printList([H|T])
  :-  write('| '), write(H), write(' '), printList(T).

printRow(Row)
  :-  write('-----------------\n'), length(Row, Len), printList(Row).

%iii
displaySq([])
  :-  write('-----------------\n').
displaySq([H|T])
  :-  printRow(H), write('\n'), displaySq(T).

generateSq(Sq)
  :-  fillSq(Sq), testSq(Sq), displaySq(Sq). 
