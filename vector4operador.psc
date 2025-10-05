Proceso   operadorvectro3
	
	Definir cilindros,i,opcion,j,k Como Entero
	Definir radio,altura, volumen Como Real
	
	dimension resultado[100]
	
	Escribir "ingresa el numero de cilindros que desea agregar."
	Leer cilindros
	
	si cilindros > 100 Entonces
		
		Escribir "se establecio un maximo de 100."
		cilindros <- 100
		
	FinSi
	
	i <- 1
	
	Repetir
		
		Escribir "======================================"
		Escribir "----- menu de opcion de cilindro -----"
		Escribir "======================================"
		Escribir "1) crear cilindro"
		Escribir "2) leer cilindro creado"
		Escribir "3) actualizar cilindro"
		Escribir "4) eliminar cilindro"
		Escribir "5) salir del programa"
		Leer opcion
		
		Segun opcion hacer
			
			Caso 1:
				
				si i <= cilindros Entonces
					
					Escribir "ingresa un radio para el cilindro"
					Leer radio
					
					Escribir "ingresa una altura para el cilindro"
					Leer altura
					
					volumen <- 3.1416 * radio^2 * altura
					
					resultado[i] <- volumen
				   
					Escribir "radio ", radio," y altura ", altura
					Escribir "calculo del cilindro ", volumen
					
					i <- i + 1
					
				SiNo
					
					Escribir "limite alcanzado"
					
				FinSi
				
			Caso 2:
				
				Si i = 1 Entonces
					
					Escribir "No hay datos aún."
					
				Sino
					
					Para j <- 1 Hasta i - 1
						
						Escribir "Volumen [", j, "]: ", resultado[j]
						
					FinPara
					
				FinSi
				
			Caso 3:
				
				Escribir "indice a actualizar (1 a", i - 1,"):"
				Leer j
				
				si j >= 1 y j < i Entonces
					
					Escribir "nueva radio del cilindro"
					Leer radio
					
					volumen <- (4/3) * 3.1416 * radio^2 * altura
					
					resultado[j] <- volumen
					
					Escribir "nueva altura del cilindro"
					Leer altura
					
					Escribir "actualizado: ", volumen
					
				SiNo
					
					Escribir "indice invalido."
					
				FinSi
				
			Caso 4:
				
				Escribir "indice a eliminar (1 a ", i -1 "):"
				Leer j
					
				si j >= 1 y j < i Entonces
					
					Para k <- j Hasta  i -2
						
						resultado[k +1 ] <- resultado[k + 1]
						
					FinPara
					
						i <- i -1
						
						Escribir "elimnado."
						
					SiNo
						
						Escribir "indice invalido."
						
						
					FinSi
				
		FinSegun
		
	Hasta Que opcion = 5
	
FinProceso
	
