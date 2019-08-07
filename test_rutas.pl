/*
  ████████╗███████╗███████╗████████╗███████╗
  ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝
     ██║   █████╗  ███████╗   ██║   ███████╗
     ██║   ██╔══╝  ╚════██║   ██║   ╚════██║
     ██║   ███████╗███████║   ██║   ███████║
     ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚══════╝                                                          
*/


:- include(rutas).

:-begin_tests(rutas).

test(distancia_directa, nondet):-kilometrosViaje(puertoMadryn, puertoDeseado, 732).

test(distancias_posibles_usando_diferentes_rutas, set(Kilometros = [1711, 1772])):-
    kilometrosViaje(puertoMadryn, calafate, Kilometros).

test(recorrida_al_derecho, nondet):-totalViaje(puertoMadryn, calafate, 1711).

test(recorrida_al_reves, nondet):-totalViaje(calafate, puertoMadryn, 1711).

:-end_tests(rutas).
