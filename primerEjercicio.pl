comida(juan, cena).
comida(arturo, come).
comida(jose, almuerza).

suma(A,B):- Z is A + B, write("la suma es "), write(Z).

resta(A,B):- Z is A - B, write("la resta es "), write(Z).
muilt(A,B):- Z is A * B, write("la multiplicacion es "), write(Z).
div(A,B):- Z is A / B, write("la divicion es "), write(Z).
potencia(A,B):- Z is A ** B, write("la potencia es "), write(Z).
divente(A,B):- Z is A // B, write("la divicion entera es "), write(Z).
modulo(A,B):- Z is A mod B, write("el modulo es "), write(Z).

ve_pelicula(roberto,suspenso).
ve_pelicula(jaanai,suspenso).
ve_pelicula(abimael,suspenso).
ve_pelicula(leonardo,romance).
ve_pelicula(miguel,terror).

escucha_musica(abelino,raggae).
escucha_musica(jose,rock).
escucha_musica(izmucanet,raggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).

consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

%tiempo_libre(roberto,no).
%tiempo_libre(jaanai,no).
%tiempo_libre(abimael,no).
%tiempo_libre(leonardo,no).
%tiempo_libre(miguel,no).

tiempo_libre(roberto).
tiempo_libre(jaanai).
tiempo_libre(abimael).
tiempo_libre(leonardo).
tiempo_libre(miguel).

tiene_audifinos(roberto,no).
tiene_audifinos(jaanai,si).
tiene_audifinos(abimael,no).
tiene_audifinos(leonardo,si).
tiene_audifinos(miguel,si).

tiene_audifonos(abelino,no).
tiene_audifonos(jose,no).
tiene_audifonos(izmucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(maldonado,no).

tiene_netflix(roberto,si).
tiene_netflix(jaanai,si).
tiene_netflix(abimael,si).
tiene_netflix(leonardo,no).
tiene_netflix(miguel,si).

tiene_spotify(abelino,no).
tiene_spotify(jose,si).
tiene_spotify(izmucanet,si).
tiene_spotify(rolando,no).
tiene_spotify(maldonado,si).


% 1 ¿Quiénes prefieren ver películas?,
% aqui se consulta unicamente a las personas que prefieren ver peliculas.
prefierenVerPelis(X):-ve_pelicula(X,_).

% 2 ¿Quiénes prefieren escuchar musica? 
% aqui se consulta unicamente a las personas que prefieren escuchar musica.
prefierenEscucharMusica(X):-escucha_musica(X,_).

% 3 alguien que ve películas de suspenso, disfruta verlas con palomitas, tiene una cuenta de Netflix y tiempo libre, tiene una tarde perfecta
 tarde_perfecta(X):-ve_pelicula(X,suspenso),consume(X,palomitas),tiene_netflix(X, si),tiempo_libre(X).

% 4 alguien que ve películas consumiendo una ensalada, tiene una vida saludable.
vida_saludable(X):- ve_pelicula(X,_), consume(X,ensalada).

% 5 alguien que escuche regional, tiene audifonos y la aplicacionn de spotify, disfruta de camino a casa.
disfruta_camino(X) :- escucha_musica(X,regional), tiene_audifonos(X,si), tiene_spotify(X,si).


% 6 alguien es feliz si ve películas consumiendo maruchan, tiempo libre y Netflix.
es_feliz(X):-ve_pelicula(X,_),consume(X,maruchan),tiempo_libre(X),tiene_netflix(X,si).

% 7  únicamente pueden ser amigos quienes tienen los mismos gustos (películas, botana).




