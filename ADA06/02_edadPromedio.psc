Algoritmo edadPromedio
	//Definimos variables
	Definir edad, sumaEdades, nAlumnos, nAlumno Como Entero;
	Definir promedio Como Real;
	nAlumno = 1;
	sumaEdades = 0;
	
	//Pedimos la cantidad de alumnos
	Escribir "Ingrese la cantidad de alumnos";
	Leer nAlumnos;
	
	//pedimos edades hasta que pasemos por el último alumno 
	Repetir
		Escribir "Ingresa la edad del alumno ", nAlumno, ":";
		Leer edad;
		sumaEdades = sumaEdades + edad;
		nAlumno = nAlumno + 1;
	Hasta Que nAlumno>nAlumnos
	
	//Calculamos el promedio de edades
	promedio = sumaEdades/nAlumnos;
	
	//Escribimos el promedio de la edad
	Escribir "La edad promedio de los ", nAlumnos, " alumnos es: ", promedio;
FinAlgoritmo