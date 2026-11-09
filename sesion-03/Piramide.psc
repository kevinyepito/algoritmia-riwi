Algoritmo Piramide
    Definir fila, espacio, asterisco Como Entero
	
    Para fila <- 1 Hasta 4 Hacer
		
        Para espacio <- 1 Hasta 4 - fila Hacer
            Escribir Sin Saltar " "
        FinPara
		
        Para asterisco <- 1 Hasta 2 * fila - 1 Hacer
            Escribir Sin Saltar "*"
        FinPara
		
        Escribir ""
    FinPara
FinAlgoritmo