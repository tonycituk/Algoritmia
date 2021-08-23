Algoritmo ViajeEstudiosPasajes
	
	//Definimons variables
	Definir cantAlumnos Como Entero;
	Definir costoPasajeAlumno Como Real;
	
	//Leer variables
	Escribir "Ingrese la cantidad de alumnos que asistiran al viaje de estud";
	Leer cantAlumnos;
	
	//Determinamos el costoPasajeAlumno dependiendo la cantidad de alumnos
	si cantAlumnos > 100 Entonces
		costoPasajeAlumno = 20;
	SiNo
		si cantAlumnos >= 50 y cantAlumnos <= 100 Entonces
			costoPasajeAlumno = 35;
		SiNo
			si alumnos >= 20 y cantAlumnos < 50 Entonces
				costoPasajeAlumno = 40;
			SiNo
				si cantAlumnos < 20 Entonces
					costoPasajeAlumno = 70;
				FinSi
			FinSi
		FinSi
	FinSi
	
	//Devolvemos el costo del Pasaje por Alumno
	Escribir "El costo de pasaje por alumno es de $", costoPasajeAlumno, " MXN.";
	
FinAlgoritmo
