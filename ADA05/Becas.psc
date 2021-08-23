Algoritmo becasAMLO
	//Definimos variables
	Definir recibenBeca Como Logico;
	Definir edad, beca Como Entero;
	Definir promedio Como Real;
	
	//Solcitamos la información del alumn
	Escribir "Ingresar edad del alumnno";
	Leer edad;
	Escribir "Ingresar promedio final del alumno";
	Leer promedio;
	
	//Determinamos si reciben beca y cuál
	recibenBeca = Verdadero;
	Si edad > 18 Entonces
		Si promedio >= 9 Entonces
			beca = 2000;
		SiNo
			Si promedio >= 7.5 Entonces
				beca = 1000;
			SiNo
				Si promedio >= 6 Entonces
					beca = 500;
				SiNo
					recibenBeca = Falso;
				Fin Si
			Fin Si
		Fin Si
	SiNo
		Si promedio >= 9 Entonces
			beca = 3000;
		SiNo
			Si promedio >= 8 Entonces
				beca = 2000;
			SiNo
				Si promedio >= 6 Entonces
					beca = 100;
				SiNo
					recibenBeca = Falso;
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	//Imprimimos el resultado dependiendo si recibe Beca
	Si recibenBeca == Verdadero Entonces
		Escribir "Beca mensual: $", beca;
	SiNo
		Escribir "Enviar invitación al alumno";
	Fin Si
	
FinAlgoritmo
