Algoritmo tablaK
	//Definimos las variables
	Definir k, n, resultado Como Entero;
	//igualamos a 1 a la variable b para iniciat con 1 la tablas
	n = 1;
	//Pedimos el valor k
	Escribir "Ingresa el número para saber su tabla de multiplicar: ";
	Leer k;
	
	//Obtener la tabla de multiplicar de K desde 1 hasta 12
	Mientras n<=12 Hacer
		resultado = k * n;
		Escribir k, " * ", n, " = ", resultado ;
		n = n + 1; 
	Fin Mientras
FinAlgoritmo
