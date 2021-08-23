Algoritmo edadPromedio
	//Definimos Variables
	Definir edad, sumaEdades, nAlumnos, nAlumno Como Entero;
	Definir promedio Como Real;
	sumaEdades = 0;
	
	//Pedimos el numero de alumnos
	Escribir "Ingrese la cantidad de alumnos";
	Leer nAlumnos;
	
	//empezamos desde el alumno numero 1 hasta llegar con nAlumnos
	Para nAlumno = 1 Hasta nAlumnos Con Paso 1 Hacer
		//Pedimos la edad del alumno nAlumno
		Escribir "Ingresa la edad del alumno ", nAlumno, ":";
		Leer edad;
		sumaEdades = sumaEdades + edad;
	Fin Para
	
	//Calculamos el promedio
	promedio = sumaEdades/nAlumnos;
	
	//Escribimos el promedio
	Escribir "La edad promedio de los ", nAlumnos, " alumnos es: ", promedio;
FinAlgoritmo