Algoritmo elMandilon
	
	//Definimos variables
	Definir numCiudad, cCiudades, numTienda, tTiendas, numEmpleado, nEmpleados, numVenta, xVentas Como Entero;
	Definir venta, totalVentaCiudad, totalVentaTienda, ventaTotal Como Real;
	
	
	//Pedimos numero de ciudades
	Escribir "Ingresa el numero de ciudades: ";
	Leer cCiudades;
	
	//Calculamos la venta global
	ventaTotal = 0;
	Para numCiudad = 1 Hasta cCiudades Con Paso 1 Hacer
		
		//pedimos numero de tienda
		Escribir "Ingresa el numero de tiendas en la ciudad #", numCiudad, ": ";
		Leer tTiendas;
		
		//Calculamos el total de venta de la cCiudad
		totalVentaCiudad = 0;
		Para numTienda = 1 Hasta tTiendas Con Paso 1 Hacer
			
			//Pedimos el numero de empleados
			Escribir "Ingresa el numero de empleados de la tienda #", numTienda, ": ";
			Leer nEmpleados;
			
			//Calculamos el totalVentaTienda
			totalVentaTienda = 0;
			Para numEmpleado = 1 Hasta nEmpleados Con Paso 1 Hacer
				
				//Pedimos la venta de numEmpleado
				Escribir "Ingresa la venta del empleado numero #", numEmpleado, ": ";
				Leer venta;
				totalVentaTienda = totalVentaTienda + venta;
				
			Fin Para
			
			//Escribimos el total de la venta de la tienda
			Escribir "El total de venta de la tienda es: $", totalVentaTienda;
			totalVentaCiudad = totalVentaCiudad + totalVentaTienda;
			
		Fin Para
		
		//Escribir el totalVentaCiudad
		Escribir "La venta total de la ciudad #", numCiudad, "es: $", totalVentaCiudad;
		
		ventaTotal = ventaTotal + totalVentaCiudad;
		
	Fin Para
	
	//Escribimos el total recaudado en el día
	Escribir "El dinero recaudado total es de: $", ventaTotal;
	
	
FinAlgoritmo
