%Diego Malagon 20162020098

estainscrito(modelos,diego).
estainscrito(modelos,alejo).
estainscrito(modelos,danielio).
clasestotalespormateria(10,modelos).
maximofallas(1,alejo,modelos).
periodo1(36,modelos,alejo).
periodo2(49,modelos,alejo).
periodo3(50,modelos,alejo).

notafinal(M,E):-periodo1(N1,M,E),periodo2(N2,M,E),periodo3(N3,M,E),+((*(N1,0.35)),+((*(N2,0.35)),(*(N3,0.3))))>=30.

asistencia(M,E):-maximofallas(NUM,E,M),clasestotalespormateria(NUMTOTAL,M),NUM=<(*(NUMTOTAL,0.3)).

pasa(E,M):-estainscrito(M,E),notafinal(M,E),asistencia(M,E).
