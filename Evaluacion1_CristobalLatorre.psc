//Evaluacion I
//Cistobal Latorre

Algoritmo evaluacionNroI_CristobalLatorre //Codigo principal donde llama a cada funcion
	Definir op como entero;
	Repetir
		
		Limpiar Pantalla;
		Escribir "1. Secuencial";
		Escribir "2. Condicional si Entonces";
		Escribir "3. Condicional Si entonces anidado";
		Escribir "4. Condicional segun";
		Escribir "5. Repetitiva Mientras";
		Escribir "6. Repetitiva Repetir";
		Escribir "7. Repetitiva Para";
		Escribir "8. Arreglo Simple";
		Escribir "9. Arreglo Bidimencional";
		Escribir "10. Salir";
		Escribir "Ingrese un numero del 1 ... 10";
		Leer op;
		
		Segun op Hacer
			1:
				Secuencial();
				Esperar Tecla;
			2:
				condicionalSiEntonces();
				Esperar Tecla;
			3:
				condicionalSiEntoncesAnidado();
				Esperar Tecla;
			4:
				CondicionalSegun();
				Esperar Tecla;
			5:
				RepetitivaMientras();
				Esperar Tecla;
			6:
				repetitivaRepetir();
				Esperar Tecla;
			7:
				repetitivaPara();
				Esperar Tecla;
			8:
				arregloSimple();
				Esperar Tecla;
			9:
				arregloBidimencional();
				Esperar Tecla;
			10:
				Escribir "Adios!";
				Esperar Tecla;
			De Otro Modo:
				Escribir "Ingrese un opcion valida.";
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
		FinSegun
	Hasta Que op = 10
	
	
FinAlgoritmo

//****************** INICIO FUNCIONES ******************//

//****************** 1. SECUANCIAL ******************//
Funcion Secuencial()
	Limpiar Pantalla;
	
	Definir suma, num Como Real;
	Definir i Como Entero;
	Dimension num[3];
	
	Escribir "Ingrese tres numeros";//Guardar los tres numeros en un arreglo
	Leer num[0], num[1], num[2];
	
	suma <- 0;
	Para i <- 0 hasta 2 hacer//Sumatoria de los tres numeros
		suma <- suma + num[i];
	FinPara
	Escribir "El promedio de estos tres numeros es: ", suma / 3;//muestra el promedio de los tres numeros 
	
FinFuncion

//****************** 2. CONDICIONAL SI ENTONCES ******************//

Funcion condicionalSiEntonces()
	Limpiar Pantalla;
	Definir nombre, genero Como Caracter;
	
	Escribir "Ingrese nombre:";//Ingreso del nombre
	Leer nombre;
	
	Repetir//Ingreso de la opcion del genero
		Limpiar Pantalla;
		Escribir "Ingrese genero Hombre (H), Mujer (M)";
		Leer genero;
		genero <- Mayusculas(genero);//Convierte la letra en mayuscula por si ingresa un caracter en minuscula
				
	Hasta Que genero = "H" O genero = "M"


	si genero = "H" entonces//Discrimina si es hombre e imprime el mensaje asignando a que bano se debe dirigir
		Escribir "Sr. ", nombre, " usted debe ir al bano de hombres.";
	SiNo//Si es mujer ya que el filtro de las letras lo hicimos en el ingreso de la opcion de genero
	Escribir "Sra. ", nombre, " usted debe ir al bano de mujeres.";
	FinSi

FinFuncion

//****************** 3. CONDICIONAL SI ENTONCES ANIDADO ******************//

Funcion condicionalSiEntoncesAnidado()
	Limpiar Pantalla;
	Definir nombre, genero Como Caracter;
	
	Escribir "Ingrese nombre:";//Ingreso del nombre
	Leer nombre;
	
	Repetir//Ingreso de la opcion del genero
		Escribir "Ingrese genero Hombre (H), Mujer (M)";
		Leer genero;
		genero <- Mayusculas(genero);//Convierte la letra en mayuscula por si ingresa un caracter en minuscula
		
	Hasta Que genero = "H" O genero = "M"

definir op como entero;

Repetir
	Escribir "1. Bano";
	Escribir "2. Ducha";
	Escribir "Ingrese opcion";
	Leer op;
Hasta Que op = 1 O op = 2


Si genero = "H" entonces//Discrimina si es hombre e imprime el mensaje asignando a que bano se debe dirigir
	Escribir "Sr. ", nombre, " usted debe ir al bano de hombres.";
	
	Si op = 1 entonces//Discrimina la opcion de bano o ducha
		Escribir "El costo asociado para usar el bano es de $250";
	SiNo
		Escribir "El costo asociado para usar la ducha es de $2500";
	FinSi
	
SiNo//Si es mujer ya que el filtro de las letras lo hicimos en el ingreso de la opcion de genero
Escribir "Sra. ", nombre, " usted debe ir al bano de mujeres.";

Si op = 1 entonces//Discrimina la opcion de bano o ducha
	Escribir "El costo asociado para usar el bano es de $250";
SiNo
	Escribir "El costo asociado para usar la ducha es de $2500";
FinSi

FinSi

FinFuncion

//****************** 4. CONDICIONAL SEGUN ******************//

Funcion CondicionalSegun()
	
	Limpiar Pantalla;
	definir op como entero;
	
	Repetir//Repite la accion hasta ingresar el volor aceptado
	
	Escribir "Ingrese un valor entre 1 ... 10";
	Leer op;
	Si op < 0 O op >10 Entonces//Envia un mensaje para recordar la instruccion
		Escribir "Ingrese un valor entre 1 ... 10";
	FinSi
Hasta Que op > 0 Y op < 11

