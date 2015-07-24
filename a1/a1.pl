/**
 * Part 1.
 */
output :-
  write('----159.202 Assignment 1----'), nl,
  write('ID: 12086075, Name: Liu Kuan'), nl,
  write('----All 4 parts solved------'), nl.

/**
 * Part 2.
 */
likes(tom,jerry).
likes(mary,john).
likes(mary,mary).
likes(tom,mouse).
likes(jerry,jerry).
likes(jerry, cheese).
likes(mary,fruit).
likes(john,book).
likes(mary,book).
likes(tom,john).

johnLikesThings(X) :- likes(mary, X).
johnLikesWho(X) :- likes(X,cheese).

/**
 * likes(jhon,X).
 * likes(john,Y).
 * likes(X,book).
 */
