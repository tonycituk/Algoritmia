Algoritmo edadPromedio
	//Definir Variables
	Definir promedio Como Real;
	Definir cantidadAlumnos, edadAlumno, numAlumno, edades Como Entero;
	numAlumno = 1;
	edades=0;
	
	//Solicitamos información del usuario
	Escribir "Ingresa la cantidad de Alumnos";
	Leer cantidadAlumnos;
	
	Mientras numAlumno<=cantidadAlumnos Hacer
		//Pedimos la edad de numAlumno
		Escribir "Ingresa la cantidad del alumno ", numAlumno,":";
		Leer edadAlumno;
		edades = edades + edadAlumno;
		
		numAlumno = numAlumno + 1;
	Fin Mientras
	
	promedio = edades/cantidadAlumnos;
	
	Escribir "El promedio de los ", cantidadAlumnos, " es: ", promedio;
FinAlgoritmo
