Algoritmo SaldoIntereses
	//Definimos Variables
	//Actuales
	Definir saldoActual, compra, pagoMinimo, pagoSinIntereses Como Real;
	//Relacion Previa
	Definir saldoAnterior, pagoAnterior, pagoMinimoAnt, pagoSinInteresesAnt Como Real;
	
	//solicitamos al usuario información de su saldo y deposito
	Imprimir "Ingrese su saldo:"; 
	Leer saldoAnterior;
	Imprimir "Ingrese la cantidad que depósito anteriormente:"; 
	Leer pagoAnterior;
	Imprimir "Ingrese el total de su compra:"; 
	Leer compra;
	Imprimir "Saldo anterior: $", saldoAnterior;
	
	//Calculamos pagos minimos y saldo actual
	pagoMinimoAnt = saldoAnterior*.15;
	pagoSinInteresesAnt = saldoAnterior*.85;
	saldoActual = saldoAnterior + compra - pagoAnterior;;
	
	//Agregamos intereses o multa
	Si pagoAnterior < pagoMinimoAnt Entonces
		saldoActual = saldoActual * 1.12 + 200;
	SiNo
		Si pagoAnterior < pagoSinInteresesAnt Entonces
			saldoActual = saldoActual * 1.12;
		FinSi
	FinSi
	
	//calculamos pagos minimos nuevos
	pagoMinimo = saldoActual*.15;
	pagoSinIntereses = saldoActual*.85;
	
	//Devolvemos al usuario su informacion
	Imprimir "Su saldo actual es $", saldoActual;
	Imprimir "Para no generar intereses pague: $", pagoSinIntereses, ".";
	Imprimir "Para no generar multa por atraso pague: $", pagoMinimo, ".";
	
FinAlgoritmo
