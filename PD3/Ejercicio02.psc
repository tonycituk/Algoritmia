Algoritmo esMatrizSimetrica
	
	//definimos variables
	Definir matriz, i, j, filas, columnas Como Entero;
	Definir esSimetrica Como Logico;
	esSimetrica = Verdadero;
	
	//Pedimos la cantidad de filas y columnas
	Escribir "Ingresa la cantidad de filas de la matriz: ";
	Leer filas;
	
	Escribir "Ingresa la cantidad de columnas de la matriz: ";
	Leer columnas;
	
	//Inicializamos nuestra matriz
	Dimension matriz[filas, columnas];
	
	//Se llena la matriz
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			//Se pide el valor del elemento matriz[i, j]
			Escribir "Ingresa el valor del elemento con posición [",i + 1,", ", j + 1, "]";
			Leer matriz[i, j];
		Fin Para
	Fin Para
	
	
	//Imprimos la matriz
	Escribir "La matriz ingresada es: ";
	Para i = 0 Hasta filas-1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[i, j];
			Si j < columnas - 1 Entonces
				Escribir Sin Saltar ",     ";
			SiNo
				Escribir " ";
			Fin Si
			
			Si filas == columnas Entonces
				//determinamos si no es simetrica
				Si matriz[i, j] <> matriz[j, i] Entonces
					esSimetrica = Falso;
				Fin Si
			SiNo
				esSimetrica = Falso;
			Fin Si
			
		Fin Para
	Fin Para
	
	//Mostramos la transpuesta de la matriz
	Escribir "La transpuesta de la matriz ingresada es: ";
	Para j = 0 Hasta columnas-1 Con Paso 1 Hacer
		Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[i, j];
			Si i < filas - 1 Entonces
				Escribir Sin Saltar ",     ";
			SiNo
				Escribir " ";
			Fin Si
		Fin Para
	Fin Para
	
	Si esSimetrica Entonces
		Escribir "La matriz es simétrica";
	SiNo
		Escribir "La matriz no es simétrica";
	Fin Si
	
	
FinAlgoritmo
