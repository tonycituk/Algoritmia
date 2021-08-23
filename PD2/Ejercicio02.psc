Algoritmo Ejercicio02
	//Definimos variables
	Definir num1, num2, resultado Como Real;
	Definir operador Como Caracter;
	
	//Solicitamos los datos al usuario
	Escribir "ingresa el numero 1";
	Leer num1;
	Escribir "ingresa el numero 2";
	Leer num2;
	Escribir "Ingresa el operador (+,-,*,/,%)";
	Leer operador;
	
	//Determinamos operacion y resultado
	Segun operador Hacer
		'+':
			resultado=num1+num2;
			Escribir "= ", resultado;
		'-':
			resultado=num1-num2;
			Escribir "= ", resultado;
		'*':
			resultado=num1*num2;
			Escribir "= ", resultado;
		'/':
			Si num2==0 Entonces
				Escribir "No se puede dividir entre 0.";
			SiNo
				resultado=num1/num2;
				Escribir "= ", resultado;
			Fin Si
			
		'%':
			resultado=num1 MOD num2;
			Escribir "= ", resultado;
		De Otro Modo:
			Escribir "No podemos calcular con ese operador, usa los siguientes: +,-,*,/,%";
	Fin Segun
FinAlgoritmo