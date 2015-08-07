%Part B
:- op(900, xfy, =>>).
=>>(L, R) :- once(double(L, R); double(R, L)).
double(L, R) :- L =:= R * 2.
