Algoritmo sin_titulo
		
		//Comentario para el proximo día
		//
		
		
		Definir eleccion Como Entero;
		
		Definir salir Como Logico;
		
		Definir telefono Como Caracter;
		
		Definir nombre Como Caracter;
		
		Definir vNombres_Contactos Como Caracter;
		
		Definir vNumeros_Telefonos Como Caracter;
		
		Definir i Como Entero;
		
		Definir hueco Como Logico;
		
		Dimension vNombres_Contactos[10];
		
		Dimension vNumeros_Telefonos[10];
		
		vNombres_Contactos[0] = "Juan Francisco";
		
		vNumeros_Telefonos[0] = "678654323";
		
		salir = Falso;
		
		i = 0;
		
		
		Para i = 0 Hasta 9 Con Paso 1 Hacer
			vNombres_Contactos[i] = "";
			vNumeros_Telefonos[i] = "";
		Fin Para
		
		hueco = Falso;
		
		Repetir
			
			Escribir "Dime que quieres hacer ";
			Escribir "---------------------------------------------------";
			Escribir "1. Guardar Contacto ";
			Escribir "2. Ver lista de teléfonos ";
			Escribir "3. Editar lista o teléfonos ";
			Escribir "4. Borrar teléfonos ";
			Escribir "5. Buscar contacto ";
			Escribir "6. Salir ";
			
			Leer eleccion;
			
			Si eleccion <= 0 o eleccion >= 7 Entonces
				Escribir "-----------------------------------------------";
				Escribir "Solo puedes elegir una opción entre el 1 al 6";
				Escribir "-----------------------------------------------";
			Fin Si
			
			Segun eleccion Hacer
				1:
					
					Para i = 0 Hasta 9 Con Paso 1 Hacer
						Si vNumeros_Telefonos[i] = "" y hueco = Falso Entonces
							Escribir "Guardame por aqui el telefono, tiene que seguir esta estructura: 612346598 ";
							Leer telefono;
							
							Si telefono <> "" Entonces
								Escribir "Y ahora el nombre ";
								Leer nombre;
								
								vNumeros_Telefonos[i] = telefono;
								vNombres_Contactos[i] = nombre;
								
								hueco = Verdadero;
								
								Escribir "Se ha guardado el contacto ";
								
						SiNo
							Escribir "Hay uno vacío";
						Fin Si
					FinSi
					
					Fin Para
					
					
				2:
					Escribir "Estos son los teléfonos que hay ";
					
					Para i = 0 Hasta 9 Con Paso 1 Hacer
						Si vNumeros_Telefonos[i] = "" Entonces
							Escribir i + 1 " - ";
						SiNo
							Escribir i + 1 " - " vNumeros_Telefonos[i] " - " vNombres_Contactos[i];
						Fin Si
					Fin Para
				3:
					Escribir "Dime que teléfono quieres editar (aun no se puede) ";
				4:
					Escribir "Dime que telefono quieres borrar (aun por mirar)";
				5:
					Escribir "Busca un contacto (aun por saber como se hace)";
				6:
					salir = Verdadero;
					
					
					
			Fin Segun
		Hasta Que eleccion == 6;
		
FinAlgoritmo

