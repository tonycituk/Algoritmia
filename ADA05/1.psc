Algoritmo hamburguesin
	//Definimos variables
	Definir tipoHamburguesa Como Entero;
	Definir tipoPago Como Entero;
	Definir cantidad Como Entero;
	Definir costo Como Real;
	
	
	Escribir "###############################";
	Escribir " ";
	Escribir "       El Hamburguesin";
	Escribir " ";
	Escribir "###############################";
	//Pedimos información al usuario
	Escribir "Ingrese el tipo de hamburguesa:";
	Escribir " - sencilla (1)";
	Escribir " - doble (2)";
	Escribir " - triple (3)";
	Leer tipoHamburguesa;
	Escribir "Ingrese la cantidad de hamburguesas:";
	Leer cantidad;
	Escribir "Ingrese su tipo de pago:";
	Escribir " - efectivo (1)";
	Escribir " - tarjeta (2)";
	Leer tipoPago;
	
	//Obtenemos el total por las hamburguesas
	Segun tipoHamburguesa Hacer
		1:
			costo = 20;
		2:
			costo = 25;
		3:
			costo = 28;
		De Otro Modo:
			Escribir "No tenemos ese tipo de Hamburguesa, vuelva pronto :).";
	Fin Segun
	costo=costo*cantidad;
	
	//Obtenemos el total por tipo de pago
	Si tipoPago==2 Entonces
		costo=costo*1.05;
		Escribir "Se le cargará un 5% por pago con tarjeta.";
	SiNo
		Si costo == 1 Entonces
			Escribir "Dinero en efectivo recibido";
		SiNo
			Escribir "Aun no contamos con ese metodo de pago"; 
		Fin Si
	Fin Si
	
	//Devolvemos el costo
	
	Escribir "Total a pagar: $", costo, "MXN.";
	
FinAlgoritmo
