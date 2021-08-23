Algoritmo companiaTransporte
	
	//definimos variables
	Definir sueldoHora, horasTrabajadores, totalHorasTrabajadas, sueldoSemanal, totalPagoEmpresa, i , j, trabajaLunes Como Entero;
	Definir nombres, diaSemana Como Caracter;
	totalPagoEmpresa = 0;
	Dimension nombres[5];
	Dimension horasTrabajadores[5, 6];
	Dimension diaSemana[6];
	diaSemana[0] = "Lunes";
	diaSemana[1] = "Martes";
	diaSemana[2] = "Miercoles";
	diaSemana[3] = "Jueves";
	diaSemana[4] = "Viernes";
	diaSemana[5] = "Sabado";
	
	//Pedimos el sueldoHora
	Escribir "Ingresa el pago/hora que reciben los choferes: ";
	Leer sueldoHora;
	
	//Guardamos las horas de cada dia de cada chofer
	Para i = 0 Hasta 5 - 1 Con Paso 1 Hacer
		Escribir "Ingresa el nombre del chofer ", i + 1, ": ";
		Leer nombres[i];
		Para j = 0 Hasta 6 - 1 Con Paso 1 Hacer
			Escribir "Ingresa las horas que trabajo ", nombres[i], " el ", diaSemana[j], ": ";
			Leer horasTrabajadores[i, j];
			Si j == 0 Entonces
				Si i==0 Entonces
					trabajaLunes = i;
				SiNo
					Si horasTrabajadores[i, 0] > horasTrabajadores[trabajaLunes, 0] Entonces
						trabajaLunes = i;
					Fin Si
				Fin Si
			Fin Si
		Fin Para
	Fin Para
	
	
	Escribir "Nombre     total de Horas     Sueldo semanal";
	Para i = 0 Hasta 5 - 1 Con Paso 1 Hacer
		totalHorasTrabajadas = 0;
		sueldoSemanal = 0;
		Para j = 0 Hasta 6 - 1 Con Paso 1 Hacer
			totalHorasTrabajadas = totalHorasTrabajadas + horasTrabajadores[i, j];
		Fin Para
		sueldoSemanal = totalHorasTrabajadas * sueldoHora;
		totalPagoEmpresa = totalPagoEmpresa + sueldoSemanal;
		Escribir nombres[i], "          ", totalHorasTrabajadas, "             $", sueldoSemanal;
	Fin Para
	Escribir "La empresa deberá pagar un total de: $", totalPagoEmpresa;
	Escribir "El que trabajo más el Lunes fue ", nombres[trabajaLunes], ".";
FinAlgoritmo
