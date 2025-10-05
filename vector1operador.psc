Proceso ejercicioOperadoresAritmeticos1
	
    Definir t, opcion, i, j, k Como Entero
    Definir base, altura, area Como Real
    Dimension resultados[100] // Array para almacenar resultados
	
    Escribir "�Cu�ntos tri�ngulos desea almacenar?: "
    Leer t
	
    Si t > 100 Entonces
		
		Escribir "El m�ximo permitido es 100. Se establecer� en 100."
        t <- 100
		
	FinSi
	
    i <- 1  // Iniciar en 1 (no 0)
	
    Repetir
		
		Escribir ""
		Escribir "=============================="
        Escribir "---- Men� opciones Triangulo ----"
		Escribir "=============================="
        Escribir "1. Crear (Calcular �rea y guardar)"
        Escribir "2. Leer �reas almacenadas"
        Escribir "3. Actualizar un �rea"
        Escribir "4. Eliminar un �rea"
        Escribir "5. Salir"
        Escribir "Seleccione una opci�n: "
        Leer opcion
		
        Segun opcion Hacer
			
            Caso 1: // CREAR
				
				Si i <= t Entonces
                    
					Escribir "Ingrese la base del tri�ngulo: "
                    Leer base
                    
					Escribir "Ingrese la altura del tri�ngulo: "
                    Leer altura
                    
					area <- (base * altura) / 2
                    resultados[i] <- area
                    
					Escribir " �rea calculada y guardada en posici�n ", i, ": ", area
				    i <- i + 1
					
				Sino
					
					Escribir " L�mite alcanzado. No puede agregar m�s."
					
				FinSi
				
            Caso 2: // LEER
                
				Si i = 1 Entonces
					
					Escribir " No hay �reas guardadas a�n."
					
				Sino
					
					Para j <- 1 Hasta i - 1 Con Paso 1
                        
						Escribir "�rea [", j, "]: ", resultados[j]
						
					FinPara
					
				FinSi
				
            Caso 3: // ACTUALIZAR
				
				Escribir "Ingrese el �ndice del �rea a actualizar (1 a ", i - 1, "): "
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Escribir "Ingrese la nueva base: "
                    Leer base
                    
					Escribir "Ingrese la nueva altura: "
                    Leer altura
                    
					area <- (base * altura) / 2
                    
					resultados[j] <- area
                    
					Escribir " �rea actualizada en posici�n ", j, ": ", area
					
				Sino
					
					Escribir " �ndice inv�lido."
					
				FinSi
				
            Caso 4: // ELIMINAR
				
				Escribir "Ingrese el �ndice del �rea a eliminar (1 a ", i - 1, "): "
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Para k <- j Hasta i - 2 Con Paso 1
						
						resultados[k] <- resultados[k + 1]
						
					FinPara
                    
					i <- i - 1
                    
					Escribir " �rea eliminada correctamente."
					
				Sino
					
					Escribir " �ndice inv�lido."
					
				FinSi
				
            Caso 5:
                
				Escribir " Saliendo del programa..."
				
            De Otro Modo:
                
				Escribir " Opci�n inv�lida. Intente de nuevo."
				
        FinSegun
		
    Hasta Que opcion = 5

FinProceso