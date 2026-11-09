Algoritmo AnioBisiesto
    Definir anio Como Entero
	
    Escribir "Ingrese un año:"
    Leer anio
	
    Si anio <= 0 Entonces
        Escribir "Error: año invalido"
    SiNo
        Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O anio MOD 400 = 0 Entonces
            Escribir "El año es bisiesto"
        SiNo
            Escribir "El año no es bisiesto"
        FinSi
    FinSi
FinAlgoritmo