%Part B
:- op(200, xfx, anyDouble).
anyDouble(L, R) :- double(L, R); double(R, L).
double(L, R) :- L is R * 2.
