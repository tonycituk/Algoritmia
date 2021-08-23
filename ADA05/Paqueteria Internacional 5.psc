Algoritmo PaqueteriaInternacional
	
	//Definimos variables
	Definir costoGramo, peso, costoTotal Como Real;
	Definir zona Como Entero;
	
	//Solicitamos información al usuario
	Escribir "Ingrese el peso en gramos de su paquete a enviar";
	Leer peso;
	Escribir "A qué zona lo enviará?";
	Escribir " - America del norte (1)";
	Escribir " - America central (2)";
	Escribir " - America del sur (3)";
	Escribir " - Europa (4)";
	Escribir " - Asia (5)";
	Leer zona;
	
	//Hacemos el calculo dependiendo el peso y la zona
	si peso > 5000 Entonces
		Escribir " Por cuestiones de logistica no podemos enviar su paquete.";
		costoGramo=0;
	SiNo
		Segun zona Hacer
			1:
				costoGramo=11;
			2:
				costoGramo=10;
			3:
				costoGramo=12;
			4:
				costoGramo=24;
			5:
				costoGramo=27;
			
			De Otro Modo:
				Escribir "No existe esa zona";
				costoGramo=0;
		Fin Segun
		
	FinSi
	
	
	
	//Devolvemos el resultadp
	Si costoGramo <> 0 Entonces
		costoTotal = costoGramo * peso;
		Escribir "El costo total para enviar su paquete a la zona ", zona, " es $", costoTotal;
	FinSi
	
	
FinAlgoritmo
