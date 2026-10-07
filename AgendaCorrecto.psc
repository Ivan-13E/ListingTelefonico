Algoritmo AgendaCorrecto
	
	Definir eleccion Como Entero;
	
	Definir salir Como Logico;
	
	Definir telefono Como Caracter;
	
	Definir nombre Como Caracter;
	
	Definir vNombres_Contactos Como Caracter;
	
	Definir vNumeros_Telefonos Como Caracter;
	
	Definir tamanyo Como Entero;
	
	Definir i Como Entero;
	
	tamanyo = 4;
	
	i = 0;
	
	Dimension vNombres_Contactos[tamanyo];
	
	Dimension vNumeros_Telefonos[tamanyo];
	
	Para i = 0 Hasta (tamanyo - 1) Con Paso 1 Hacer
		vNumeros_Telefonos[i] = "";
		vNombres_Contactos[i] = "";
	Fin Para
	
	
	
	
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
				
				salir = Falso;
				
				Para i = 0 Hasta (tamanyo - 1) Con Paso 1 Hacer
					//Con el Y requieres que todas las condiciones sean verdaderas al mismo tiempo
					//Con el O requiere que al menos una sea verdadera
					Si vNumeros_Telefonos[i] == "" Entonces
						Escribir "Guardame por aqui el telefono, tiene que seguir esta estructura: 612346598 ";
						Leer telefono;
						vNumeros_Telefonos[i] = telefono;
						Si vNombres_Contactos[i] = "" Entonces
							Escribir "Y ahora el nombre ";
							Leer nombre;
							vNombres_Contactos[i] = nombre;
						
						Fin Si
						
					Fin Si
					
					
					Escribir "Contactos guardados " vNumeros_Telefonos[i] " - " vNombres_Contactos[i];
					
				Fin Para
				
				
			2:
				Escribir "Estos son los teléfonos que hay ";
				
				Para i = 0 Hasta (tamanyo - 1) Con Paso 1 Hacer
					Si vNumeros_Telefonos[i] = "" o vNombres_Contactos[i] = "" Entonces
						Escribir " - ";
					SiNo
						Escribir vNumeros_Telefonos[i] " - " vNombres_Contactos[i];
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
