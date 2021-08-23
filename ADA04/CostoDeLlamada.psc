Algoritmo CostoDeLlamada
	// Definir variables
	Definir duracion Como Real;
	Definir precioMinuto Como Real;
	Definir costoLlamada Como Real;
	// Leer los valores que nos proporcione el usuario
	Escribir 'Ingresa la duracion de la llamada en minutos: ';
	Leer duracion;
	Escribir 'Ingresa el precio de minuto de llamada: ';
	Leer precioMinuto;
	// Calculo
	costoLlamada = precioMinuto*duracion;
	// Devolver el costo de la llamada
	Escribir 'El costo de la llamada es: ',costoLlamada;
FinAlgoritmo
