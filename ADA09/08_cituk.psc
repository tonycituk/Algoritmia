Algoritmo matrizDiagonal
	//definimos variables
	Definir matriz, i , j, n, multiplicacion, cuantosPares, cuantosImpares Como Entero;
	cuantosPares = 0;
	cuantosImpares = 0;
	multiplicacion = 1;
	//Pedimos el tamano de la matriz
	Escribir "Ingresa la cantidad de filas y columnas:";
	Leer n;
	
	//Inicializamos la matriz
	Dimension matriz[n, n];
	
	//Llenamos la matriz
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Para j = 0 Hasta n - 1 Con Paso 1 Hacer
			Si i == j Entonces
				Escribir "Ingresa el valor del elemento con posición [",i + 1,", ", j + 1, "]: ";
				Leer matriz[i, j];
				multiplicacion = multiplicacion * matriz[i, j];
				Si matriz[i, j] % 2 == 0 Entonces
					cuantosPares = cuantosPares + 1;
				SiNo
					cuantosImpares = cuantosImpares + 1;
				FinSi
			SiNo
				matriz[i, j] = 0;
			Fin Si
		Fin Para
	Fin Para
	
	//Imprimos la matriz Diagonal y sus resultados
	Escribir "La matriz diagonal ingresada es: ";
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Para j = 0 Hasta n - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[i, j];
			Si j < n - 1 Entonces
				Escribir Sin Saltar ",       ";
			SiNo
				Escribir " ";
			Fin Si
		Fin Para
	Fin Para
	
	Escribir "La matriz diagonal tiene ", cuantosPares, " numero pares.";
	Escribir "La matriz diagonal tiene ", cuantosImpares, " numero impares.";
	Escribir "La multiplicacion de sus elementos es: ", multiplicacion;	
	
	
FinAlgoritmo