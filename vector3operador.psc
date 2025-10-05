Proceso operadorvectro3
	
	Definir n,i,opcion,j,k Como Entero
	Definir largo, ancho, area  Como Real
	
	Dimension resultados[100]
	
	Escribir "¿cuantos rectangulos deseas agregar?: "
	Leer n
	
	si n > 100 Entonces
		
		n <- 100
		
	FinSi
	
	i <- 1
	
	Repetir
		
		Escribir ""
		Escribir "==================================="
		Escribir " menu de de opciones de rectangulo "
		Escribir "==================================="
		Escribir "1. crear un rectangulo"
		Escribir "2. leer rectangulo"
		Escribir "3. actualizar rectangulo"
		Escribir "4. eliminar rectangul"
		Escribir "5. salir del programa"
		Leer opcion
		
		
		Segun opcion hacer
			
			Caso 1:
				
				Si i <= n Entonces
					
					Escribir "ingresa el largo del rectangulo"
					Leer largo
					
					Escribir "ingresa el anchi del rectangulo"
					Leer ancho
					
					area <- largo * ancho
                    resultados[i] <- area
                    
					Escribir "Área calculada: ", area
					
				 	i <- i + 1
					
				Sino
                    
					Escribir "Límite alcanzado."
					
				FinSi					
				
			Caso 2:
				
				Si i = 1 Entonces
					
					Escribir "No hay datos aún."
					
				Sino
					
					Para j <- 1 Hasta i - 1
						
						Escribir "Área de rectangulo [", j, "]: ", resultados[j]
						
					FinPara
					
				FinSi
				
			Caso 3:
				
				Escribir "nuevo Índice a actualizar:"
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Escribir "Nuevo largo:"
                    Leer largo
				    
					Escribir "Nuevo ancho:"
                    Leer ancho
                    
					area <- largo * ancho
                    resultados[j] <- area
                    
					Escribir "Actualizado: ", area
					
				Sino
					
					Escribir "Índice inválido."
					
				FinSi
				
			Caso 4:
                
				Escribir "Índice a eliminar:"
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Para k <- j Hasta i - 2
						
						resultados[k] <- resultados[k+1]
						
					FinPara
                    
					i <- i - 1
                    
					Escribir "Eliminado rectangulo."
					
				Sino
					
					Escribir "Índice inválido."
					
				FinSi
				
		FinSegun
		
		
	Hasta Que opcion = 5
	
FinProceso	