Algoritmo Ejercicio04
	
	//Definimos variables
	// pd = prueba de desempeno
	Definir pd01, pd02, pd03, pd04, calificacionFinal Como Real;
	
	//Solicitamos las calificacione al usuario
	Escribir "Ingresa la calificacion de prueba 01 en una escala de 0 - 100:";
	Leer pd01;
	Escribir "Ingresa la calificacion de prueba 02 en una escala de 0 - 100:";
	Leer pd02;
	Escribir "Ingresa la calificacion de prueba 03 en una escala de 0 - 100:";
	Leer pd03;
	Escribir "Ingresa la calificacion de prueba 04 en una escala de 0 - 100:";
	Leer pd04;
	
	//Comprobamos si ingreso las califiaciones correctamente
	
	Si (pd01 >100) o (pd01<0) o (pd02 >100) o (pd02<0) o (pd03 >100) o (pd03<0) o (pd04 >100) o (pd04<0) Entonces
		Escribir "Ingresa tus calificaciones correctamente, en un escala de 0 - 100";
	SiNo
		//Calculamos la calificacionFinal
		calificacionFinal = pd01*.2+pd02*.25+pd03*.3+pd04*.25;
		//Determinamos que letra le corresponde y le damos su calificacionFinal
		Si calificacionFinal >= 90 Entonces
			Escribir "Tu calificacion Final es: A correspondiente a ",calificacionFinal;
		SiNo
			Si calificacionFinal >= 80 Entonces
				Escribir "Tu calificacion Final es: B correspondiente a ",calificacionFinal;
			SiNo
				Si calificacionFinal >= 70 Entonces
					Escribir "Tu calificacion Final es: C correspondiente a ",calificacionFinal; 
				SiNo
					Si calificacionFinal >= 60 Entonces
						Escribir "Tu calificacion Final es: D correspondiente a ",calificacionFinal; 
					SiNo
						Escribir "Tu calificacion Final es: E correspondiente a ",calificacionFinal; 
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
FinAlgoritmo