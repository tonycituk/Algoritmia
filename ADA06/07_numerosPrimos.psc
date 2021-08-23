Algoritmo numerosPrimos
	
	//Definimos variables
	Definir contador, contadorPrimos Como Entero;
	Definir esPrimo Como Logico;
	Definir raizV Como Real;
	
	
	Escribir "Numeros primos: ";
	
	//Iniciamos en 2 porque el 1 nunca será primo
	Para contadorPrimos = 2 Hasta 100 Con Paso 1 Hacer
		esPrimo = Verdadero;
		
		raizV = trunc(rc(contadorPrimos)); 
		//no comprobamos el 1 porque un primo si es divisible por 1
		//Tampoco consideramos cuando los numeros son iguales pues 
		//un numero primo es divisible por sí mismo
		Para contador = 2 Hasta raizV Con Paso 1 Hacer
			
			//Si el resto es 0 entonces es divisible por algún número
			//entonces no es un numero primo
			Si contadorPrimos%contador == 0 Entonces
				esPrimo = Falso;
				contador = raizV;
			Fin Si
		Fin Para
		
		//Imprimimos el número si es primo
		Si esPrimo Entonces
			Escribir contadorPrimos;
		Fin Si
	Fin Para
	
FinAlgoritmo
