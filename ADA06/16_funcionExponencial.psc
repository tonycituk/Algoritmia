Algoritmo funcionExponencial
	//Definimos variables
	Definir resultado, elevacion, factorial, x Como Real;
	Definir i, j Como Entero;
	resultado = 1;
	
	
	//Pedimos el valor de x
	Escribir "Este algoritmo calcula el valor de e^x, Ingresa el valor para x:";
	Leer x;
	
	//Hacemos el calculo iterativo hasta 100 pues el resultado es bastante acertado con este valor
	Para i = 1 Hasta 100 Con Paso 1 Hacer
		//elevacion
		elevacion = x;
		Para j = 2 Hasta i Con Paso 1 Hacer
			elevacion = elevacion * x;
		Fin Para
		//factorial
		j = 1;
		factorial = 1;
		Mientras j <= i Hacer
			factorial = factorial * j;
			j = j + 1;
		Fin Mientras
		
		//calculamos resultado
		resultado = resultado + elevacion/factorial;
	Fin Para
	
	//Escribimos el resultado
	Escribir "e^", x, " = ",resultado;
FinAlgoritmo
