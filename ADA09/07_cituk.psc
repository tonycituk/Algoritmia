Algoritmo sumaRenglonesColumnas
	
	//Definimos variables
	Definir matriz, i, j, rFilas, cColumnas, sumaFilas, sumaColumnas Como Entero;
	
	//Pedimos la cantidad de filas y columnas
	Escribir "Ingresa la cantidad de filas: ";
	Leer rFilas;
	Escribir "Ingresa la cantidad de columnas: ";
	Leer cColumnas;
	
	//Inicializamos las Dimensiones 
	Dimension matriz[rFilas, cColumnas];
	Dimension sumaFilas[rFilas];
	Dimension sumaColumnas[cColumnas];
	
	//Se llena la matriz
	Para i = 0 Hasta rFilas - 1 Con Paso 1 Hacer
		sumaFilas[i] = 0;
		Para j = 0 Hasta cColumnas - 1 Con Paso 1 Hacer
			Escribir "Ingresa el valor para la posición [", i + 1,", ", j + 1,"] de la matriz.";
			Leer matriz[i, j];
			
			//se hace la sumatoria de filas y columnas y se guarda en otro vector
			sumaFilas[i] = sumaFilas[i] + matriz[i, j];
			Si i = 0 Entonces
				sumaColumnas[j] = matriz[i, j];
			SiNo
				sumaColumnas[j] = sumaColumnas[j] + matriz[i, j];
			Fin Si
		Fin Para
	Fin Para

	
	//Mostramos la matriz ingresada
	Escribir "La matriz ingresada es: ";
	Para i = 0 Hasta rFilas - 1 Con Paso 1 Hacer
		Para j = 0 Hasta cColumnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[i, j];
			Si j < rFilas - 1 Entonces
				Escribir Sin Saltar ",       ";
			SiNo
				Escribir " ";
			Fin Si
		Fin Para
	Fin Para
	
	//Imprimos los resultados
	Para i = 0 Hasta rFilas - 1 Con Paso 1 Hacer
		Escribir "La suma de los elementos de la fila ", i + 1," es: ", sumaFilas[i];
	Fin Para
	
	Para i = 0 Hasta cColumnas - 1 Con Paso 1 Hacer
		Escribir "La suma de los elementos de la columna ", i + 1," es: ", sumaColumnas[i];
	Fin Para
	
FinAlgoritmo
