SubAlgoritmo esPrimo <- validarPrimo ( numeroAValidar )
	Definir raizV Como Real;
	Definir esPrimo Como Logico;
	Definir i Como Entero;
	raizV = trunc(rc(numeroAValidar));
	esPrimo = Verdadero;
	Si numeroAValidar<=1 Entonces
		esPrimo = Falso;
	SiNo
		Para i = 2 Hasta raizV Con Paso 1 Hacer
			
			//Si el resto es 0 entonces es divisible por algún número
			//entonces no es un numero primo
			Si numeroAValidar%i == 0 Entonces
				esPrimo = Falso;
				i = raizV;
			Fin Si
		Fin Para
	Fin Si
	
Fin SubAlgoritmo

Algoritmo mPrimosN
	

	//Definimos variables
	Definir n, m, numerosArray, primosArray, i, contadorPrimos, j Como Entero;
	contadorPrimos = 0;
	
	//pedimos la cantidad de números primos y los numeros a revisar
	Escribir Sin Saltar "¿Cuántos números tiene?";
	Leer m;
	n=m+1;
	Mientras n>m Hacer
		Escribir Sin Saltar "¿Cuántos primeros primos quiere?";
		Leer n;
		
		Si n>m Entonces
			Escribir "Debe pedir menos primos que el tamaño de los numeros que tienes, repita el ingreso de valor.";
		Fin Si
	Fin Mientras
	

	
	Dimension numerosArray[m];
	
	//Guardamos los números del usuario
	Para i = 0 Hasta m-1 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingrese el valor para el número ", i + 1, ":";
		Leer numerosArray[i];
		Si validarPrimo(numerosArray[i]) Entonces
			contadorPrimos = contadorPrimos + 1;
		Fin Si
	Fin Para
	
	Dimension primosArray[contadorPrimos];
	j = 0;
	Para i = 0 Hasta m-1 Con Paso 1 Hacer
		Si validarPrimo(numerosArray[i]) Entonces
			primosArray[j] = numerosArray[i];
			j = j + 1;
			Si j = contadorPrimos Entonces
				i = m;
			Fin Si
		Fin Si
	Fin Para
	
	Si contadorPrimos<n Entonces
		Escribir "No hubo ", n, " primos para tus números pero te presento los primeros ", contadorPrimos, " primos disponibles.";
	FinSi
	
	Para i = 0 Hasta contadorPrimos-1 Con Paso 1 Hacer
		Escribir i+1,"-. ", primosArray[i];
		
	Fin Para
FinAlgoritmo
