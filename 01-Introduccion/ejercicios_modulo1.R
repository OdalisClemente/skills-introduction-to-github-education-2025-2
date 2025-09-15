# =====================================
# MÓDULO 1: INTRODUCCIÓN A RSTUDIO
# Script de Ejercicios Prácticos
# =====================================

# Este script contiene todos los ejercicios del Módulo 1
# Ejecuta cada sección paso a paso

# -------------------------------------
# 1. VERIFICACIÓN DE INSTALACIÓN
# -------------------------------------

# Verificar versión de R
print("=== INFORMACIÓN DEL SISTEMA ===")
R.version.string
print(paste("Fecha actual:", Sys.Date()))
print("¡RStudio está funcionando correctamente!")

# -------------------------------------
# 2. OPERACIONES BÁSICAS
# -------------------------------------

print("\n=== OPERACIONES MATEMÁTICAS ===")

# Matemáticas básicas
print(paste("2 + 2 =", 2 + 2))
print(paste("10 * 5 =", 10 * 5))
print(paste("15 / 3 =", 15 / 3))
print(paste("2^3 =", 2^3))

# -------------------------------------
# 3. VARIABLES Y ASIGNACIONES
# -------------------------------------

print("\n=== TRABAJANDO CON VARIABLES ===")

# Crear variables
mi_nombre <- "Estudiante de RStudio"
mi_edad <- 25
mi_altura <- 1.75
es_estudiante <- TRUE

# Mostrar variables
print(paste("Nombre:", mi_nombre))
print(paste("Edad:", mi_edad, "años"))
print(paste("Altura:", mi_altura, "metros"))
print(paste("¿Es estudiante?", es_estudiante))

# -------------------------------------
# 4. VECTORES Y LISTAS
# -------------------------------------

print("\n=== VECTORES Y OPERACIONES ===")

# Crear vectores
numeros <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
frutas <- c("manzana", "banana", "naranja", "uva", "fresa")
precios <- c(1.20, 0.80, 1.50, 2.10, 2.50)

print("Vector de números:")
print(numeros)

print("Vector de frutas:")
print(frutas)

print("Vector de precios:")
print(precios)

# Operaciones con vectores
print(paste("Suma de números:", sum(numeros)))
print(paste("Promedio de números:", mean(numeros)))
print(paste("Valor máximo:", max(numeros)))
print(paste("Valor mínimo:", min(numeros)))

# Operaciones vectoriales
doble_numeros <- numeros * 2
print("Números multiplicados por 2:")
print(doble_numeros)

# -------------------------------------
# 5. TU PRIMER GRÁFICO
# -------------------------------------

print("\n=== CREANDO GRÁFICOS ===")

# Datos para el gráfico
x <- 1:10
y <- x^2

# Crear el gráfico
plot(x, y, 
     type = "b",           # línea con puntos
     col = "blue",         # color azul
     pch = 16,             # tipo de punto
     lwd = 2,              # grosor de línea
     main = "Mi Primer Gráfico en R",
     sub = "Función cuadrática: y = x²",
     xlab = "Valores X",
     ylab = "Valores Y (X²)",
     las = 1)              # orientación de etiquetas

# Agregar una cuadrícula
grid()

# Agregar texto al gráfico
text(5, 80, "¡Mi primer gráfico!", col = "red", cex = 1.2)

# -------------------------------------
# 6. EJERCICIO: ANÁLISIS PERSONAL
# -------------------------------------

print("\n=== EJERCICIO: ANÁLISIS PERSONAL ===")

# Información personal (modifica con tus datos)
mi_info <- list(
  nombre = "Tu Nombre",
  edad = 25,
  ciudad = "Tu Ciudad",
  profesion = "Tu Profesión",
  hobbies = c("lectura", "deportes", "música", "programación")
)

# Crear mensaje de presentación
presentacion <- paste("Hola, soy", mi_info$nombre, 
                     ", tengo", mi_info$edad, "años,", 
                     "vivo en", mi_info$ciudad,
                     "y trabajo como", mi_info$profesion)
