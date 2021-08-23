Algoritmo nArticulos
	
	//Definimos variables
	Definir n, nContador Como Entero;
	Definir pago, pagoDescuento, precio, descuento, precioDescuento Como Real;
	pago = 0;
	pagoDescuento = 0;
	//Pedimos la cantidad de articulos
	Escribir "Ingresa la cantidad de artículos a comprar";
	Leer n;
	
	Para nContador = 1 Hasta n Con Paso 1 Hacer
		//Le pedimos el precio del producto nContador
		Escribir "Ingresa el precio del articulo ", nContador;
		Leer precio;
		
		// Se determina que descuento se le aplicara
		//Y se guarda el precio con  descuento en otra variable
		Si precio >= 200 Entonces
			descuento = precio * .15;
		SiNo 
			Si precio>100 Entonces
				descuento = precio * .12;
			SiNo
				descuento = precio * .10;
			Fin Si
		Fin Si
		
		//Calcular precio con descuento
		precioDescuento = precio - descuento;
		
		Escribir "El precio del producto con descuento es: $", precioDescuento;
		
		//Calculamos pagos totales
		pago = pago + precio;
		pagoDescuento = pagoDescuento + precioDescuento;
	Fin Para
	
	//Escribimos los pagos totales
	Escribir "El pago total es: $", pago;
	Escribir "El pago total con descuento es: $", pagoDescuento;
	
FinAlgoritmo
