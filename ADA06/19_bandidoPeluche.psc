Algoritmo SaldoIntereses
    //Definimos Variables
    //Actuales
    Definir saldoActual, compra, pagoMinimo, pagoSinIntereses Como Real;
    //Relacion Previa
    Definir saldoAnterior, pagoAnterior, pagoMinimoAnt, pagoSinInteresesAnt Como Real;
    // nClientes y contador
	Definir nClientes, contador Como Entero;
	
	//Pedimos el total de clientes 
	Escribir "Ingrese el total de clientes";
	Leer nClientes;
	
	Para contador = 1 Hasta nClientes Con Paso 1 Hacer
		
		Escribir "---------- Cliente ", contador, " -----------";
		//solicitamos saldo y deposito
		Escribir "Ingrese el saldo del cliente ", contador ,":"; 
		Leer saldoAnterior;
		Escribir "Ingrese la cantidad que depósito anteriormente:"; 
		Leer pagoAnterior;
		Escribir "Ingrese el total de su compra:"; 
		Leer compra;
		Escribir "Saldo anterior: $", saldoAnterior;
		
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
		Escribir "Saldo actual es $", saldoActual;
		Escribir "Para no generar intereses debe pagar: $", pagoSinIntereses, ".";
		Escribir "Para no generar multa por atraso debe pagar: $", pagoMinimo, ".";
		
	Fin Para
    
    
FinAlgoritmo
