Algoritmo CobroEstancia
	//Definir variables
	Definir diasEstancia Como Entero;
	Definir costoHabitacion Como Real;
	Definir cobroEstanciaTotal Como Real;
	
	//Pedimos los dias de la estancia y el costo de la habitacion por dia
	Escribir "Ingresa los dias de estancia del huesped:";
	Leer diasEstancia;
	Escribir "Ingresa el costo de la habitacion por día:";
	Leer costoHabitacion;
	
	//Calculamos el costo total
	cobroEstanciaTotal = diasEstancia * costoHabitacion;
	
	//Mostramos el costo total
	Escribir "El cobro de la estancia es: ", cobroEstanciaTotal;
FinAlgoritmo
