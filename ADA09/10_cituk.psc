Algoritmo matricesTriangulares
	
	//Definimos variables
	Definir matriz, i, j, filas, columnas, tipo, sumatoria, multiplicacion Como Entero;
	
	//Pedimos el número de columnas y filas
	Escribir "Ingresa el número de filas de la matriz: ";
	Leer filas;
	Escribir "Ingresa el número de columnas de la matriz: ";
	Leer columnas;
	
	Dimension matriz[filas, columnas];
	Si filas == columnas Entonces
		//Superior o inferior
		Escribir "¿Qué tipo de matriz tiangular tienes? Superior(0) o Inferior(1)";
		Leer tipo;
		
		Para i=0 Hasta filas-1 Con Paso 1 Hacer
			Para j=0 Hasta columnas-1 Con Paso 1 Hacer
				//Si tipo 0 es superior
				Si tipo==0 Entonces
					Si i<=j Entonces
						//leemos en el triangulo superior unicamente
						Escribir "Ingresa el valor para la posición [", i + 1,", ", j + 1, "] de la matriz.";
						Leer matriz[i,j];
						
					SiNo
						matriz[i, j] = 0;
					Fin Si
				SiNo
					Si i>=j Entonces
						//leemos en el triangulo inferior unicamente
						Escribir "Ingresa el valor para la posición [", i + 1,", ", j + 1, "] de la matriz.";
						Leer matriz[i,j];
					SiNo
						matriz[i, j] = 0;
					Fin Si
				Fin Si
			Fin Para
		Fin Para
	SiNo
		Escribir "Esa no es una matriz cuadrada, por lo tanto no puede ser triangular";
	Fin Si
	
	//Imprimimos la matriz
	Para i=0 Hasta filas-1 Con Paso 1 Hacer
		Para j=0 Hasta columnas-1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[i, j];
			Si j < columnas - 1 Entonces
				Escribir Sin Saltar ",       ";
			SiNo
				Escribir " ";
			Fin Si
		Fin Para
	Fin Para
	
	//Calculamos la suma y la multiplicacionm
	sumatoria = 0;
	multiplicacion = 1;
	Para i=0 Hasta filas-1 Con Paso 1 Hacer
		Para j=0 Hasta columnas-1 Con Paso 1 Hacer
			Si tipo==0 Entonces
				Si i<=j Entonces
					//usamos el triangulo superior unicamente
					sumatoria = sumatoria + matriz[i,j];
					multiplicacion = multiplicacion * matriz[i,j];
				Fin Si
			SiNo
				Si i>=j Entonces
					//usamos el triangulo inferior unicamente
					sumatoria = sumatoria + matriz[i,j];
					multiplicacion = multiplicacion * matriz[i,j];
				Fin Si
			Fin Si
		Fin Para
	Fin Para
	
	Escribir "Su sumatoria es: ", sumatoria;
	Escribir "La multiplicacion de sus elementos es: ", multiplicacion;
	
FinAlgoritmo
