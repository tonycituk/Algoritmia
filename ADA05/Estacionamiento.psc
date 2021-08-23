Algoritmo Estacionamiento
	//Definimos las variables
	Definir horas, costo Como Real;
	//Pedimos los valores al usuario
	Escribir "¿Cuántas horas se estacionó?";
	Leer horas;
	
	//Obtenemos el costo y el pago totals
	Si horas >= 10 Entonces
		costo = (horas-10)*2 + 37;
	SiNo
		Si horas >= 5 Entonces
			costo = (horas-5)*3 + 22;
		SiNo
			Si horas >= 2 Entonces
				costo = (horas-2)*4 + 10;
			SiNo
				costo = horas * 5;
			Fin Si
		Fin Si
	Fin Si
	
	Escribir "Su pago por ",horas," horas es $",costo;
	
FinAlgoritmo
