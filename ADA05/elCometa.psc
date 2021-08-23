Algoritmo ElCometa
	//Definimos variables
	Definir claveProducto Como Entero;
	Definir precioVenta, materiaPrima, manoObra, fabricacion, produccion Como Real;
	Definir  existeClave Como Logico;
	
	//Solicitamos info al usuario
	Escribir "Ingresa la clave del producto";
	Leer claveProducto;
	existeClave = Verdadero;
	Escribir "Ingresa el costo de materia prima";
	Leer materiaPrima;
	
	//manoObra
	Si claveProducto == 3 O claveProducto == 4 Entonces
		manoObra = materiaPrima*.75;
	SiNo
		Si claveProducto == 1 O claveProducto == 5 Entonces
			manoObra = materiaPrima*.80;
		SiNo
			Si claveProducto == 2 O claveProducto == 6 Entonces
				manoObra = materiaPrima*.85;
			SiNo
				existeClave = Falso;
			Fin Si
		Fin Si
	Fin Si
	
	//fabricacion
	Si existeClave == Verdadero Entonces
		Si claveProducto == 2 O claveProducto == 5 Entonces
			fabricacion = materiaPrima*.30 + materiaPrima;
		SiNo
			Si claveProducto == 3 O claveProducto == 6 Entonces
				fabricacion = materiaPrima*.35 + materiaPrima;
			SiNo
				Si claveProducto == 2 O claveProducto == 6 Entonces
					fabricacion = materiaPrima*.28 + materiaPrima;
				Fin Si
			Fin Si
		Fin Si
		produccion = materiaPrima + manoObra + fabricacion;
		precioVenta = produccion*.45+produccion;
		Escribir "El precioVenta de venta es: $", precioVenta;
	SiNo
		Escribir "Esa clave de producto no existe :(";
		Escribir "Reinicie el programa para calcular el precio de venta";
	Fin Si
	
FinAlgoritmo
