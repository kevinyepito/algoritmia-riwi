SubProceso LeerPedido(subtotal Por Referencia)
    Escribir "Ingrese el subtotal del pedido:"
    Leer subtotal
FinSubProceso

SubProceso CalcularImpuesto(subtotal, impuesto Por Referencia)
    impuesto <- subtotal * 8 / 100
FinSubProceso

SubProceso CalcularPropina(subtotal, propina Por Referencia)
    propina <- subtotal * 10 / 100
FinSubProceso

SubProceso ImprimirFactura(subtotal, impuesto, propina)
    Definir total Como Real
	
    total <- subtotal + impuesto + propina
	
    Escribir "----- FACTURA -----"
    Escribir "Subtotal: $", subtotal
    Escribir "Impuesto (8%): $", impuesto
    Escribir "Propina (10%): $", propina
    Escribir "Total a pagar: $", total
FinSubProceso

Algoritmo Factura
    Definir subtotal, impuesto, propina Como Real
	
    LeerPedido(subtotal)
    CalcularImpuesto(subtotal, impuesto)
    CalcularPropina(subtotal, propina)
    ImprimirFactura(subtotal, impuesto, propina)
FinAlgoritmo