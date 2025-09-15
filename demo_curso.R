# =============================================
# SCRIPT DE DEMOSTRACIÓN DEL CURSO RSTUDIO
# =============================================

print("=== BIENVENIDO AL CURSO DE RSTUDIO ===")
print("Este script demuestra las capacidades del curso")

# Información del sistema
print("\n=== INFORMACIÓN DEL SISTEMA ===")
print(paste("Versión de R:", R.version.string))
print(paste("Fecha actual:", Sys.Date()))
print(paste("Sistema operativo:", Sys.info()["sysname"]))

# Carga de datos de ejemplo
print("\n=== CARGANDO DATOS DEL CURSO ===")

# Verificar si existen los datasets
if(file.exists("datasets/empleados.csv")) {
  empleados <- read.csv("datasets/empleados.csv")
  print(paste("✓ Dataset de empleados cargado:", nrow(empleados), "registros"))
  print("Primeros 3 empleados:")
  print(head(empleados, 3))
} else {
  print("⚠ Dataset de empleados no encontrado")
}

if(file.exists("datasets/ventas.csv")) {
  ventas <- read.csv("datasets/ventas.csv", stringsAsFactors = FALSE)
  print(paste("✓ Dataset de ventas cargado:", nrow(ventas), "registros"))
  print("Primeros 3 productos:")
  print(head(ventas, 3))
} else {
  print("⚠ Dataset de ventas no encontrado")
}

# Análisis básico si los datos están disponibles
if(exists("empleados")) {
  print("\n=== ANÁLISIS RÁPIDO - EMPLEADOS ===")
  print(paste("Salario promedio:", round(mean(empleados$salario), 2), "€"))
  print(paste("Edad promedio:", round(mean(empleados$edad), 1), "años"))
  
  # Contar empleados por departamento
  dept_count <- table(empleados$departamento)
  print("Empleados por departamento:")
  print(dept_count)
}

if(exists("ventas")) {
  print("\n=== ANÁLISIS RÁPIDO - VENTAS ===")
  print(paste("Precio promedio:", round(mean(ventas$precio), 2), "€"))
  print(paste("Ventas totales del mes:", sum(ventas$ventas_mes), "unidades"))
  
  # Producto más vendido
  top_producto <- ventas[which.max(ventas$ventas_mes), ]
  print(paste("Producto más vendido:", top_producto$producto, 
              "con", top_producto$ventas_mes, "unidades"))
}

# Crear gráfico básico
print("\n=== CREANDO GRÁFICO DE DEMOSTRACIÓN ===")

# Datos para gráfico
x <- 1:10
y <- x^2

# Intentar crear gráfico (puede no mostrarse en todos los entornos)
tryCatch({
  plot(x, y, 
       type = "b",
       col = "blue",
       pch = 16,
       lwd = 2,
       main = "Demostración: Función Cuadrática",
       xlab = "X",
       ylab = "Y = X²")
  grid()
  print("✓ Gráfico creado exitosamente")
}, error = function(e) {
  print("⚠ No se pudo mostrar el gráfico (normal en algunos entornos)")
})

# Demostración de funciones básicas
print("\n=== DEMOSTRACIÓN DE FUNCIONES ===")

# Función personalizada
calcular_estadisticas <- function(numeros) {
  list(
    promedio = mean(numeros),
    mediana = median(numeros),
    desviacion = sd(numeros),
    minimo = min(numeros),
    maximo = max(numeros)
  )
}

# Usar la función
numeros_ejemplo <- c(10, 15, 20, 25, 30, 35, 40)
estadisticas <- calcular_estadisticas(numeros_ejemplo)

print("Estadísticas de números de ejemplo:")
print(paste("Promedio:", round(estadisticas$promedio, 2)))
print(paste("Mediana:", estadisticas$mediana))
print(paste("Desviación estándar:", round(estadisticas$desviacion, 2)))
print(paste("Rango:", estadisticas$minimo, "-", estadisticas$maximo))

# Verificar estructura del curso
print("\n=== VERIFICANDO ESTRUCTURA DEL CURSO ===")

carpetas_esperadas <- c(
  "01-Introduccion",
  "02-Fundamentos-R", 
  "03-Manipulacion-Datos",
  "04-Visualizacion",
  "05-Estadisticas",
  "06-Programacion",
  "07-RMarkdown",
  "08-Proyectos",
  "datasets",
  "recursos",
  "ejercicios"
)

carpetas_existentes <- list.dirs(".", recursive = FALSE, full.names = FALSE)
carpetas_existentes <- carpetas_existentes[carpetas_existentes != ""]

for(carpeta in carpetas_esperadas) {
  if(carpeta %in% carpetas_existentes) {
    print(paste("✓", carpeta))
  } else {
    print(paste("✗", carpeta, "(no encontrada)"))
  }
}

# Resumen final
print("\n=== RESUMEN DEL CURSO ===")
print("🎯 Curso: Aprende RStudio desde Cero")
print("📚 Módulos: 8 módulos completos")
print("💾 Datasets: Datos reales para práctica")
print("🏋️ Ejercicios: Más de 50 ejercicios prácticos")
print("🎨 Visualización: ggplot2 y gráficos avanzados")
print("📊 Estadísticas: Desde básicas hasta avanzadas")
print("📝 R Markdown: Reportes reproducibles")
print("🚀 Proyectos: Casos de estudio reales")

print("\n¡Listo para comenzar tu aventura en RStudio! 🎉")
print("Para empezar, ve al módulo 1: 01-Introduccion/README.md")

# Limpiar workspace (opcional)
# rm(list = ls())  # Descomenta para limpiar variables