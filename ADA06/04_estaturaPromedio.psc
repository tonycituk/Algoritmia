Algoritmo estaturaPromedio
	
	//Definimos variables
	Definir estatura, estaturas, promedio Como Real;
	Definir cantidad Como Entero;
	cantidad = 0;
	estaturas = 0;
	//Solcitamos estaturas hasta que ya no ingresen valores
	Repetir
		Escribir "Ingresa tu estatura en metros:";
		Leer estatura;
		estaturas = estaturas + estatura;
		
		//sumamos uno a la cantidad para saber la cantidad de estaturas ingresadas
		cantidad = cantidad + 1;
	Hasta Que estatura = 0
	
	//Le restamos 1 a la cantidad para no contar la vez que no se ingreso un valor
	cantidad = cantidad - 1;
	
	//Calculams el promedio
	promedio = estaturas/cantidad;
	
	//Escribimos el promedio de las estaturas
	Escribir "El promedio de las ", cantidad, " estaturas ingresadas es: ", promedio, "cm.";
	
FinAlgoritmo
