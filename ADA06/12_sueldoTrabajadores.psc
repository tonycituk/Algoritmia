Algoritmo sueldoTrabajadores
	
	//Definimos variables
	Definir idia, dias, cantTrabajadores, nTrabajador Como Entero;
	Definir sueldoHora, sueldoTotalTrabajador, sueldoTotalTrabajadores, horas, sumaHorasTrabajador Como Real;
	sueldoTotalTrabajadores = 0;
	
	//solicitamos sueldo y tabajadores al usuario
	Escribir "Ingresa la cantidad de trabajadores: ";
	Leer cantTrabajadores;
	Escribir "Ingresa el sueldo por hora: ";
	Leer sueldoHora;
	
	Para nTrabajador = 1 hasta cantTrabajadores Hacer
		Escribir "Ingresa la cantidad de días que ha trabajado el empleado ",nTrabajador,":";
		Leer dias;
		sumaHorasTrabajador = 0;
		Para idia = 1 hasta dias Hacer
			Escribir "Ingresa la cantidad de horas que trabajo el trabajador ", nTrabajador, " el dia ", idia, ":";
			Leer horas;
			sumaHorasTrabajador = horas + sumaHorasTrabajador;
		FinPara
		sueldoTotalTrabajador = sueldoHora * sumaHorasTrabajador;
		//sumar el sueldo de cada uno de los trabajadores
		sueldoTotalTrabajadores = sueldoTotalTrabajadores + sueldoTotalTrabajador;
		
		Escribir "El trabajador ", nTrabajador, " recibe un sueldo de $", sueldoTotalTrabajador;
	FinPara
	
	//Escribimos el pago total
	Escribir "El pago total de los ", cantTrabajadores, " trabajadores es de: $", sueldoTotalTrabajadores;
	
FinAlgoritmo