print(presentacion)

print("Mis hobbies favoritos son:")
for(hobby in mi_info$hobbies) {
  print(paste("- ", hobby))
}

# -------------------------------------
# 7. EJERCICIO: CALCULADORA AVANZADA
# -------------------------------------

print("\n=== EJERCICIO: CALCULADORA ===")

# Función calculadora
calculadora <- function(a, b) {
  resultados <- list(
    suma = a + b,
    resta = a - b,
    multiplicacion = a * b,
    division = a / b,
    potencia = a ^ b,
    modulo = a %% b
  )
  return(resultados)
}

# Usar la calculadora
num1 <- 20
num2 <- 4
resultado <- calculadora(num1, num2)

print(paste("Operaciones con", num1, "y", num2, ":"))
print(paste("Suma:", resultado$suma))
print(paste("Resta:", resultado$resta))
print(paste("Multiplicación:", resultado$multiplicacion))
print(paste("División:", resultado$division))
print(paste("Potencia:", resultado$potencia))
print(paste("Módulo:", resultado$modulo))

# -------------------------------------
# 8. EJERCICIO: ANÁLISIS DE NOTAS
# -------------------------------------

print("\n=== EJERCICIO: ANÁLISIS DE NOTAS ===")

# Datos de notas
estudiante <- "María García"
asignaturas <- c("Matemáticas", "Física", "Química", "Biología", "Historia")
notas <- c(8.5, 9.0, 7.8, 9.5, 8.2)

# Estadísticas
promedio <- mean(notas)
nota_maxima <- max(notas)
nota_minima <- min(notas)
desviacion <- sd(notas)

print(paste("Estudiante:", estudiante))
print(paste("Promedio general:", round(promedio, 2)))
print(paste("Nota máxima:", nota_maxima, "en", asignaturas[which.max(notas)]))
print(paste("Nota mínima:", nota_minima, "en", asignaturas[which.min(notas)]))
print(paste("Desviación estándar:", round(desviacion, 2)))

# Gráfico de notas
barplot(notas, 
        names.arg = asignaturas,
        main = paste("Notas de", estudiante),
        ylab = "Calificación",
        xlab = "Asignaturas",
        col = rainbow(length(notas)),
        ylim = c(0, 10),
        las = 2)  # rotar etiquetas

# Añadir línea de promedio
abline(h = promedio, col = "red", lwd = 2, lty = 2)
text(3, promedio + 0.3, paste("Promedio:", round(promedio, 2)), col = "red")

# -------------------------------------
# 9. DATOS DEL CURSO
# -------------------------------------

print("\n=== CARGANDO DATOS DEL CURSO ===")

# Intentar cargar datos de empleados (si existe el archivo)
if(file.exists("../datasets/empleados.csv")) {
  empleados <- read.csv("../datasets/empleados.csv")
  print("Datos de empleados cargados exitosamente:")
  print(head(empleados, 3))
  print(paste("Total de empleados:", nrow(empleados)))
} else {
  print("Archivo de empleados no encontrado. Asegúrate de estar en la carpeta correcta.")
}

# -------------------------------------
# 10. RESUMEN Y PRÓXIMOS PASOS
# -------------------------------------

print("\n=== ¡FELICITACIONES! ===")
print("Has completado exitosamente el Módulo 1 de RStudio")
print("\nLo que has aprendido:")
print("✓ Operaciones básicas en R")
print("✓ Crear y manipular variables")
print("✓ Trabajar con vectores")
print("✓ Crear tu primer gráfico")
print("✓ Hacer análisis básicos de datos")

print("\nPróximo módulo: Fundamentos de R")
print("¡Sigue practicando y nos vemos en el siguiente módulo!")

# Limpiar el workspace (opcional)
# rm(list = ls())  # Descomenta esta línea para limpiar todas las variables