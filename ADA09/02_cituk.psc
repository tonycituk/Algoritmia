Algoritmo sumaDiagonalPrincipal
	//definimos variables
	Definir matriz, sumaDiagonal, i , j, n, m Como Entero;
	sumaDiagonal = 0;
	
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
			Fin Para
		Fin Para
		
		//se calcula la suma de su diagonal
		Para i = 0 Hasta m - 1  Con Paso 1 Hacer
			sumaDiagonal = sumaDiagonal + matriz[i, i];
		Fin Para
		
		Escribir "La suma de la diagonal principal es: ", sumaDiagonal;
	SiNo
		Escribir "Debido a que la matriz no es cuadrada la suma de los elementos de su diagonal principal es 0.";
	Fin Si
FinAlgoritmo
