Algoritmo pago20meses
	//Definimos variables
	Definir pagoMes, pagoTotal, contador Como Entero;
	contador = 1;
	//iniciamos con 10 debido a que asi lo indica el problema
	pagoMes = 10;
	pagoTotal = pagoMes;
	Escribir "Pago mes 1: ", pagoMes;
	
	Repetir
		contador = contador + 1;
		pagoMes = pagoMes * 2;
		//se agrega lo que se paga cada mes al pago total
		pagoTotal = pagoTotal + pagoMes;
		Escribir "Pago mes ", contador, ": ", pagoMes;
	Hasta Que contador = 20
	
	//Escribimos el pago total
	Escribir "Pago total: ", pagoTotal;
	
FinAlgoritmo
