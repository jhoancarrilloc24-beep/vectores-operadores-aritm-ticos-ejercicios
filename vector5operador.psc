Proceso operadorvectro5
	
	Definir n, i, opcion, j, k Como Entero
	Definir radio, area Como Real
	
	dimension resultado[100]
	
	Escribir "cuantos circulos desea almacenar"
	Leer n
	
	si n > 100 Entonces
		
		n <- 100
		
	FinSi
	
	i <- 1
	
	Repetir
		
		Escribir "=============================="
		Escribir "   menu opciones de circulo   "
		Escribir "=============================="
		Escribir "1) crear un nuevo o nuevos circulos"
		Escribir "2) leer circulo creado"
		Escribir "3) actualizar circulo"
		Escribir "4) eliminar circulo"
		Escribir "5) salir del programa"
		Escribir "_______________________________"
		Escribir ""
		Escribir "ingresa opcion 1 - 5"
		Leer opcion
		
		Segun opcion hacer
			
			Caso 1:
				
				si i <= n Entonces
					
					Escribir "ingresa el radio de circulo"
					Leer radio
					
					area <- 3.1416 * radio^2
					resultado[i] <- area
					
					Escribir "area calculada: ", area
					
					i <- i + 1
					
				SiNo
					
					Escribir "limite alcanzado"
					
				FinSi
				
			Caso 2:
				
				si i = 1 Entonces
					
					Escribir "no hay datos aun en el programa"
					
				SiNo
					
					Para j <- 1 Hasta i -1
						
						Escribir "area de circulo [",j,"]: ", resultado[j]
						
					FinPara
					
				FinSi
				
			Caso 3:
				
				Escribir "actualizar circulo (1 a", i -1,")"
				Leer j
				
				si j >= 1 y  j < i Entonces
					
					Escribir "Nuevo radio del circulo:"
                    Leer radio
                    
					area <- 3.1416 * radio^2
                    resultado[j] <- area
                    
					Escribir "Actualizado circulo: ", area
					
				Sino
					
					Escribir "Índice inválido."
					
				FinSi
				
			Caso 4:
				
				Escribir "circulo: Índice a eliminar (1 a ", i -1 "):"
                Leer j
				
                Si j >= 1 Y j < i Entonces
					
					Para k <- j Hasta i - 2
						
						resultado[k+1] <- resultado[k+1]
						
					FinPara
                    
					i <- i - 1
                    
					Escribir "Eliminado."
					
				Sino
					
					Escribir "Índice inválido."
					
				FinSi
				
		FinSegun
		
	Hasta Que opcion = 5 
	
FinProceso