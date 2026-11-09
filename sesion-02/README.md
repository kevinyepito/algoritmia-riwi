# Tablas de decisión, tablas de verdad y pruebas de escritorio

## 1. Validar registro

### Tabla de verdad

- A: La edad es mayor o igual a 14.
- B: Acepta los términos y condiciones.
- Resultado: A Y B.

| A | B | Resultado |
|---|---|---|
| Verdadero | Verdadero | Verdadero |
| Verdadero | Falso | Falso |
| Falso | Verdadero | Falso |
| Falso | Falso | Falso |

### Pruebas de escritorio

| Prueba | Edad | Respuesta | Salida esperada |
|---|---:|---|---|
| 1 | 18 | S | Registro exitoso |
| 2 | 14 | s | Registro exitoso |
| 3 | 13 | S | Registro fallido |
| 4 | 20 | N | Registro fallido |
| 5 | 14 | n | Registro fallido |

---

## 2. Negar sin equivocarse

### Tabla de verdad (Ley de De Morgan)

- A: La edad es menor que 0.
- B: La edad es mayor que 120.
- Resultado: NO (A O B).

| A | B | A O B | NO (A O B) |
|---|---|---|---|
| Verdadero | Verdadero | Verdadero | Falso |
| Verdadero | Falso | Verdadero | Falso |
| Falso | Verdadero | Verdadero | Falso |
| Falso | Falso | Falso | Verdadero |

### Pruebas de escritorio

| Prueba | Edad | Evaluación | Salida esperada |
|---|---:|---|---|
| 1 | 25 | Dentro del rango | Edad válida |
| 2 | 0 | Límite inferior | Edad válida |
| 3 | 120 | Límite superior | Edad válida |
| 4 | -1 | Menor que 0 | Edad inválida |
| 5 | 121 | Mayor que 120 | Edad inválida |

---

## 3. Parqueadero

### Tabla de decisión

- A: El tipo de vehículo es válido (carro o moto).
- B: El tiempo es mayor que 15 minutos.
- C: Presenta factura del centro comercial.
- D: Los datos son válidos.

| Regla | A | B | C | D | Decisión |
|---|---|---|---|---|---|
| 1 | Falso | - | - | - | Error |
| 2 | Verdadero | - | - | Falso | Error |
| 3 | Verdadero | Falso | - | Verdadero | Gratis |
| 4 | Verdadero | Verdadero | Falso | Verdadero | Tarifa normal |
| 5 | Verdadero | Verdadero | Verdadero | Verdadero | Paga la mitad |

**Nota:** El símbolo `-` significa que la condición no afecta la decisión de esa regla.

### Pruebas de escritorio

| Prueba | Vehículo | Minutos | Factura | Cálculo | Salida esperada |
|---|---|---:|---|---|---:|
| 1 | CARRO | 15 | N | Primeros 15 minutos gratis | $0 |
| 2 | MOTO | 60 | N | 1 × 2.000 | $2.000 |
| 3 | CARRO | 60 | S | 4.000 / 2 | $2.000 |
| 4 | CARRO | 600 | N | 40.000, limitado a 30.000 | $30.000 |
| 5 | CARRO | 600 | S | 30.000 / 2 | $15.000 |
| 6 | BICICLETA | 60 | N | Tipo inválido | Error |
| 7 | MOTO | -5 | N | Tiempo negativo | Error |
| 8 | MOTO | 15 | S | Primeros 15 minutos gratis | $0 |

---

## 4. Semáforo de inventario

### Tabla de decisión

| Regla | Condición | Resultado |
|---|---|---|
| 1 | Unidades menor que 0 | Error |
| 2 | Unidades igual a 0 | Rojo |
| 3 | Unidades entre 1 y 10 | Amarillo |
| 4 | Unidades mayores que 10 | Verde |

### Pruebas de escritorio

| Prueba | Unidades | Evaluación | Salida esperada |
|---|---:|---|---|
| 1 | -1 | Menor que 0 | Error |
| 2 | 0 | Inventario agotado | Rojo |
| 3 | 1 | Dentro del rango 1-10 | Amarillo |
| 4 | 10 | Límite superior amarillo | Amarillo |
| 5 | 11 | Mayor que 10 | Verde |
| 6 | 50 | Mayor que 10 | Verde |

---

## 5. Año bisiesto

### Tabla de decisión

- D4: El año es divisible entre 4.
- D100: El año es divisible entre 100.
- D400: El año es divisible entre 400.

| Regla | D4 | D100 | D400 | Resultado |
|---|---|---|---|---|
| 1 | Sí | No | No | Bisiesto |
| 2 | Sí | Sí | Sí | Bisiesto |
| 3 | Sí | Sí | No | No bisiesto |
| 4 | No | No | No | No bisiesto |

### Pruebas de escritorio

| Prueba | Año | Divisible entre 4 | Divisible entre 100 | Divisible entre 400 | Salida esperada |
|---|---:|---|---|---|---|
| 1 | 2024 | Sí | No | No | Bisiesto |
| 2 | 2025 | No | No | No | No bisiesto |
| 3 | 1900 | Sí | Sí | No | No bisiesto |
| 4 | 2000 | Sí | Sí | Sí | Bisiesto |
| 5 | 2028 | Sí | No | No | Bisiesto |
| 6 | 0 | - | - | - | Error |
