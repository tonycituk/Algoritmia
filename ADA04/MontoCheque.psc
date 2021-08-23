Algoritmo MontoCheque
	//Definimos variables
	Definir diasDeViaje Como Entero;
	Definir precioHotel Como Real;
	Definir precioComida Como Real;
	Definir montoTotal Como Real;
	
	Definir gastosExtrasTotales Como Entero;
	
	//Solicitamos los dias de viaje y los precios
	Escribir "Ingresar los días de viaje:";
	Leer diasDeViaje;
	Escribir "Ingresar el precio del hotel por día:";
	Leer precioHotel;
	//Aquí la comida es por día, osea la comida de todo el día
	Escribir "Ingresar el precio de la comida por día:";
	Leer precioComida;
	
	//Calculamos los montos y los desglosamos por concepto
	
	//HOTEL
	precioHotel = precioHotel * diasDeViaje;
	montoTotal = precioHotel;
	Escribir "El total del hotel es: $", precioHotel;
	
	//COMIDA
	precioComida = precioComida * diasDeViaje;
	montoTotal = montoTotal + precioComida;
	Escribir "El total de comida es: $", precioComida;
	
	//GASTOS EXTRA
	gastosExtrasTotales = 100 * diasDeViaje;
	montoTotal = montoTotal + gastosExtrasTotales;
	Escribir "El total de gastos extras es: $", gastosExtrasTotales;
	
	//Devolvemos monto total
	Escribir "El monto total del cheque es: $", montoTotal;
	
FinAlgoritmo
