Proceso operadorvectro6
	
	Definir n,i,opciones,j,k Como Entero
	Definir radio,altura,volumen Como Real
	
	dimension resultado[100]
	
	Escribir "ingresa cantidad de conos que desea poner"
	leer n
	
	si n > 100 Entonces
		n <- 100
	FinSi
	
	i <- 1
	
	Repetir
		
		Escribir "=============================="
		Escribir "   menu opciones de cono   "
		Escribir "=============================="
		Escribir "1) crear un nuevos conos (calcula el radio y la altura dando su volumen)"
		Escribir "2) leer cono creado"
		Escribir "3) actualizar cono"
		Escribir "4) eliminar cono"
		Escribir "5) salir del programa"
		Escribir "=============================="
		Escribir "ingresa opcion de 1 - 5"
		Leer opciones
		
		Segun opciones Hacer
			
			Caso 1: 
				
				si i <= n Entonces
					
					Escribir "ingresa un radio para los conos o el cono"
					Leer radio
					
					Escribir "ingresa una altura para el cono o conos"
					Leer altura
					
					volumen <- (1/3) * 3.1416 * radio^2 * altura
					resultado[i] <- volumen
					
					Escribir "volumen del cono calculado es = ", volumen
					i <- i + 1
					
				FinSi
				
			Caso 2:
				
				si i = 1 Entonces
					
					Escribir "no existe dato almacenado todavia "
					
				SiNo
					
					Para  j <- 1 Hasta  i - 1
						
						Escribir "volumen de cono [",i,"]:", resultado[j]
 						
					FinPara
					
				FinSi
				
			Caso 3:
				
				Escribir "actualizar indice de cono (1 a", i -1,")"
				Leer j
				
				si j >= 1 y j < i Entonces
					
					Escribir "nuevo radio del cono"
					Leer radio
					
					Escribir "nueva altura del cono"
					Leer altura
					
					volumen <- (1/3) * 3.1416 * radio^2 * altura
					resultado[j] <- volumen
					
					Escribir "actualizado ", volumen
					
				SiNo
					
					Escribir "indice invalido"
					
				FinSi
				
			Caso 4:
				
				Escribir "indice de cono a eliminar: ",volumen," (1 a ", i -1, ")"
				Leer j
				
				si j >= 1 y j < i Entonces
					
					Para k <- j Hasta i - 2
						resultado[k+1] <- resultado[k+1]
					FinPara
					
					i <- i - 1
					
					Escribir "cono eliminado"
					
				SiNo
					
					Escribir "indice invalido."
					
				FinSi
				
		FinSegun
		
	Hasta Que opciones = 5
	
FinProceso
	