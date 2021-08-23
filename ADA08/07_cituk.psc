Algoritmo cosechasDeCereal
	//Definimos variables
	Definir cosechas, promedio, toneladas Como Real;
	Definir mayorPromedio, menorPromedio, mes, i , masToneladas Como Entero;
	Definir meses Como Caracter;
	mayorPromedio = 0;
	menorPromedio = 0;
	promedio = 0;
	Dimension cosechas[12];
	Dimension meses[12];
	meses[0] = "Enero";
	meses[1] = "Febrero";
	meses[2] = "Marzo";
	meses[3] = "Abril";
	meses[4] = "Mayo";
	meses[5] = "Junio";
	meses[6] = "Julio";
	meses[7] = "Agosto";
	meses[8] = "Septiembre";
	meses[9] = "Octubre";
	meses[10] = "Noviembre";
	meses[11] = "Diciembre";
	
	//Llenamos las cosechas con las toneladas obtenidas
	Para i = 0 Hasta 11 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingrese las toneladas obtenidas en el mes de ", meses[i];
		Leer toneladas;
		//calculamos el promedio
		promedio = ((promedio * i) + toneladas) / (i+1);
		//Obtenemos el mes con más toneladas de cosecha
		Si i==0 Entonces
			mes = 0;
		SiNo
			Si toneladas>cosechas[mes] Entonces
				mes = i;
			FinSi
		Fin Si
		cosechas[i] = toneladas;
	Fin Para
	
	//comparamos con el promedio para saber cuantos son mayores o menores
	Para i = 0 Hasta 11 Con Paso 1 Hacer
		Si cosechas[i]>promedio Entonces
			mayorPromedio = mayorPromedio + 1;
		SiNo
			menorPromedio = menorPromedio + 1;
		Fin Si
	Fin Para
	
	//Imprimimos los resultados
	Escribir "El promedio anual es de ", promedio, " toneladas de cereal.";
	Escribir "Hubo ", mayorPromedio, " meses con más cosecha que el promedio.";
	Escribir "Hubo ", menorPromedio, " meses con menos cosecha que el promedio.";
	Escribir meses[mes], " fue el mes con más cosecha con un total de ", cosechas[mes];
	
FinAlgoritmo