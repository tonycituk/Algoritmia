Algoritmo sueldoPorSemana
	Definir horas como Real;
	Definir sueldo Como Real;
	Definir pagoHora Como Real;
	Definir horasExtras Como Real;
	Imprimir "¿Cuanto se paga por hora?: ";
	Leer pagoHora;
	Imprimir "Ingrese la cantidad de horas: ";
	Leer horas;
	Si horas > 40 Entonces
		horasExtras = 2* (horas - 40)*pagoHora;
		sueldo = horasExtras + 40*pagoHora;
	SiNo
		sueldo = horas*pagoHora;
	FinSi
	Imprimir "El sueldo es de $", sueldo;
FinAlgoritmo
