Algoritmo Promedio
	//Definimos variables
	Definir examenUno Como Real;
	Definir examenDos Como Real;
	Definir examenTres Como Real;
	Definir promedioExamenes Como Real;
	
	//Pedimos la calificacion de los examenes al usuario
	Escribir "Ingresa la calificacion del primer examen";
	Leer examenUno;
	Escribir "Ingresa la calificacion del segundo examen";
	Leer examenDos;
	Escribir "Ingresa la calificacion del tercer examen";
	Leer examenTres;
	
	//Calculamos el promedio
	promedioExamenes = examenUno*.25 + examenDos*.25 + examenTres*.5;
	
	//Devolvemos el promedio
	Escribir "Tu promedio es: ", promedioExamenes;
FinAlgoritmo