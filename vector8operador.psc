Proceso operadorvectro8
    
	Definir n, i, opcion, j, k Como Entero
    Definir dolares, tasa, euros Como Real
    
	Dimension resultado[100]
    
	Escribir "�Cu�ntas conversiones bas a guerdar?: "
    Leer n
    
	Si n > 100 Entonces
        n <- 100
    FinSi
    
	Escribir "Ingrese la tasa de cambio (1 d�lar a euros):"
    Leer tasa
    
	i <- 1
    
	Repetir
		
		Escribir "=============================="
		Escribir ">>>>>>>>>>>MEN� CRUD<<<<<<<<<<"
        Escribir ">>>>>>De Dolares a Euros<<<<<<"
		Escribir "=============================="
		Escribir "1) crear (dolares)"
		Escribir "2) leer dolares"
		Escribir "3) actualizar cantidad en dolares"
		Escribir "4) eliminar(dolares)"
		Escribir "5) salir del menu de opciones"
		Escribir "==============================="
		Escribir "ingresa opcion de  [1 - 5]"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Si i <= n Entonces
                    
					Escribir "Ingrese una cantidad de d�lares:"
					Leer dolares
                    
					euros <- dolares * tasa
                    resultado[i] <- euros
                    
					Escribir "Euros en total: ", euros
                    
					i <- i + 1
					
				Sino
					
					Escribir "L�mite alcanzado."
					
				FinSi
				
			Caso 2:
				
				Si i = 1 Entonces
					
					Escribir "No existen datos a�n."
					
				Sino
					
					Para j <- 1 Hasta i - 1
                        Escribir "cantidad en Euros [", j, "]: ", resultado[j]
                    FinPara
					
				FinSi
				
			Caso 3:
				
				Escribir "actualiza indice de dolar (1 a", i -1,")"
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Escribir " escribe una nueva cantidad en d�lares:"
                    Leer dolares
                    
					euros <- dolares * tasa
                    resultado[j] <- euros
                    
					Escribir "euros actualizado: ", euros
					
				Sino
					
					Escribir "�ndice inv�lido."
					
				FinSi
				
			Caso 4:
				
				Escribir "�ndice a eliminar: ",euros," elija 1 para eliminar (1 a ", i -1, ")"
                Leer j
                
				Si j >= 1 Y j < i Entonces
					
					Para k <- j Hasta i - 2
                        resultado[k+1] <- resultado[k+1]
						FinPara
						
						i <- i - 1
						
						Escribir "Eliminado."
						Escribir "recomiendo crear uno nuevo"
						
					Sino
						
						Escribir "falla �ndice inv�lido no existente."
						
					FinSi
			FinSegun
    Hasta Que opcion = 5
FinProceso
