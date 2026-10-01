Algoritmo ListingTelefonico
	
	Definir eleccion Como Entero;
	
	Definir salir Como Logico;
	
	Definir telefono Como Caracter;
	
	Definir nombre Como Caracter;
	
	Definir vNombres_Contactos Como Caracter;
	
	Definir vNumeros_Telefonos Como Caracter;
	
	Dimension vNombres_Contactos[5];
	
	Dimension vNumeros_Telefonos[5];
	
	vNombres_Contactos[0] = "Juan Francisco";
	
	vNumeros_Telefonos[0] = "678654323";
	
	salir = Falso;
	
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
			Escribir "Guardame por aqui el telefono, tiene que seguir esta estructura: 612346598 ";
			Leer vNumeros_Telefonos[0];
			Escribir "Y ahora el nombre ";
			Leer vNombres_Contactos[0];
		2:
			Escribir "Estos son los teléfonos que hay ";
			Escribir vNumeros_Telefonos[0] " - " vNombres_Contactos[0];
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
