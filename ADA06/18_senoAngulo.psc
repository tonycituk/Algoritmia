Algoritmo seno
	//Definimos variables
	Definir angulo, fSeno, factorial, elevacion Como Real;
	Definir i, j Como Entero;
	Definir resta Como Logico;
	Definir tipoAngulo Como Caracter;
	resta = Falso;
	fSeno = 0;
	factorial = 1;
	
	//Leer el angulo;
	Escribir "Ingresa el angulo: ";
	Leer angulo;
	
	//Identificamos el ingreso  del angulo
	Escribir "¿El angulo esta en grados o radianes? (Ingresa R para radianes, G para grados.)";
	Leer tipoAngulo;
	
	//Hacemos la conversion del angulo en caso que sea necesario
	Si tipoAngulo == 'G' Entonces
		angulo = angulo / 57.2958;
	Fin Si
	//calcular el seno
	Para i = 1 Hasta 41 Con Paso 2 Hacer
		
		//calcular potencia
		Para j = 1 Hasta i Con Paso 1 Hacer
			Si j = 1 Entonces
				elevacion = angulo;
			SiNo
				elevacion = elevacion * angulo;
			Fin Si
		Fin Para
		
		//calcular factorial
		factorial = 1;
		Para j = 2 Hasta i Con Paso 1 Hacer
			factorial = factorial * j; 
		Fin Para
		
		//Determinar si toca resta o suma
		Si resta Entonces
			elevacion = elevacion * (-1);
			resta = Falso;
		SiNo
			resta = Verdadero;
		Fin Si
		
		//calculo iterativo del seno de un ángulo
		fSeno = fSeno + elevacion/factorial;
		
	Fin Para
	
	//Escribimos el valor del seno del angulo
	Escribir "Seno = " fSeno;
	
FinAlgoritmo
