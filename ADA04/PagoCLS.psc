Algoritmo PagosCLS
	// Definir variables
	Definir consumoKilowatts Como Real;
	Definir precioKilowatt Como Real;
	Definir pagoPersona Como Real;
	// Leer los valores que nos proporcione el usuario
	Escribir 'Ingrese el consumo: ';
	Leer consumoKilowatts;
	Escribir 'Ingresa el precio de kilowatt en pesos: ';
	Leer precioKilowatt;
	// Calculo
	pagoPersona = consumoKilowatts*precioKilowatt;
	// Devolver el pago que debe hacer la persona
	Escribir 'La persona deberá pagar: ',pagoPersona,' pesos.';
FinAlgoritmo
