Algoritmo Parqueadero
    Definir tipo, factura Como Caracter
    Definir minutos, horas, tarifa Como Real
    Definir subtotal, total Como Real
	
    Escribir "Ingrese el tipo de vehiculo (CARRO/MOTO):"
    Leer tipo
	
    Escribir "Ingrese el tiempo en minutos:"
    Leer minutos
	
    Escribir "Tiene factura del centro comercial? (S/N):"
    Leer factura
	
    tipo <- Mayusculas(tipo)
    factura <- Mayusculas(factura)
	
    Si (tipo <> "CARRO" Y tipo <> "MOTO") O minutos < 0 O (factura <> "S" Y factura <> "N") Entonces
        Escribir "Error: datos invalidos"
    SiNo
        Si tipo = "CARRO" Entonces
            tarifa <- 4000
        SiNo
            tarifa <- 2000
        FinSi
		
        Si minutos <= 15 Entonces
            total <- 0
        SiNo
            horas <- minutos / 60
            subtotal <- horas * tarifa
			
            Si subtotal > 30000 Entonces
                subtotal <- 30000
            FinSi
			
            Si factura = "S" Entonces
                total <- subtotal / 2
            SiNo
                total <- subtotal
            FinSi
        FinSi
		
        Escribir "El valor a pagar es: $", total
    FinSi
FinAlgoritmo