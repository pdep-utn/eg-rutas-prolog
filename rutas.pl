distancia(buenosAires, puertoMadryn, 1300).
distancia(puertoMadryn, puertoDeseado, 732).
distancia(puertoDeseado, rioGallegos, 736).
distancia(puertoDeseado, calafate, 979).
distancia(rioGallegos, calafate, 304).
distancia(calafate, chalten, 213).

kilometrosViaje(Origen, Destino, Kms):-
    distancia(Origen, Destino, Kms).
kilometrosViaje(Origen, Destino, KmsTotales):-
    distancia(Origen, PuntoIntermedio, KmsIntermedios),
    kilometrosViaje(PuntoIntermedio, Destino, KmsFinales),
    KmsTotales is KmsIntermedios + KmsFinales.

totalViaje(Origen, Destino, Kms):-kilometrosViaje(Origen, Destino, Kms).
totalViaje(Destino, Origen, Kms):-kilometrosViaje(Origen, Destino, Kms).

:-begin_tests(rutas).

test(distancia_directa, nondet):-kilometrosViaje(puertoMadryn, puertoDeseado, 732).

test(distancias_posibles_usando_diferentes_rutas, set(Kilometros = [1711, 1772])):-
    kilometrosViaje(puertoMadryn, calafate, Kilometros).

test(recorrida_al_derecho, nondet):-totalViaje(puertoMadryn, calafate, 1711).

test(recorrida_al_reves, nondet):-totalViaje(calafate, puertoMadryn, 1711).

:-end_tests(rutas).
