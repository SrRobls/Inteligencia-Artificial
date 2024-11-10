
/* Sistema Experto Sobre Batallas Pokemon (Fuego, Planta, Agua) */
/*Realizado por Johan Sebastian Robles Rincon. CC 1006455725, Grupo 1.*/
/*Hechos*/
pokemon(charizard).
pokemon(blastoise).
pokemon(venusaur).

pokemon(magmortar).
pokemon(millotic).
pokemon(bayleef).

es_tipo_planta(venusaur).
es_tipo_planta(bayleef).
es_tipo_agua(blastoise).
es_tipo_agua(millotic).
es_tipo_fuego(charizard).
es_tipo_fuego(magmortar).

poder(charizard, 57).
poder(blastoise, 45).
poder(venusaur, 77).
poder(magmortar, 54).
poder(millotic, 75).
poder(bayleef, 47).


/* Reglas */
combate("Gana el pokemon tipo planta", X, Y) :- es_tipo_planta(X), es_tipo_agua(Y).
combate("Gana el pokemon tipo planta", X, Y) :- es_tipo_planta(Y), es_tipo_agua(X).
combate("Gana el pokemon tipo agua", X, Y) :- es_tipo_agua(X), es_tipo_fuego(Y).
combate("Gana el pokemon tipo agua", X, Y) :- es_tipo_agua(Y), es_tipo_fuego(X).
combate("Gana el pokemon tipo fuego", X, Y) :- es_tipo_fuego(X), es_tipo_planta(Y).
combate("Gana el pokemon tipo fuego", X, Y) :- es_tipo_fuego(Y), es_tipo_planta(X).

combate("Gana charizar por mayor poder", X, Y) :- es_tipo_fuego(Y), es_tipo_fuego(X), X\=Y, poder(X, PoderX), poder(Y, PoderY), PoderX > PoderY.
combate("Gana charizar por mayor poder", X, Y) :- es_tipo_fuego(X), es_tipo_fuego(Y), X\=Y, poder(Y, PoderY), poder(X, PoderX), PoderY > PoderX.

combate("Gana millotic por mayor poder", X, Y) :- es_tipo_agua(X), es_tipo_agua(Y), X\=Y, poder(X, PoderX), poder(Y, PoderY), PoderX > PoderY.
combate("Gana millotic por mayor poder", X, Y) :- es_tipo_agua(X), es_tipo_agua(Y), X\=Y, poder(Y, PoderY), poder(X, PoderX), PoderY > PoderX.

combate("Gana venasaur por mayor poder", X, Y) :- es_tipo_planta(X), es_tipo_planta(Y), X\=Y, poder(X, PoderX), poder(Y, PoderY), PoderX > PoderY.
combate("Gana venasaur por mayor poder", X, Y) :- es_tipo_planta(X), es_tipo_planta(Y), X\=Y, poder(Y, PoderY), poder(X, PoderX), PoderY > PoderX.

