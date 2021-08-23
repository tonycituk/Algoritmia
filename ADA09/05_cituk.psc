Algoritmo x10
	//definimos variables
	Definir matrizA, matrizB, matrizC, i, j, sumaFilaColumna, contador Como Entero;
	Dimension matrizA[10], matrizB[10], matrizC[10, 10];
	contador = 0;
	
	//Se llenan las mátrices
	//Para llenar las matrices es necesario anidar ciclos
	Para i = 0 Hasta 10-1 Con Paso 1 Hacer
		Escribir "Ingresa el valor para la posición [", 1,", ", i+1, "] de la matriz A.";
		Leer matrizA[i];
	Fin Para
	
	//Para llenar las matrices es necesario anidar ciclos
	Para i = 0 Hasta 10-1 Con Paso 1 Hacer
		Escribir "Ingresa el valor para la posición [", i+1,", ", 1,"] de la matriz B.";
		Leer matrizB[i];
	Fin Para
	
	//El producto de 2 arreglos es otro arreglo en este caso A x B = C
	Para i = 0 Hasta 10-1 Con Paso 1 Hacer
		sumaFilaColumna = 0;
		Para j = 0 Hasta 10 - 1 Con Paso 1 Hacer
			sumaFilaColumna = sumaFilaColumna + (matrizA[i] * matrizB[j]);
		Fin Para
		
		matrizC[i, contador] = sumaFilaColumna;
		Imprimir matrizC[i,contador];
		contador = contador + 1;
	Fin Para
	
	//Se imprime el valor de C
	Para i = 0 Hasta 10-1 Con Paso 1 Hacer
		Para j = 0 Hasta 10 - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matrizC[i, j];
			Si j < 10 - 1 Entonces
				Escribir Sin Saltar ",       ";
			SiNo
				Escribir " ";
			Fin Si
		Fin Para
	Fin Para
FinAlgoritmo