Segun op Hacer//Muestra la opcion escogida
	1:
		Escribir "Uno";
	2:
		Escribir "Dos";
	3:
		Escribir "Tres";
	4:
		Escribir "Cuatro";
	5:
		Escribir "Cinco";
	6:
		Escribir "Seis";
	7:
		Escribir "Siete";
	8:
		Escribir "Ocho";
	9:
		Escribir "Nueve";
	10:
		Escribir "Diez";
FinSegun

FinFuncion

//****************** 5. REPETITIVA MIENTRAS ******************//

Funcion RepetitivaMientras()
	
	Limpiar Pantalla;
	Definir num, suma, contadorNumeros Como Real;
	
	num <- 1;//iniciar num distinto a cero para ingresar al bucle Mientras
	suma <- 0;//iniciar la suma de los numeros en cero
	contadorNumeros <- 0;//Iniciar el contador en cero
	
	Escribir "Ingrese cualquier valor: ";
	Escribir "Para terminar de ingresar digite 0";
	
	Mientras num <> 0 Hacer//Si num es igual a cero sale del bucle
		
		Leer num;//reemplaza el valor asignado con anterioridad
		suma <- suma + num;//suma los numeros ingresados y asigana el valor resultante a una variable auxiliar llamada suma
		contadorNumeros <- contadorNumeros + 1;//cuenta los numeros ingresados
		
	FinMientras
	
	Escribir "Se ingresaron ", contadorNumeros-1, " y el promedio de estos numeros es: ", suma/(contadorNumeros-1);
	
FinFuncion

//****************** 6. REPETITIVA MIENTRAS ******************//

Funcion repetitivaRepetir()
	
	Limpiar Pantalla;
	
	Definir nombre Como Caracter;
	Definir contadorIntentos Como Entero;
	contadorIntentos <- 0;//Inicializa el contador en cero por que aun no se ha jugado
	
	Escribir "Ingrese algun nombre";
	
	Repetir
		
		Leer nombre;
		nombre <- Mayusculas(nombre);//Convierte en mayuscula para hace la comparacion con "J"
		contadorIntentos <- contadorIntentos + 1;
		
	Hasta Que Subcadena(nombre,0,0) = "J" //se repite hasta que la primera letra es igual a "J"
	
	Escribir "Ganaste!";
	Escribir contadorIntentos, " Intentos";
	
FinFuncion

//****************** 7. REPETITIVA PARA ******************//

Funcion repetitivaPara()
	
	Limpiar Pantalla;
	
	Definir i, j, contadoresRepetidos Como Entero;
	Definir nombres Como Caracter;
	Dimension nombres[10];
	
	
	Para i <- 0 hasta 9 Hacer//Ingreso de las personas y se ingresa al arreglo
		Limpiar Pantalla;
		Escribir "Ingrese el nombre de la persona: ", i + 1;
		Leer nombres[i];
		nombres[i] <- Mayusculas(nombres[i]);
		contadoresRepetidos <- 0;
	FinPara
	
	Para i <- 0 Hasta 9 Hacer //Compara y muestra las veces repetidas y el nombre
		contadoresRepetidos <-0 ;
		Para j <- 0 Hasta 9 Hacer
			Si nombres[i] = nombres[j] Entonces
				contadoresRepetidos <- contadoresRepetidos + 1;
			FinSi
		FinPara
		si contadoresRepetidos > 1 Entonces
			Escribir "El nombre ", nombres[i], " esta repetido ", contadoresRepetidos, " veces.";
		SiNo
			Escribir "El nombre ", nombres[i], " no se repite.";
		FinSi
	FinPara
	
FinFuncion

//****************** 8. ARREGLO SIMPLE ******************//

Funcion arregloSimple()
	
	Limpiar Pantalla;
	
	Definir cantidad,i Como Entero;
	Definir alumnos Como Caracter;
	
	Escribir "Ingrese la cantidad de alumnos Fullstack que desea ingresar";
	Leer cantidad;
	Dimension alumnos[cantidad];
	
	Para i <- 0 Hasta cantidad -1 Hacer// se hace ingreso de los nombres de los alumnos
		leer alumnos[i];
	FinPara
	
	Para i <- 0 Hasta cantidad -1 Hacer// muestra en pantalla los nombres
		
		Escribir alumnos[i] , " " sin saltar;
		
		Si (i+1) % 5 = 0 Y i <> 0 Entonces //usando multiplos de cinco para identificar salto de linea
			Escribir "";
		FinSi
		
	FinPara
	
FinFuncion

//****************** 9. ARREGLO BIDIMENCIONAL ******************//

Funcion arregloBidimencional()
	
	Limpiar Pantalla;
	
	Definir cantidad,i,j Como Entero;
	Definir alumnos Como Caracter;
	
	Escribir "Ingrese la cantidad de alumnos Fullstack que desea ingresar";
	Leer cantidad;
	Dimension alumnos[cantidad,4];
	
	Para i <- 0 hasta cantidad-1 hacer //Ingresa los datos de cada alumno
		Limpiar Pantalla;
		Escribir "Alumno: ", i+1;
		Escribir "Ingrese Nombre";
		Leer alumnos[i,0];
		Escribir "Ingrese Apellido";
		Leer alumnos[i,1];
		Escribir "Ingrese Fono";
		Leer alumnos[i,2];
		Escribir "Ingrese e-mail";
		Leer alumnos[i,3];
	FinPara
	
	Limpiar Pantalla;
	
	Para i <- 0 hasta cantidad-1 hacer//Imprime cada alumno en una linea
		Para j<- 0 hasta 3 hacer
			Escribir "[",alumnos[i,j], "]", "   " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	
	
FinFuncion
