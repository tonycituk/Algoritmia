Algoritmo examenIngreso
	//Definimos variables
	Definir n, i, j, calificacion, repeticiones, repeticionesP, posicionModa Como Entero;
	Definir promedio, calificaciones, varianza, desviacionE Como Real;
	promedio = 0;
	varianza = 0;
	
	//Pedimos la cantidad n de alumnos
	Escribir "Ingresa la cantidad de alumnos";
	Leer n;
	Dimension calificaciones[n];
	//por cada alumno pedimos calificacion
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "Ingresa la calificación del alumno #",i+1;
		Leer calificacion;
		promedio = ((promedio * i) + calificacion) / (i+1);
		calificaciones[i] = calificacion;
	Fin Para
	
	repeticionesP = 0;
	//Iteramos para obtener la suma de los cuadrados y la posicion de la moda
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		repeticiones = 0;
		varianza = varianza + (calificaciones[i]-promedio)^2;
		Para j = 0 Hasta n - 1 Con Paso 1 Hacer
			Si calificaciones[i]==calificaciones[j] Y i<>j Entonces
				repeticiones = repeticiones + 1;
			Fin Si
		Fin Para
		Si repeticiones>repeticionesP Entonces
			repeticionesP = repeticiones;
			posicionModa = i;
		Fin Si
	Fin Para
	varianza = varianza/n;
	desviacionE = rc(varianza);
	
//	for(int i=0;i<n;i++){
//	s=0;
//	for(int j=0;j<n;j++){
//	if(A[i]==A[j] & i<>j){
//	s=s+1;
//	}               
//	}
//	if(s>=m){
//	m=s;//guardamos el mayor por el momento
//	a=i;    
//	}
//    }
	//Imprimimos resultados
	Escribir "La media aritmética es: ", promedio;
	Escribir "La varianza es: ", varianza;
	Escribir "La desviacion estandar es: ", desviacionE;
	Escribir "La moda es: ", calificaciones[posicionModa];
	


FinAlgoritmo
