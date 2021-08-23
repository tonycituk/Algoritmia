Algoritmo tikiTaka
	//Definimos variables
	Definir contador, nVentas, mayorMil, mayorQuinien, demas Como Entero;
	Definir ventaTemp, totalVentas, totalMayorMil, totalMayorQuinien, totalDemas Como Real;
	mayorMil = 0;
	mayorQuinien = 0;
	demas = 0;
	totalMayorMil = 0;
	totalMayorQuinien = 0;
	totalDemas = 0;
	
	//Solicitamos el numero de ventas del dia
	Escribir "¿Cuantas ventas se hicieron en el día?";
	Leer nVentas;
	
	//Solicitamos las "N ventas" y la clasificamos
	Para contador = 1 Hasta nVentas Con Paso 1 Hacer
		Escribir "Ingresa el monto de la venta ", contador, ":";
		Leer ventaTemp;
		
		//Clasificamos
		Si ventaTemp >1000 Entonces
			totalMayorMil = totalMayorMil + ventaTemp;
			mayorMil = mayorMil + 1;
		SiNo
			Si ventaTemp >500 Entonces
				totalMayorQuinien = totalMayorQuinien + ventaTemp;
				mayorQuinien = mayorQuinien + 1;
			SiNo
				totalDemas = totalDemas + ventaTemp;
				demas = demas + 1;
			Fin Si
		Fin Si
	Fin Para
	
	//Imprimimos resultados
	Escribir "# Ventas TikiTaka:";
	Escribir "--------------------------------";
	Escribir "Ventas >$1000: ", mayorMil;
	Escribir "Total de ventas: $", totalMayorMil;
	Escribir "--------------------------------";
	Escribir "Ventas >$500, <=$1000: ", mayorQuinien;
	Escribir "Total de ventas: $", totalMayorQuinien;
	Escribir "--------------------------------";
	Escribir "Ventas <$500: ", demas;
	Escribir "Total de ventas: $", totalDemas;
	Escribir "--------------------------------";
	
FinAlgoritmo
