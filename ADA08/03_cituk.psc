Algoritmo candidatos3
	
	//Definicion e inicializacion de variables
	Definir candidatos, i, candidato, votosCandidato, votosTotales, vecesMayor Como Entero;
	Definir porcentaje Como Real;
	Definir faltanVotos, hayEmpate Como Logico;
	
	Dimension candidatos[12];
	faltanVotos = Verdadero;
	hayEmpate = Falso;
	votosCandidato = 0;
	votosTotales = 0;
	vecesMayor = 0;
	Para i=0 Hasta 11 Con Paso 1 Hacer
		candidatos[i] = 0;
	Fin Para
	
	//Solicitamos los votos por el id del candidato
	Escribir "Para contar los votos, ingrese el identificador del candidato, cuando termine ingrese -1.";
	Mientras faltanVotos Hacer
		Escribir Sin Saltar "Id del candidato:";
		Leer candidato;
		//si es -1 deiamos de contar votos
		Si candidato = -1 Entonces
			faltanVotos = Falso;
		SiNo
			//Si dan un candidato inexistente, avisar y no contar el voto
			Si candidato>=13 o candidato<=0 Entonces
				Escribir "Ese candidato no existe, sólo hay candidatos 1-12.";
			SiNo
				//contamos el voto
				candidato = candidato -1;
				candidatos[candidato] = candidatos[candidato] + 1;
			Fin Si
		Fin Si
	Fin Mientras
	
	//Buscamos al mayor, su total, porcentaie
	Para i=0 Hasta 11 Con Paso 1 Hacer
		votosTotales = votosTotales + candidatos[i];
		Escribir  i, " ", candidatos[i], " ", votosTotales;
		Si i==0 Entonces
			votosCandidato = candidatos[i];
			candidato = i + 1;
		SiNo
			Si candidatos[i] > votosCandidato Entonces
				votosCandidato = candidatos[i];
				candidato = i + 1;
			Fin Si
		Fin Si
	Fin Para
	
	//Buscamos empates
	Para i=0 Hasta 11 Con Paso 1 Hacer
		Si candidatos[i] == votosCandidato Entonces
			vecesMayor = vecesMayor + 1;
			Si vecesMayor >=2 Entonces
				hayEmpate = Verdadero;
				i = 12;
			Fin Si
		Fin Si
	Fin Para
	
	//revisamo que al menos haya un voto
	Si votosTotales == 0 Entonces
		Escribir "Nadie voto, entonces nadie gano :(.";
	SiNo
		//Imprimimos los resultados en caso de que no haya empate
		Si hayEmpate Entonces
			Escribir "Hubo empate, los votos se deben hacer de nuevo.";
		SiNo
			porcentaje = votosCandidato*100/votosTotales;
			Escribir "El candidato ganador es el #", candidato, " con un total de ", votosCandidato, " votos y un ", porcentaje, "% de los votos totales."; 
		Fin Si
		
	FinSi	
FinAlgoritmo
