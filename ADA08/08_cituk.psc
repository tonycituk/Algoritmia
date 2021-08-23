Algoritmo mayorDeUnArreglo
	
	//Definimos variables
	Definir arreglo, n, posicionMayor, i Como Entero;
	posicionMayor = 0;
	
	//Pedimos el tamano del arreglo
	Escribir "Ingresa el tamano del arreglo";
	Leer n;
	Dimension arreglo[n];
	
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingresa el valor del elemento ", i+1;
		Leer arreglo[i];
		
		Si i == 0 Entonces
			posicionMayor = i;
		SiNo
			Si arreglo[i] > arreglo[posicionMayor] Entonces
				posicionMayor = i;
			Fin Si
		Fin Si
	Fin Para
	
	//Escribimos la posicionMayor y lo que vale<
	Escribir "El elemento mayor se encuentra en la posición ", posicionMayor+1, " y vale ", arreglo[posicionMayor];
	
FinAlgoritmo
