/*
  ██╗      ██████╗  ██████╗ ██╗ ██████╗ █████╗ 
  ██║     ██╔═══██╗██╔════╝ ██║██╔════╝██╔══██╗
  ██║     ██║   ██║██║  ███╗██║██║     ███████║
  ██║     ██║   ██║██║   ██║██║██║     ██╔══██║
  ███████╗╚██████╔╝╚██████╔╝██║╚██████╗██║  ██║
  ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝ ╚═════╝╚═╝  ╚═╝                                             
*/

% :- table kilometrosViaje/3.

/** Casos base => la distancia directa es conocida */
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
kilometrosViaje(Destino, Origen, Kms):-
    kilometrosViaje(Origen, Destino, Kms).

totalViaje(Origen, Destino, Kms):-kilometrosViaje(Origen, Destino, Kms).
totalViaje(Destino, Origen, Kms):-kilometrosViaje(Origen, Destino, Kms).
