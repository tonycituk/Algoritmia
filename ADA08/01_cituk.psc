  Algoritmo repetidosOrdenados
	
	//Definimos variables
	  Definir ingreso, arreglo, arregloSinRepeticiones, n, nSinRespeticiones, i, j, repetidos Como Entero;
	  Definir seRepite Como Logico;
	  repetidos = 0;
	
	//Pedimos el tamano del arreglo
	Escribir "Ingrese el tamano del arreglo ordenado";
	Leer n;
	
	Dimension arreglo[n];
	
	//Se llena el arreglo
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "Ingresa el valor para la posicion ", i + 1, ": ";
		Leer ingreso;
		Si i = 0 Entonces
			arreglo[i] = ingreso;
		SiNo
			Si ingreso<arreglo[i-1] Entonces
				Escribir "debes ingresar un valor igual o mayor que: ", arreglo[i-1];
				i = i -1;
			SiNo
				arreglo[i] = ingreso;
				seRepite = Falso;
				Para j = 0 Hasta i - 1 Con Paso 1 Hacer
					Si arreglo[i] == arreglo[j] y j<>i Entonces
						seRepite = Verdadero;
					Fin Si
				Fin Para
				Si seRepite Entonces
					repetidos = repetidos + 1;
				Fin Si
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
			Si arreglo[i]<>arregloSinRepeticiones[j-1] Entonces
				arregloSinRepeticiones[j] = arreglo[i];
				j = j +1;
			Fin Si
		Fin Si
	Fin Para
	
	
	//Escribimos el arreglo sin repeticiones
	Escribir "El arreglo sin repiticiones: ";
	Para i = 0 Hasta n - repetidos - 1 Con Paso 1 Hacer
		Escribir arregloSinRepeticiones[i];
	Fin Para
	
	
	
FinAlgoritmo
