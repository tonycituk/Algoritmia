Algoritmo tiendasAutoServicio
	
	//Definimos variables
	Definir mSucursales, nEstados, oEmpleados, ventas, ventaTotalSucursales, ventaTotalSucursal, ventaMayor, i, j, k Como Entero;
	Dimension ventaMayor[4];
	ventaTotalSucursales = 0;
	
	//Pedimos la cantidad de sucursales
	Escribir "Ingresa la cantidad de sucursales por estado: ";
	Leer mSucursales;
	
	//Pedimos la cantidad de estados
	Escribir "Ingresa la cantidad de estados con sucursales: ";
	Leer nEstados;
	
	//Pedimos la cantidad de empleados
	Escribir "Ingresa la cantidad de empleados por sucursal: ";
	Leer oEmpleados;
	
	//Iniciacilazamos la dimension que guarda las ventas
	Dimension ventas[nEstados, mSucursales, oEmpleados + 1];
	
	//Llenamos las ventas de cada empleado de cada sucursal de cada estado
	Para i = 0 Hasta nEstados - 1 Con Paso 1 Hacer
		Para j = 0 Hasta mSucursales - 1 Con Paso 1 Hacer
			
			ventaTotalSucursal = 0;
			Para k = 0 Hasta oEmpleados - 1 Con Paso 1 Hacer
				//Pedimos la venta
				Escribir "Ingresa la venta del empleado ", k + 1, " que pertenece a la sucursal ", j + 1, " del estado ", i + 1, ": ";
				Leer ventas[i, j, k];
				
				//Sumamos cada venta para obtener la ventaTotalSucursales
				ventaTotalSucursales = ventaTotalSucursales + ventas[i, j, k];
				
				//Sumamos la venta de cada empleado para la ventaTotalSucursal
				ventaTotalSucursal = ventaTotalSucursal + ventas[i, j, k];
				
				//Guardamos la ventaMayor con su informacion
				Si i + j + k == 0 Entonces
					ventaMayor[0] = ventas[i, j, k];
					ventaMayor[1] = k;
					ventaMayor[2] = j;
					ventaMayor[3] = i;
				SiNo
					Si ventas[i, j, k] > ventaMayor[0] Entonces
						ventaMayor[0] = ventas[i, j, k];
						ventaMayor[1] = k;
						ventaMayor[2] = j;
						ventaMayor[3] = i;
					Fin Si
				Fin Si
			Fin Para
			ventas[i, j, oEmpleados] = ventaTotalSucursal;
		Fin Para
	Fin Para
	
	
	//Imprimimos los resultados obtenidos
	Escribir "La venta total de todas las sucursales es: $", ventaTotalSucursales;
	Para i = 0 Hasta nEstados - 1 Con Paso 1 Hacer
		Para j = 0 Hasta mSucursales - 1 Con Paso 1 Hacer
			Escribir "La venta total de la sucursal ", j + 1, " del estado ", i + 1, " fue: $",ventas[i, j, oEmpleados];
		Fin Para
	Fin Para
	
	Escribir "La venta mayor fue de $", ventaMayor[0], " del empleado ", ventaMayor[1] + 1, " de la sucursal ", ventaMayor[2] + 1, " del estado ", ventaMayor[3] + 1;
	
FinAlgoritmo
