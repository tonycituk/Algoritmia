Algoritmo productoDeMatrices
	
	//Definimos variables
	Definir A, B, C, i, j, k, m, n, p, q, sumaFilaColumna Como Entero;
	//A B y C son las matrices que utilizaremos en
	//este ejercicio; C albergará el producto de A y B
	
	//Pedimos los tamanos de las matrices
	Escribir Sin Saltar "Ingresa la cantidad de filas de la matriz A: ";
	Leer m;
	Escribir Sin Saltar "Ingresa la cantidad de columnas de la matriz A: ";
	Leer n;
	
	p = n + 1;
	Mientras p <> n Hacer
		Escribir Sin Saltar "Ingresa la cantidad de filas de la matriz B: ";
		Leer p;
		Si p <> n Entonces
			Escribir "La cantidad de filas de B, debe ser ", n;
			Escribir "Ingresa el valor correcto :).";
		Fin Si
	Fin Mientras

	Escribir Sin Saltar "Ingresa la cantidad de columnas de la matriz B: ";
	Leer q;
	
	Dimension A[m, n];	
	Dimension B[p, q];
	Dimension C[m, q];
	
	
	//Para llenar las matrices es necesario anidar ciclos
	Para i = 0 Hasta m-1 Con Paso 1 Hacer
		Para j = 0 Hasta n - 1 Con Paso 1 Hacer
			Escribir "Ingresa el valor para la posición [", i + 1,", ", j + 1,"] del arreglo A.";
			Leer A[i, j];
		Fin Para
	Fin Para
	
	Para i = 0 Hasta p-1 Con Paso 1 Hacer
		Para j = 0 Hasta q - 1 Con Paso 1 Hacer
			Escribir "Ingresa el valor para la posición [", i + 1,", ", j + 1,"] del arreglo B.";
			Leer B[i, j];
		Fin Para
	Fin Para
	
	//El producto de 2 arreglos es otro arreglo en este caso A x B = C
	Para i = 0 Hasta m-1 Con Paso 1 Hacer
		Para j = 0 Hasta q - 1 Con Paso 1 Hacer
			sumaFilaColumna = 0;
			Para k = 0 Hasta n - 1 Con Paso 1 Hacer
				sumaFilaColumna = sumaFilaColumna + (A[i, k] * B[k, j]);
			Fin Para
			C[i, j] = sumaFilaColumna;
		Fin Para
	Fin Para
	
	//Se imprime el valor de C
	Imprimir "A[", m,", ", n,"] ", "* ", "B[", p,", ", q,"] C[", m, ", ", q, "]";
	Imprimir "C[", m, ", ", q, "] = ";
	Para i = 0 Hasta m-1 Con Paso 1 Hacer
		Para j = 0 Hasta q - 1 Con Paso 1 Hacer
			Escribir Sin Saltar C[i, j];
			Si j < q - 1 Entonces
				Escribir Sin Saltar ",       ";
			SiNo
				Escribir " ";
			Fin Si
		Fin Para
	Fin Para
	
FinAlgoritmo
