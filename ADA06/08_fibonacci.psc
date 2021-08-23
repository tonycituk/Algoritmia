Algoritmo fibonacci
	//Definimos variables
	Definir n, contador Como Entero;
	
	//Si los definimos como entero llegamos hasta n = 47
	//Definir umAnt1, numAnt2, num Como Entero;
	
	//Se definen como real para obtener una mayor capacidad de numeros
	//Aunque en n = 80 empieza a hacer calculos incorrectos
	//es decir solo se imprimen correctamente hasta n = 79
	Definir numAnt1, numAnt2, num Como Real;
	
	//La sucesion fibonacci inicia con el 0 y el 1
	numAnt1 = 0;
	numAnt2 = 1;
	
	//Pedimos la cantidad de numeros a Imprimir
	Escribir "Ingresa la cantidad de miembros de la sucesion fibonacci a imprimir:";
	Leer n;
	
	Si n>0 Entonces
		Escribir "1: ", numAnt1;
		Si n>1 Entonces
			Escribir "2: ", numAnt2;
			Para contador = 3 Hasta n Con Paso 1 Hacer
				num = numAnt1 + numAnt2;
				numAnt1 = numAnt2;
				numAnt2 = num;
				Escribir contador,": ", num;
			Fin Para
		Fin Si
	Fin Si
	
	
FinAlgoritmo
