Algoritmo BancoEnPuebloDesconocido
	
	//Definir¿mos variables
	Definir limiteCredito Como Real;
	Definir tipo Como Entero;
	Definir NuevoLimite Como Real;
	Definir Aumento Como Real;
	
	//Solicitmoas el limite y el tipo de tarjeta al usuario
	Escribir "Ingrese el limite de credito de su tarjeta ";
	Leer limiteCredito;
	Escribir "Ingrese su tipo de tarjeta";
	Leer tipo;
	
	//Determminamos el aumento 
	
	Segun tipo Hacer
		1:
			Aumento = .25;
		2:
			Aumento = .35;
		3:
			Aumento = .4;
		De Otro Modo:
			Aumento = .5;
	Fin Segun
	
	//Calculamos el NuevoLimite
	NuevoLimite = limiteCredito + (limiteCredito * Aumento);
	
	//Le devolvemos al usuario su nuevo límite de crédito
	Escribir "Su nuevo limite de credito es $", NuevoLimite;
	
FinAlgoritmo
