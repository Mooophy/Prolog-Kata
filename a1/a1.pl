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

/**
 * Part 3.
 */
 % Some Greek gods
male(apollo).
male(ares).
male(cronus).
male(coeus).
male(hades).
male(hephaestus).
male(oceanus).
male(poseidon).
male(uranus).
male(zeus).

% Some Greek goddesses
female(aphrodite).
female(artemis).
female(demeter).
female(gaea).
female(hera).
female(hestia).
female(leto).
female(phoebe).
female(rhea).

%parents(person, father, mother)
parents(apollo, zeus,leto).
parents(cronus,uranus,gaea).
parents(coeus, uranus, gaea).
parents(ares, zeus,hera).
parents(phoebe, uranus, gaea).
parents(hestia,cronus,rhea).
parents(poseidon,cronus,rhea).
parents(hades,cronus,rhea).
parents(zeus,cronus,rhea).
parents(demeter,cronus,rhea).
parents(oceanus, uranus, gaea).
parents(hebe, zeus,hera).
parents(hephaestus, zeus,hera).
parents(artemis, zeus,leto).
parents(rhea, uranus,gaea).

brother(Person1, Person2) :- 
  male(Person1),
  parents(Person1, Father, Mother),
  parents(Person2, Father, Mother), 
  Person1 \= Person2.

sister(Person1, Person2) :-
  female(Person1),
  parents(Person1, Father, Mother),
  parents(Person2, Father, Mother), 
  Person1 \= Person2.

aunt(Person, Aunt) :-
  female(Aunt),
  parents(Person,F,M) , sister(Aunt,F) ; parents(Person,F,M) , sister(Aunt,M).

son(Person, Father) :-
  male(Father),
  parents(Person, Father, M).
