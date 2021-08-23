Algoritmo matrizDiagonal
	//definimos variables
	Definir matriz, i , j, n, m Como Entero;
	Definir esDiagonal Como Logico;
	esDiagonal = Verdadero;
	
	//Pedimos el tamano de la matriz
	Escribir "Ingresa la cantidad de filas:";
	Leer m;
	Escribir "Ingresa la cantidad de columnas:";
	Leer n;
	
	Dimension matriz[m,n];
	
	//si es matriz cuadrada la llenamos
	Si n==m Entonces
		//Se llena la matriz
		Para i = 0 Hasta m - 1 Con Paso 1 Hacer
			Para j = 0 Hasta n - 1 Con Paso 1 Hacer
				Escribir "Ingresa el valor del elemento con posición [",i + 1,", ", j + 1, "]";
				Leer matriz[i, j];
				Si i <> j Y matriz[i, j] <> 0 Entonces
					esDiagonal = Falso;
					i = m;
					j = n;
				Fin Si
			Fin Para
		Fin Para
		Si esDiagonal Entonces
			Escribir "La matriz es diagonal.";
		SiNo
			Escribir "La matriz no es diagonal.";
		Fin Si
	SiNo
		Escribir "No es una matriz diagonal, porque no es cuadrada.";
	Fin Si
FinAlgoritmo
