Algoritmo Ejercicio01
	//Definimos Variables
	Definir ano Como Entero;
	Definir esBisiesto Como Logico;
	
	//Explique la función del programa y solicite el ano al usuario
	Escribir "Este programa determina si un ano es bisiesto,";
	Escribir "ingrese el ano a comprobar:";
	Leer ano;
	
	//Determinar si el ano es bisiesto dependiendo si es múltiplo de ciertos números
	Si (ano MOD 4) == 0 Entonces
		esBisiesto = Verdadero;
		Si (ano MOD 100) == 0 Entonces
			Si (ano MOD 400) == 0 Entonces
				esBisiesto = Verdadero;
			SiNo
				esBisiesto = Falso;
			Fin Si
		Fin Si
	SiNo
		esBisiesto = Falso;
	Fin Si
	
	//Imprimir el resutado dependiendo si el ano es Bisiesto o no
	Si esBisiesto = Verdadero Entonces
			Escribir "El ano es bisiesto.";
	SiNo
		Escribir "El ano no es bisiesto.";
	Fin Si
FinAlgoritmo
