Proceso ejercicioOperadoresAritmeticos1
	
    Definir t, opcion, i, j, k Como Entero
    Definir base, altura, area Como Real
    Dimension resultados[100] // Array para almacenar resultados
	
    Escribir "¿Cuántos triángulos desea almacenar?: "
    Leer t
	
    Si t > 100 Entonces
		
		Escribir "El máximo permitido es 100. Se establecerá en 100."
        t <- 100
		
	FinSi
	
    i <- 1  // Iniciar en 1 (no 0)
	
    Repetir
		
		Escribir ""
		Escribir "=============================="
        Escribir "---- Menú opciones Triangulo ----"
		Escribir "=============================="
        Escribir "1. Crear (Calcular área y guardar)"
        Escribir "2. Leer áreas almacenadas"
        Escribir "3. Actualizar un área"
        Escribir "4. Eliminar un área"
        Escribir "5. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
		
        Segun opcion Hacer
			
            Caso 1: // CREAR
				
				Si i <= t Entonces
                    
					Escribir "Ingrese la base del triángulo: "
                    Leer base
                    
					Escribir "Ingrese la altura del triángulo: "
                    Leer altura
                    
					area <- (base * altura) / 2
                    resultados[i] <- area
                    
					Escribir " Área calculada y guardada en posición ", i, ": ", area
				    i <- i + 1
					
				Sino
					
					Escribir " Límite alcanzado. No puede agregar más."
					
				FinSi
				
            Caso 2: // LEER
                
				Si i = 1 Entonces
					
					Escribir " No hay áreas guardadas aún."
					
				Sino
					
					Para j <- 1 Hasta i - 1 Con Paso 1
                        
						Escribir "Área [", j, "]: ", resultados[j]
						
					FinPara
					
				FinSi
				
            Caso 3: // ACTUALIZAR
				
				Escribir "Ingrese el índice del área a actualizar (1 a ", i - 1, "): "
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Escribir "Ingrese la nueva base: "
                    Leer base
                    
					Escribir "Ingrese la nueva altura: "
                    Leer altura
                    
					area <- (base * altura) / 2
                    
					resultados[j] <- area
                    
					Escribir " Área actualizada en posición ", j, ": ", area
					
				Sino
					
					Escribir " Índice inválido."
					
				FinSi
				
            Caso 4: // ELIMINAR
				
				Escribir "Ingrese el índice del área a eliminar (1 a ", i - 1, "): "
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Para k <- j Hasta i - 2 Con Paso 1
						
						resultados[k] <- resultados[k + 1]
						
					FinPara
                    
					i <- i - 1
                    
					Escribir " Área eliminada correctamente."
					
				Sino
					
					Escribir " Índice inválido."
					
				FinSi
				
            Caso 5:
                
				Escribir " Saliendo del programa..."
				
            De Otro Modo:
                
				Escribir " Opción inválida. Intente de nuevo."
				
        FinSegun
		
    Hasta Que opcion = 5

FinProceso