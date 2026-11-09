Algoritmo SemaforoInventario
    Definir unidades Como Entero
	
    Escribir "Ingrese la cantidad de unidades:"
    Leer unidades
	
    Si unidades < 0 Entonces
        Escribir "Error: cantidad invalida"
    SiNo
        Si unidades = 0 Entonces
            Escribir "ROJO: inventario agotado"
        SiNo
            Si unidades <= 10 Entonces
                Escribir "AMARILLO: hay que pedir"
            SiNo
                Escribir "VERDE: inventario suficiente"
            FinSi
        FinSi
    FinSi
FinAlgoritmo