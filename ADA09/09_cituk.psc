Algoritmo focos
	//definimos variables
	Definir focosMatriz, i, j, vectorL, vectorI Como Entero;
	Dimension focosMatriz[2, 4];
	Definir modelo Como Caracter;
	Dimension vectorL[4];
	Dimension vectorI[4];
	
	//Solicitamos la producción semanal de los focos
	Para i = 0 Hasta 2 - 1 Con Paso 1 Hacer
		Si i = 0 Entonces
			Escribir "Para los focos LED";
		SiNo
			Escribir "Para los focos incandescentes";
		Fin Si
		Para j = 0 Hasta 4 - 1 Con Paso 1 Hacer
			Escribir "Ingresa la produccion semanal del modelo M", j + 1, ": ";
			Leer focosMatriz[i, j];
		Fin Para
	Fin Para
	
	//Calculamos los defectuosos
	vectorL[0] = redon(focosMatriz[0, 0] * .02);
	vectorL[1] = redon(focosMatriz[0, 1] * .05);
	vectorL[2] = redon(focosMatriz[0, 2] * .08);
	vectorL[3] = redon(focosMatriz[0, 3] * .1);
	
	vectorI[0] = redon(focosMatriz[1, 0] * .02);
	vectorI[1] = redon(focosMatriz[1, 1] * .05);
	vectorI[2] = redon(focosMatriz[1, 2] * .08);
	vectorI[3] = redon(focosMatriz[1, 3] * .1);
	
	//Escribimos los resultados
	Escribir "Para los focos LED";
	Para j = 0 Hasta 4 - 1 Con Paso 1 Hacer
		Escribir "Los defectuosos del modelo M", j + 1, " fueron: ", vectorL[j];
	Fin Para
	
	Escribir "Para los focos Incandescentes";
	Para j = 0 Hasta 4 - 1 Con Paso 1 Hacer
		Escribir "Los defectuosos del modelo M", j + 1, " fueron: ", vectorI[j];
	Fin Para
	
FinAlgoritmo
