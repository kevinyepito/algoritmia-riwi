## Mapa de traza 1. Cajero del parqueadero

Valores de entrada:

- Primer carro: $4.000
- Segundo carro: $8.000
- Tercer carro: $2.000
- Valor 0: cerrar caja.

| Iteración | Valor | Total | Carros | ¿Valor > 0? |
|:---:|---:|---:|---:|:---:|
| Inicial | 4000 | 0 | 0 | Sí |
| 1 | 8000 | 4000 | 1 | Sí |
| 2 | 2000 | 12000 | 2 | Sí |
| 3 | 0 | 14000 | 3 | No |

**Resultado final:** 3 carros atendidos y $14.000 recaudados.

---

## Mapa de traza 2. Pirámide

| Fila | Valor de fila | Espacios (4 - fila) | Asteriscos (2 × fila - 1) |
|:---:|:---:|:---:|:---:|
| 1 | 1 | 3 | 1 |
| 2 | 2 | 2 | 3 |
| 3 | 3 | 1 | 5 |
| 4 | 4 | 0 | 7 |

**Resultado esperado:**

```text
   *
  ***
 *****
*******
```

---

## Árbol de componentes de YouTube

```text
YouTube
│
├── Header (barra superior)
│   ├── Menú hamburguesa
│   ├── Logo de YouTube
│   ├── Barra de búsqueda
│   ├── Botón de búsqueda por voz
│   ├── Crear contenido
│   ├── Notificaciones
│   └── Perfil de usuario
│
├── Sidebar (menú lateral)
│   ├── Inicio
│   ├── Shorts
│   ├── Suscripciones
│   └── Tú / Biblioteca
│
└── Main (contenido principal)
    │
    ├── Barra de categorías
    │   ├── Todo
    │   ├── Música
    │   ├── Videojuegos
    │   └── Tecnología
    │
    └── Cuadrícula de videos
        │
        └── Tarjeta de video
            ├── Miniatura del video
            ├── Duración
            ├── Foto del canal
            ├── Título
            ├── Nombre del canal
            └── Visualizaciones y fecha
```