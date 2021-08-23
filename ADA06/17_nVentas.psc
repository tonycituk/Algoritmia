Algoritmo nVentas
	
	//Definimos variables
	Definir n, nContador, menorIgual10k, mayor10kmenor20k Como Entero;
	Definir venta, montoTotal, montomenorIgual10k, montomayor10kmenor20k Como Real;
	menorIgual10k = 0;
	mayor10kmenor20k = 0;
	montomenorIgual10k = 0;
	montomayor10kmenor20k = 0;
	montoTotal = 0;
	
	//Pedimos la cantidad de ventas
	Escribir "Ingresa la cantidad de ventas";
	Leer n;
	
	Para nContador = 1 Hasta n Con Paso 1 Hacer
		//Le pedimos el precio del producto nContador
		Escribir "Ingresa el total de la venta ", nContador;
		Leer venta;
		
		// Se determina a que grupo pertence
		Si venta <= 10000 Entonces
			menorIgual10k = menorIgual10k + 1;
			montomenorIgual10k = montomenorIgual10k + venta;
		SiNo 
			Si venta < 20000 Entonces
				mayor10kmenor20k = mayor10kmenor20k + 1;
				montomayor10kmenor20k = montomayor10kmenor20k + venta;
			Fin Si
		Fin Si
		
		//Calcular el montoTotal de las n ventas
		montoTotal = montoTotal + venta;
	Fin Para
	
	//Escribimos los resultados
	Escribir "Hubo un total de ", menorIgual10k, " ventas que fueron por 10,000 o menos con un monto de: $", montomenorIgual10k;
	Escribir "Hubo un total de ", mayor10kmenor20k, " ventas que fueron por mas de 10,000 y menos de 20,000 con un monto de: $", montomayor10kmenor20k;
	Escribir "El monto total de las ",n , " ventas fue de $", montoTotal;
	
FinAlgoritmo