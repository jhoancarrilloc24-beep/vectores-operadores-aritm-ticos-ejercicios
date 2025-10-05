Proceso  ejercicioOperadoresAritmeticos9
    
	Definir n, i, opcion, j, k Como Entero
    Definir baseMayor, baseMenor, altura, area Como Real
    
	Dimension resultados[100]
    
	Escribir "¿Cuántos trapecios desea almacenar?: "
    Leer n
    
	Si n > 100 Entonces
        n <- 100
    FinSi
    
	i <- 1
    
	Repetir
		
		Escribir "=============================="
		Escribir ">>>>>>>>>>>   MENU  <<<<<<<<<<"
        Escribir ">>>>>> area de trapecio <<<<<<"
		Escribir "=============================="
		Escribir "1) crear area (calcula area)"
		Escribir "2) leer area"
		Escribir "3) actualizar area del trapecio"
		Escribir "4) eliminar(area/as)"
		Escribir "5) pulsa 5 para salir"
		Escribir "______________________________"
		Escribir "ingresa opcion de  [1 - 5]"
        Leer opcion
        
		Segun opcion Hacer
			
			Caso 1:
				
				Si i <= n Entonces
					
					Escribir "Ingresa la base mayor del trapecio:"
                    Leer baseMayor
                    
					Escribir "Ingresa la base menor del trapecio:"
                    Leer baseMenor
                    
					Escribir "Ingresa la altura del trapecio"
                    Leer altura
                    
					area <- ((baseMayor + baseMenor) * altura) / 2
                    resultados[i] <- area
                    
					Escribir "calculo de area del trapecio: ", area
                    
					i <- i + 1
					
				Sino
					Escribir "alcamzacte los limites"
					FinSi
					
				Caso 2:
					
					Si i = 1 Entonces
						
						Escribir "no existe todavia datos."
						
					Sino
						
						Para j <- 1 Hasta i - 1
							
							Escribir "Área del trapecio[", j, "]: ", resultados[j]
							
						FinPara
                FinSi
				
			Caso 3:
				
				Escribir "actualiza indice precionado (1 a", i -1,")"
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Escribir "ingresa una nueva base mayor:"
                    Leer baseMayor
                    
					Escribir "tambien una base menor:"
					Leer baseMenor
                    
					Escribir "y una nueva altura:"
                    Leer altura
                    
					area <- ((baseMayor + baseMenor) * altura) / 2
                    resultados[j] <- area
                    
					Escribir "esta es la nuva actualizacion del area (trapecio) ", area
					
				Sino
					
					Escribir "Índice no existente."
					
				FinSi
				
			Caso 4:
				
				Escribir "eliminar el siguiente indice:",area, "preciona 1 a ", i -1, " para eliminar)"
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Para k <- j Hasta i - 2
                        
						resultados[k+1] <- resultados[k+1]
						
					FinPara
                    
					i <- i - 1
                    
					Escribir "(area) indice Eliminado."
					
				Sino
					
					Escribir "Índice no existente"
					
				FinSi
        FinSegun
	Hasta Que opcion = 5
FinProceso