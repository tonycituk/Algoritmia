Algoritmo LaCurvaLoca
	//Definir variables
	Definir kilometros Como Real;
	Definir precioKilometro Como Real;
	Definir costoBoleto Como Real;
	
	//Leer los valores que nos proporcione el usuario
	Escribir "Ingresa los kilometros por recorrer: ";
	Leer kilometros;
	Escribir "Ingresa el precio por kilometro: ";
	Leer precioKilometro;
	
	//Calculo
	costoBoleto = precioKilometro * kilometros;
	
	//Devolver el costo del boleto
	Escribir "El costo del boleto sencillo es: ", costoBoleto;
	
FinAlgoritmo
