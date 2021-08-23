  Algoritmo repetidosDesordenados
	
	//Definimos variables
	  Definir arreglo, arregloSinRepeticiones, n, i, j,k, repetidos Como Entero;
	  Definir seRepite Como Logico;
	  repetidos = 0;
	
	//Pedimos el tamano del arreglo
	Escribir "Ingrese el tamano del arreglo";
	Leer n;
	
	Dimension arreglo[n];
	
	//Se llena el arreglo
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "Ingresa el valor para la posicion ", i + 1, ": ";
		Leer arreglo[i];
		Si i <> 0 Entonces
			seRepite = Falso;
			Para j = 0 Hasta i - 1 Con Paso 1 Hacer
				Si arreglo[i] == arreglo[j] y j<>i Entonces
					seRepite = Verdadero;
				Fin Si
			Fin Para
			Si seRepite Entonces
				repetidos = repetidos + 1;
				Escribir repetidos;
			Fin Si
		Fin Si
	Fin Para
	Dimension arregloSinRepeticiones[n-repetidos];
	
	
	//pasamos por el primer arreglo y guardamos los que no se repiten en el otro
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Si i = 0 Entonces
			arregloSinRepeticiones[0] = arreglo [0];
			j=1;
		SiNo
			seRepite=Falso;
			Para k = 0 Hasta j-1 Con Paso 1 Hacer
				Si arreglo[i]==arregloSinRepeticiones[k] Entonces
					seRepite = Verdadero;
				Fin Si
			Fin Para
			Si seRepite == Falso Entonces
				arregloSinRepeticiones[j] = arreglo[i];
				j = j + 1;
			FinSi
		Fin Si
	Fin Para
	
	
	//Escribimos el arreglo sin repeticiones
	Escribir "El arreglo sin repiticiones: ";
	Para i = 0 Hasta n - repetidos - 1 Con Paso 1 Hacer
		Escribir arregloSinRepeticiones[i];
	Fin Para
	
	
	
FinAlgoritmo
