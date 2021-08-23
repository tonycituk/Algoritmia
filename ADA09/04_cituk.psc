Algoritmo variosResultados
	//Definimos variables
	Definir matriz, i, j, menorElemento, suma5filas, negativos Como Entero;
	Dimension matriz[15, 12];
	suma5filas = 0;
	negativos = 0;
	
	//Para llenar las matriz es necesario anidar ciclos
	Para i = 0 Hasta 15 - 1 Con Paso 1 Hacer
		Para j = 0 Hasta 12 - 1 Con Paso 1 Hacer
			Escribir "Ingresa el valor para la posición [", i + 1,", ", j + 1,"] de la matriz.";
			Leer matriz[i, j];
			
			//se obtiene el menorElemento
			Si (i + j) == 0 Entonces
				menorElemento = matriz[i, j];
			SiNo
				Si matriz[i, j] < menorElemento Entonces
					menorElemento = matriz[i, j];
				Fin Si
			Fin Si
			
			//suman elementos de las primeras 5 filas
			Si i<5 Entonces
				suma5filas = suma5filas + matriz[i, j];
			Fin Si
			
			//suma de elemtos negatiso 5 - 9 fila 
			Si j >= 4 y j <= 8 y matriz[i, j] < 0 Entonces
				negativos = negativos + 1;
			Fin Si
		Fin Para
	Fin Para
	
	Escribir "El menor elemto es: ", menorElemento;
	Escribir "La suma de los elementos de las cinco primeras filas: ", suma5filas;
	Escribir "El total de elementos negativos en las columnas de la quinta a la nueve: ", negativos;
	
	
FinAlgoritmo
