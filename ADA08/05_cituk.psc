Algoritmo calificaciones
	//Definimos variables
	Definir n, i, aprobados, reprobados, mayor80 Como Entero;
	Definir porctjAprobados, porctjReprobados, promedio, calificacion, calificacionesArreglo Como Real;
	promedio = 0;
	mayor80 = 0;
	aprobados = 0;
	reprobados = 0;
	
	//Pedimos la cantidad n de alumnos
	Escribir "¿Cuántos alumnos son?";
	Leer n;
	Dimension calificacionesArreglo[n];
	//por cada alumno pedimos calificacion
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "Ingresa la calificación del alumno #",i+1;
		Leer calificacion;
		promedio = ((promedio * i) + calificacion) / (i+1);
		Si calificacion>=70 Entonces
			aprobados = aprobados + 1;
			porctjAprobados = aprobados * 100 / n;
			Si calificacion > 80 Entonces
				mayor80 = mayor80 + 1;
			Fin Si
		SiNo
			reprobados = reprobados + 1;
			porctjReprobados = reprobados * 100 / n;
		Fin Si
		calificacionesArreglo[i] = calificacion;
	Fin Para
	
	//Imprimimos resultados
	Escribir "El promedio general del grupo es: ", promedio;
	Escribir "El total de alumnos aprobados es: ", aprobados, " equivalente al ", porctjAprobados, "%.";
	Escribir "El total de alumnos reprobados es: ", reprobados, " equivalente al ", porctjReprobados, "%.";
	Escribir "Los alumnos con una calificación mayor a 80 es: ", mayor80;

FinAlgoritmo
