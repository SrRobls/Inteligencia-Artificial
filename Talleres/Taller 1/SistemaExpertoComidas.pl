/* Sistema Experto de recomendación de comidas: almuerzo, desayuno, cena y snacks, segun el presupuesto y 
 * que tanta hambre tiene el usuario.
 * 
 * El sistema Experto se llama con tengo_hambre(Resultado)
 * 
 * Realizado por Johan Sebastian Robles Rincon - grupo 1
 * CC 1006455725
 * */


/* Almuerzos */
recomendacion("Una bandeja paisa es un almuerzo completo", Tipo, Presupuesto, Hambre) 
	:- Tipo = almuerzo, Presupuesto >= 30000, Hambre = mucha.
recomendacion("Un sancocho de gallina bien calientico, para dejarte lleno", Tipo, Presupuesto, Hambre) 
	:- Tipo = almuerzo, Presupuesto >= 25000, Hambre = mucha.
recomendacion("Un tamal con arroz y ensalada es perfecto y llenador", Tipo, Presupuesto, Hambre) 
	:- Tipo = almuerzo, Presupuesto >= 15000, Hambre = medio.
recomendacion("Un corrientazo con sopa y seco, barato y rendidor", Tipo, Presupuesto, Hambre) 
	:- Tipo = almuerzo, Presupuesto =< 10000, Hambre = medio.

/* Desayunos */
recomendacion("Empanadas ricas de doña Gilma", Tipo, Presupuesto, Hambre) 
	:- Tipo = desayuno, Presupuesto >= 10000, Hambre = medio.
recomendacion("huevito y arepita pa' empezar el día bien", Tipo, Presupuesto, Hambre) 
	:- Tipo = desayuno, Presupuesto >= 3000, Hambre = mucha.
recomendacion("Unas arepas con quesito y chocolate, suavecito pero rico", Tipo, Presupuesto, Hambre) 
	:- Tipo = desayuno, Presupuesto >= 8000, Hambre = medio.
recomendacion("Pan y chocolate", Tipo, Presupuesto, Hambre) 
	:- Tipo = desayuno, Presupuesto >= 3000, Hambre = medio.
recomendacion("Pan con café y huevito es suave", Tipo, Presupuesto, Hambre) 
	:- Tipo = desayuno, Presupuesto =< 5000, Hambre = poco.
recomendacion("Unas almojábanas con chocolate pa' quitar el antojo", Tipo, Presupuesto, Hambre) 
	:- Tipo = desayuno, Presupuesto =< 5000, Hambre = poco.

/* Cenas */
recomendacion("Empanadas ricas de doña Gilma", Tipo, Presupuesto, Hambre) 
	:- Tipo = cena, Presupuesto >= 10000, Hambre = medio.
recomendacion("Una arepa con queso y jamón, algo sencillo pero completo", Tipo, Presupuesto, Hambre) 
	:- Tipo = cena, Presupuesto >= 5000, Hambre = poco.
recomendacion("Una arepa e’ huevo pa’ la noche, sabrosa y llenadora", Tipo, Presupuesto, Hambre) 
	:- Tipo = cena, Presupuesto >= 8000, Hambre = medio.
recomendacion("Un caldo de costilla para dormir como un bebé", Tipo, Presupuesto, Hambre) 
	:- Tipo = cena, Presupuesto >= 10000, Hambre = mucha.

/* Snacks */
recomendacion("Unas obleas con arequipe y queso", Tipo, Presupuesto, Hambre) 
	:- Tipo = snack, Presupuesto =< 5000, Hambre = poco.
recomendacion("Un panzeroti caro de la facultad de minas", Tipo, Presupuesto, Hambre) 
	:- Tipo = snack, Presupuesto >= 5000, Hambre = medio.
recomendacion("Unos papitas de limon", Tipo, Presupuesto, Hambre) 
	:- Tipo = snack, Presupuesto =< 5000, Hambre = poco.
recomendacion("Arepitas con hogao, pa' picar sabroso", Tipo, Presupuesto, Hambre) 
	:- Tipo = snack, Presupuesto >= 5000, Hambre = poco.
recomendacion("Pan con gaseo a lo obrero", Tipo, Presupuesto, Hambre) 
	:- Tipo = snack, Presupuesto >= 5000, Hambre = mucha.

tengo_hambre(Recomendacion) :-
    write("¿Qué tipo de comida quieres? Escoge entre 'desayuno', 'almuerzo', 'cena' o 'snack': "), read(Tipo),
    write("¿Cuál es tu presupuesto? (en pesos): "), read(Presupuesto),
    write("¿Su hambre es mucha, medio o poco? "), read(Hambre),
    recomendacion(Recomendacion, Tipo, Presupuesto, Hambre).

