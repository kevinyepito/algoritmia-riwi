Algoritmo ValidarRegistro
    Definir edad Como Entero
    Definir respuesta Como Caracter
	
    Escribir "Ingrese su edad:"
    Leer edad
	
    Escribir "Acepta los terminos y condiciones? (S/N):"
    Leer respuesta
	
    respuesta <- Mayusculas(respuesta)
	
    Si edad >= 14 Y respuesta = "S" Entonces
        Escribir "Registro exitoso"
    SiNo
        Escribir "Registro fallido"
    FinSi
FinAlgoritmo