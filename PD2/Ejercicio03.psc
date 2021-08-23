Algoritmo Ejercicio03
	//Definimos variables
	Definir horas Como Entero;
	Definir sueldoOrdinario, salario Como Real;
	//Solicitamos valores al usuario
	Escribir "¿Cuanto es el sueldo/hora comun?";
	Leer sueldoOrdinario;
	Escribir "¿Cuantas horas semanales trabajo?";
	Leer horas;
	
	//Calculamos salario
	Si horas<38 Entonces
		salario = horas*sueldoOrdinario;
	SiNo
		salario = (38*sueldoOrdinario)+((horas-38)*(sueldoOrdinario*1.5));
	Fin Si
	//Aplicamos impuestos
	Si salario>8000 Entonces
		salario=salario-(salario*.25);
	SiNo
		salario=salario-(salario*.10);
	Fin Si
	
	//Imprimir el salario
	Escribir "El salario es: ", salario;
FinAlgoritmo
