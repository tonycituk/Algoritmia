Algoritmo PotenciaElectrica
	//Definimos variables
	Definir potencia Como Real;
	Definir corriente Como Real;
	
	//Pedimos el valor faltante al usuario (intensidad de corriente)
	Escribir "Ingresa la intensidad de la corriente en Amperes:";
	Leer corriente;
	
	//Calculamos la pontencia
	potencia = corriente * (corriente * 4);
	
	//Devolvemos el valor de la potencia
	Escribir "La potencia del circuito es de: ", potencia, "W";
FinAlgoritmo
