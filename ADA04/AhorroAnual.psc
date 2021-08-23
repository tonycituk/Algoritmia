Algoritmo AhorroAnual
	//Definir Variables
	Definir sueldo Como Real;
	Definir ahorroTotal Como Real;
	//Pedir la cantidad del sueldo
	Escribir "Proporciona el sueldo semanal:";
	Leer sueldo;
	
	//Calcular el ahorrro
	//*.15 para calcular el 15%
	//*4 para obtener el total de un mes
	//*12 para obtener el total anual
	ahorroTotal = sueldo*.15*4*12;
	
	//Devolvemos el ahorro total
	Escribir 'En un año el ahorro es de: ',ahorroTotal;
FinAlgoritmo
