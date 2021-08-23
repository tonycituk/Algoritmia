Algoritmo mayorMenorPromedio
	
	//Definimos variables
	Definir arreglo, n, i, mayorPromedio, menorPromedio Como Entero;
	Definir promedio Como Real;
	mayorPromedio = 0;
	menorPromedio = 0;
	promedio = 0;
	
	//Pedimos el tamano del arreglo
	Escribir Sin Saltar "Ingresa el tamano del arreglo";
	Leer n;
	Dimension arreglo[n];
	
	//Se llena el arreglo 
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingresa el valor para la posicion ",i + 1, ": ";
		Leer arreglo[i];
		promedio = promedio + arreglo[i]; 
	Fin Para
	//calculamos el promedio
	promedio = promedio / n;
	
	//Contar los mayores del promedio e imprimilos
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Si arreglo[i]>promedio Entonces
			Escribir Sin Saltar arreglo[i], ", ";
			mayorPromedio = mayorPromedio + 1;
		Fin Si
	Fin Para
	
	Si mayorPromedio>1 Entonces
		Escribir " son mayores que el promedio.";
	SiNo
		Escribir " es el único mayor que el promedio.";
	Fin Si
	
	Escribir "Total de mayores que el promedio: ", mayorPromedio;
	Escribir "Total de mayores que el promedio: ", n-mayorPromedio;
	
FinAlgoritmo
