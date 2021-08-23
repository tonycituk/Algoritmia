Algoritmo horasSueldo
	//Definimos variables
	Definir numDia, horas, totalHoras Como Entero;
	Definir sueldoHora, sueldoTotal Como Real;
	numDia = 1;
	totalHoras = 0;
	//Pedimos el pago por hora
	Escribir "Ingresa el pago por hora: ";
	Leer sueldoHora;
	
	//Pedimos las horas de trbajo por día 
	Mientras numDia <= 6 Hacer
		Escribir "Ingresa las horas trbajadas el día ", numDia, ": ";
		Leer horas;
		totalHoras = totalHoras + horas;
		numDia = numDia + 1;
	Fin Mientras
	
	//Calculamos el sueldoTotal
	sueldoTotal = sueldoHora * totalHoras;
	
	//Imprimimos los resultados
	Escribir "Las horas trabajadas son: ", totalHoras;
	Escribir "El sueldo total es: ", sueldoTotal;
FinAlgoritmo
