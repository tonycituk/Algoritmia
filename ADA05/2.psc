Algoritmo simi
	//Definimos variables
	Definir costo Como Real;
	Definir costoTratamiento Como Real;
	Definir numConsulta Como Entero;
	Imprimir "Que numero de consulta es?: ";
	Leer numConsulta;
	//determinamos precio y costoTratamiento
	
	Si numConsulta <= 3 Entonces
		costo = 200;
		costoTratamiento = costo * numConsulta;
	SiNo Si numConsulta <= 5 Entonces
			costo = 150;
			costoTratamiento = costo*(numConsulta - 3) + 600;
		SiNo Si numConsulta <= 8 Entonces
				costo = 100;
				costoTratamiento = costo*(numConsulta - 5) + 900;
			SiNo
				costo = 50;
				costoTratamiento = costo*(numConsulta - 5) + 1200;
			FinSi
		FinSi
	FinSi
	Imprimir "La consulta costara $", costo, ".";
	Imprimir "El costo total de su tratamiento es de $",costoTratamiento,".";
FinAlgoritmo
