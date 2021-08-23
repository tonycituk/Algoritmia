Algoritmo abc
	
	//Definimos 
	Definir A, B, C, N, i Como Entero;
	
	//Pedimos el tamano de los arreglos
	Escribir "Ingresa el tamano de los arreglos (A y B).";
	Leer N;
	Dimension A[N];
	Dimension B[N];
	Dimension C[N];
	
	//se llena el arreglo A
	Escribir "Ingresa ahora los valores para el arreglo A";
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingresa el valor de la posición ", i + 1, ": ";
		Leer A[i];
	Fin Para
	
	//se llena el arreglo B
	Escribir "Ingresa ahora los valores para el arreglo B";
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingresa el valor de la posición ", i + 1, ": ";
		Leer B[i];
	Fin Para
	
	//se calculan los valores del arreglo C
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		C[i] = A[i] * B[N-i-1];
	Fin Para
	
	//Mostramos el arreglo C
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "El valor de la posicion ", i + 1, " en el arreglo C  es ", C[i],"."; 
	Fin Para
	
FinAlgoritmo
