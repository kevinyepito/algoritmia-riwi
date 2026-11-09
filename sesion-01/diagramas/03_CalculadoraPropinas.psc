Algoritmo CalculadoraPropinas
    Definir cuenta, porcentaje, propina, total, personas, cadaUno Como Real

    Escribir "Ingrese el valor de la cuenta:"
    Leer cuenta

    Escribir "Ingrese el porcentaje de propina:"
    Leer porcentaje

    Escribir "Ingrese la cantidad de personas:"
    Leer personas

    propina <- cuenta * porcentaje / 100
    total <- cuenta + propina
    cadaUno <- total / personas

    Escribir "Valor de la cuenta: ", cuenta
    Escribir "Valor de la propina: ", propina
    Escribir "Total a pagar: ", total
    Escribir "Valor que debe pagar cada persona: ", cadaUno
FinAlgoritmo
