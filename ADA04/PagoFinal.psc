Algoritmo PagoFinal
	// Definir variables
	Definir precioArticulo Como Real;
	Definir precioArticuloDescuento Como Real;
	Definir precioArticuloTotal Como Real;
	
	// Leer los valores que nos proporcione el usuario
	Escribir 'Ingrese el precio del articulo en pesos: ';
	Leer precioArticulo;
	// Calculo
	precioArticuloDescuento = precioArticulo*.80;
	precioArticuloTotal = precioArticuloDescuento*1.15;
	// Devolver el pago que debe hacer la persona
	Escribir 'La precio con descuento es: $',precioArticuloDescuento,' pesos.';
	Escribir 'La precio con IVA es: $',precioArticuloTotal,' pesos.';
FinAlgoritmo
