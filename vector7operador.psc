Proceso operadorvectro7
    
	Definir n, i, respuesta, j, k Como Entero
    Definir celsius, fahrenheit Como Real
    
	Dimension resultados[100]
    
	Escribir "¿Cuántas conversiones desea almacenar?: "
    Leer n
    
	Si n > 100 Entonces
        n <- 100
    FinSi
	
    i <- 1
    
	Repetir
		
		Escribir "================================"
		Escribir "  menu de celsius a fahrenheit  "
		Escribir "================================"
		Escribir "1) crear (calcula el fahrenheit)"
		Escribir "2) leer -> creado"
		Escribir "3) actualizar calculo a fahrenheit"
		Escribir "4) eliminar "
		Escribir "5) salir del simulador de calculo"
		Escribir "==============================="
		Escribir "ingresa opcion de => 1 - 5 <="
		Leer respuesta
		
        Segun respuesta Hacer
				
            Caso 1:
				
                Si i <= n Entonces
					
					Escribir "Ingrese los grados Celsius :"
                    Leer celsius
                    
					fahrenheit <- (celsius * 9/5) + 32
                    resultados[i] <- fahrenheit
                    
					Escribir "calculo Fahrenheit: ", fahrenheit
                    
					i <- i + 1
					
				Sino
					
					Escribir "Límite alcanzado te has excedido."
					
				FinSi
				
			Caso 2:
				
				Si i = 1 Entonces
					
					Escribir "No existen datos aún almacenados."
					
				Sino
					
					Para j <- 1 Hasta i - 1
                        Escribir "dato fahrenheit almacenado [", j, "]: ", resultados[j]
						FinPara
						
					FinSi
					
				Caso 3:
					
					Escribir "actuliza indice (crear nuevo indice) (1 a", i -1,")"
					Leer j
					
					Si j >= 1 Y j < i Entonces
                    Escribir "Nuevo catidad de Celsius:"
                    Leer celsius
					
					fahrenheit <- (celsius * 9/5) + 32
                    resultados[j] <- fahrenheit
                    
					Escribir "Actualizado: ", fahrenheit
					
				Sino
					
					Escribir "Índice inválido limite alcanzado."
					
				FinSi
				
			Caso 4:
				
				Escribir "desea eliminar este Índice -> :", fahrenheit," elija 1 para eliminar (1 a ", i -1, ")"
                Leer j
				
                Si j >= 1 Y j < i Entonces
					
					Para k <- j Hasta i - 2
                        resultados[k+1] <- resultados[k+1]
                    FinPara
                    
					i <- i - 1
                    
					Escribir "Eliminado."
					
				Sino
					
					Escribir "error Índice inválido."
					
				FinSi
        FinSegun
    Hasta Que respuesta = 5
FinProceso
