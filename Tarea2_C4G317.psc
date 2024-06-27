Algoritmo JuegoAhorcado
	
	Definir palabraAzar, letra, ayudavisual, fecha, hora Como Caracter;
	palabraAzar = ""; letra =""; ayudaVisual= "";

	Definir cantidadIntentos, i, opcionMenu, contadorAciertos, numeroAleatorio Como Real;
	cantidadIntentos=3; opcionMenu=0; contadorAciertos=0;
	
	Definir palabra1, palabra2, palabra3, palabra4, palabra5, palabra6, palabra7, palabra8, palabra9, palabra10 Como Caracter;
	palabra1="colombia"; palabra2="mexico"; palabra3="nicaragua"; palabra4="inglaterra"; palabra5="china"; palabra6="argelia"; palabra7="nigeria"; palabra8="australia"; palabra9="alemania"; palabra10="egipto";
	
	Definir acierto Como Logico;
	
	Escribir "El juego del ahorcado";
	Escribir "";
	Escribir "Tematica: paises";

	Repetir
		
		// Sirva para mejorar la forma de mostar hora y fecha
		
		hora=ConvertirATexto(HoraActual());
		si longitud(hora) = 6 Entonces
			hora=Subcadena(hora, 1, 2)+":"+Subcadena(hora, 3, 4)+":"+Subcadena(hora, 5, 6);
		SiNo
			hora=Subcadena(hora, 1, 1)+":"+Subcadena(hora, 2, 3)+":"+Subcadena(hora, 4, 5);
		FinSi
		fecha=ConvertirATexto(FechaActual());
		fecha=Subcadena(fecha, 1, 4)+"/"+Subcadena(fecha, 5, 6)+"/"+Subcadena(fecha, 7, 8) ;
		
		
		Escribir "Que desea hacer?";
		Escribir "1) Jugar";
		Escribir "2) Salir";
		Escribir "Son las ", Hora " del ", fecha;
		Leer opcionMenu;
		Segun opcionMenu hacer
			1: // randomizar palabras
				Limpiar Pantalla;
				numeroAleatorio=Aleatorio(1,10);
				ayudaVisual="";
				cantidadIntentos=3;
				contadorAciertos=0;
				Segun numeroAleatorio Hacer
					1: palabraAzar = palabra1;
					2: palabraAzar = palabra2;
					3: palabraAzar = palabra3;
					4: palabraAzar = palabra4;
					5: palabraAzar = palabra5;
					6: palabraAzar = palabra6;
					7: palabraAzar = palabra7;
					8: palabraAzar = palabra8;
					9: palabraAzar = palabra9;
					10: palabraAzar = palabra10;
				FinSegun
				
				
				para i desde 1 hasta Longitud(palabraAzar)
					ayudavisual = ayudavisual+"_";
				FinPara
				
				Escribir ayudavisual; 
				
				Escribir "    +---+";
				Escribir "    |   |";
				Escribir "        |";
				Escribir "        |";
				Escribir "        |";
				Escribir "        |";
				Escribir "=========";
				
				Repetir
					Escribir "Escriba una letra para el ahorcado";
					leer letra;
					acierto=falso;
					
					para i desde 1 hasta Longitud(palabraAzar) //  Para que se pueda poner encima de los guiones
						
						si letra = Subcadena(palabraAzar, i, i) Entonces
							ayudavisual=Subcadena(ayudavisual, 1, i-1)+letra+Subcadena(ayudavisual, i+1, Longitud(ayudavisual));
							acierto = Verdadero;
							contadorAciertos= contadorAciertos + 1;
						FinSi
						 
					FinPara
					si acierto = falso Entonces
						cantidadIntentos=cantidadIntentos - 1;
						
					FinSi
					
					segun cantidadIntentos Hacer
						3:
							Escribir "    +---+";
							Escribir "        |";
							Escribir "        |";
							Escribir "        |";
							Escribir "        |";
							Escribir "        |";
							Escribir "=========";
							Escribir ayudavisual;
						2:
							Escribir "    +---+";
							Escribir "    |   |";
							Escribir "    o   |";
							Escribir "    |   |";
							Escribir "        |";
							Escribir "        |";
							Escribir "=========";
							Escribir ayudavisual;
						1:
							Escribir "    +---+";
							Escribir "    |   |";
							Escribir "    o   |";
							Escribir "   /|\  |";
							Escribir "        |";
							Escribir "        |";
							Escribir "=========";
							Escribir ayudavisual;
						0:
							Escribir "    +---+";
							Escribir "    |   |";
							Escribir "    o   |";
							Escribir "   /|\  |";
							Escribir "   / \  |";
							Escribir "        |";
							Escribir "=========";
							Escribir ayudavisual;
					FinSegun
					
					//Para que funcione tiene que estar desactiva la opcion de utilizar indices en base 0
					
					si contadorAciertos = Longitud(palabraAzar) Entonces
						
						Escribir "¡Felicidades, Ganaste!";
						
					FinSi
					
					si cantidadIntentos = 0 Entonces
						
						Escribir "Perdiste! ", "La palabra era ", palabraAzar;
					FinSi
				Hasta Que cantidadIntentos = 0 | contadorAciertos = Longitud(palabraAzar);
				
			2:
				Escribir "Gracias por jugar!";
			De Otro Modo:
				Escribir "Seleccione una opcion valida";
		FinSegun
	Hasta Que (opcionMenu =2);
	
	
FinAlgoritmo
