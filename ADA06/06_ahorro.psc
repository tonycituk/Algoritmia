Algoritmo ahorro
	//Definimos variables
	Definir contador Como Real;
	Definir ahorroMes, ahorroTotal Como Real;
	ahorroTotal = 0 ;
	Definir mes Como Caracter;
	Dimension mes[13];
	
	mes[1] = "Enero";
	mes[2] = "Febrero";
	mes[3] = "Marzo";
	mes[4] = "Abril";
	mes[5] = "Mayo";
	mes[6] = "Junio";
	mes[7] = "Julio";
	mes[8] = "Agosto";
	mes[9] = "Septiembre";
	mes[10] = "Octubre";
	mes[11] = "Noviembre";
	mes[12] = "Diciembre";
	
	//Repetimos 12 veces para completar el ano
	Para contador = 1 Hasta 12 Con Paso 1 Hacer
		//Solicitamos el ahorro del mes
		Escribir "Ingresa el ahorro del mes de ", mes[contador], ":";
		Leer ahorroMes;
		ahorroTotal = ahorroTotal + ahorroMes;
		Si contador < 12 Entonces
			Escribir "El ahorro que llevas es: $",ahorroTotal;
		Fin Si
	Fin Para
	
	//Escribimos el ahorro anual
	Escribir "El ahorro del ano es: $", ahorroTotal;
	
FinAlgoritmo
