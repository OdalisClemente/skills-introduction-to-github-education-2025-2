# 🏋️ Ejercicios Prácticos del Curso RStudio

<div align="center">

![Ejercicios](../imagenes/ejercicios-banner.png)

**¡Practica y perfecciona tus habilidades con RStudio!**

</div>

Esta sección contiene ejercicios prácticos organizados por módulo y nivel de dificultad para reforzar tu aprendizaje.

## 📋 Índice de Ejercicios

### 🌱 Nivel Principiante
- [Módulo 1: Introducción](#módulo-1-introducción)
- [Módulo 2: Fundamentos](#módulo-2-fundamentos)
- [Módulo 3: Manipulación de Datos](#módulo-3-manipulación-de-datos)

### 🌿 Nivel Intermedio
- [Módulo 4: Visualización](#módulo-4-visualización)
- [Módulo 5: Estadísticas](#módulo-5-estadísticas)
- [Módulo 6: Programación](#módulo-6-programación)

### 🌳 Nivel Avanzado
- [Módulo 7: R Markdown](#módulo-7-r-markdown)
- [Módulo 8: Proyectos](#módulo-8-proyectos)

## 📚 Módulo 1: Introducción

### Ejercicio 1.1: Primera Calculadora
**Objetivo**: Crear una calculadora básica en R

```r
# Crea variables para dos números
numero1 <- ___
numero2 <- ___

# Realiza las operaciones básicas
suma <- ___
resta <- ___
multiplicacion <- ___
division <- ___

# Muestra los resultados
print(paste("La suma es:", suma))
# Completa para las demás operaciones...
```

**Solución**: [Ver solución](soluciones/ejercicio_1_1.R)

### Ejercicio 1.2: Análisis de Notas
**Objetivo**: Analizar las calificaciones de un estudiante

```r
# Vector de notas
notas <- c(8.5, 9.0, 7.8, 9.5, 8.2, 9.1, 8.7, 6.9, 9.3, 8.8)

# Calcula:
# 1. Promedio de notas
promedio <- ___

# 2. Nota más alta
nota_maxima <- ___

# 3. Nota más baja
nota_minima <- ___

# 4. ¿Cuántas notas están por encima del promedio?
notas_arriba_promedio <- ___

# 5. Crea un gráfico de barras con las notas
```

**Solución**: [Ver solución](soluciones/ejercicio_1_2.R)

### Ejercicio 1.3: Tu Perfil Personal
**Objetivo**: Crear un perfil personal con datos estructurados

```r
# Crea una lista con tu información personal
mi_perfil <- list(
  nombre = "___",
  edad = ___,
  ciudad = "___",
  profesion = "___",
  hobbies = c("___", "___", "___"),
  experiencia_r = ___ # años
)

# Función para mostrar perfil
mostrar_perfil <- function(perfil) {
  # Completa esta función para mostrar la información de forma atractiva
}

# Usar la función
mostrar_perfil(mi_perfil)
```

**Solución**: [Ver solución](soluciones/ejercicio_1_3.R)

## 📊 Módulo 4: Visualización

### Ejercicio 4.1: Dashboard de Ventas
**Objetivo**: Crear un dashboard con múltiples gráficos

```r
library(ggplot2)
library(gridExtra)

# Cargar datos
ventas <- read.csv("../datasets/ventas.csv")

# 1. Gráfico de barras: Ventas por producto
p1 <- ggplot(ventas, aes(x = reorder(___), y = ___)) +
  geom_col(fill = "___") +
  coord_flip() +
  labs(title = "___")

# 2. Gráfico de dispersión: Precio vs Ventas
p2 <- ggplot(ventas, aes(x = ___, y = ___)) +
  geom_point(size = 3, alpha = 0.7, color = "___") +
  geom_smooth(method = "___") +
  labs(title = "___")

# 3. Histograma: Distribución de precios
p3 <- ggplot(ventas, aes(x = ___)) +
  geom_histogram(bins = ___, fill = "___", alpha = 0.7) +
  labs(title = "___")

# 4. Gráfico de caja: Stock por categoría
p4 <- ggplot(ventas, aes(x = ___, y = ___)) +
  geom_boxplot(fill = "___") +
  labs(title = "___")

# Combinar todos los gráficos
grid.arrange(p1, p2, p3, p4, nrow = 2)
```

**Solución**: [Ver solución](soluciones/ejercicio_4_1.R)

### Ejercicio 4.2: Gráfico Interactivo
**Objetivo**: Crear un gráfico interactivo con plotly

```r
library(plotly)

# Cargar datos de empleados
empleados <- read.csv("../datasets/empleados.csv")

# Crear gráfico interactivo
p <- ggplot(empleados, aes(x = edad, y = salario, 
                          color = departamento,
                          text = paste("Nombre:", nombre))) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Edad vs Salario por Departamento",
       x = "Edad (años)",
       y = "Salario (€)") +
  theme_minimal()

# Convertir a plotly
ggplotly(p, tooltip = "text")
```

**Solución**: [Ver solución](soluciones/ejercicio_4_2.R)

## 🧮 Módulo 5: Estadísticas

### Ejercicio 5.1: Análisis Exploratorio
**Objetivo**: Realizar un análisis estadístico completo

```r
# Cargar datos
empleados <- read.csv("../datasets/empleados.csv")

# 1. Estadísticas descriptivas por departamento
estadisticas_dept <- empleados %>%
  group_by(___) %>%
  summarise(
    n = ___,
    salario_promedio = ___,
    salario_mediana = ___,
    salario_sd = ___,
    edad_promedio = ___
  )

# 2. Prueba t: ¿Difieren los salarios entre IT y Marketing?
it_salarios <- empleados$salario[empleados$departamento == "___"]
marketing_salarios <- empleados$salario[empleados$departamento == "___"]

t_test_resultado <- t.test(___, ___)

# 3. Correlación entre edad y salario
correlacion <- cor(___, ___)

# 4. Modelo de regresión lineal
modelo <- lm(___ ~ ___, data = empleados)
summary(modelo)
```

**Solución**: [Ver solución](soluciones/ejercicio_5_1.R)

## 🚀 Proyectos Desafiantes

### Proyecto 1: Análisis Completo de Ventas
**Nivel**: Intermedio
**Tiempo estimado**: 2-3 horas
**Objetivo**: Crear un análisis completo con visualizaciones y estadísticas

**Requisitos**:
1. Cargar y limpiar datos
2. Análisis exploratorio de datos (EDA)
3. 5 visualizaciones diferentes
4. Análisis estadístico
5. Conclusiones y recomendaciones
6. Reporte en R Markdown

**Plantilla**: [proyecto_ventas.Rmd](proyectos/proyecto_ventas.Rmd)

### Proyecto 2: Dashboard Interactivo
**Nivel**: Avanzado
**Tiempo estimado**: 4-5 horas
**Objetivo**: Crear un dashboard interactivo con Shiny

**Requisitos**:
1. Interfaz de usuario atractiva
2. Filtros interactivos
3. Múltiples tipos de gráficos
4. Tablas dinámicas
5. Descarga de reportes

**Plantilla**: [dashboard_shiny/](proyectos/dashboard_shiny/)

## ✅ Soluciones y Explicaciones

Todas las soluciones están disponibles en la carpeta [soluciones/](soluciones/) con explicaciones detalladas de cada paso.

### Cómo Usar las Soluciones
1. **Intenta primero** resolver el ejercicio por tu cuenta
2. **Compara** tu solución con la proporcionada
3. **Lee las explicaciones** para entender diferentes enfoques
4. **Experimenta** con variaciones del código

## 🎯 Sistema de Puntuación

### Badges de Progreso
- 🥉 **Principiante**: Completa ejercicios del Módulo 1-3
- 🥈 **Intermedio**: Completa ejercicios del Módulo 4-6
- 🥇 **Avanzado**: Completa ejercicios del Módulo 7-8
- 🏆 **Experto**: Completa todos los proyectos desafiantes

### Autoevaluación
```r
# Script para verificar tu progreso
source("scripts/verificar_progreso.R")
mi_progreso <- verificar_ejercicios_completados()
print(mi_progreso)
```

## 💡 Tips para Resolver Ejercicios

### Estrategia General
1. **Lee todo** el ejercicio antes de empezar
2. **Divide** el problema en pasos pequeños
3. **Busca ejemplos** similares en el material del curso
4. **Experimenta** con el código
5. **No temas pedir ayuda** en las discusiones

### Recursos de Ayuda
- 📚 **Documentación**: `?funcion_name`
- 🔍 **Ejemplos**: `example(funcion_name)`
- 💬 **Comunidad**: [GitHub Discussions](../../discussions)
- 📖 **Material del curso**: Revisa los módulos relacionados

### Debugging
```r
# Herramientas útiles para depurar
str(mi_objeto)          # Estructura del objeto
head(mis_datos)         # Primeras filas
summary(mis_datos)      # Resumen estadístico
class(mi_variable)      # Tipo de dato
is.na(mis_datos)        # Valores faltantes
```

## 🔄 Ejercicios Adicionales

### Datasets Externos
Para más práctica, puedes usar estos datasets:
- [Kaggle Learn](https://www.kaggle.com/learn) - Datasets educativos
- [FiveThirtyEight](https://github.com/fivethirtyeight/data) - Datos reales
- [UCI ML Repository](https://archive.ics.uci.edu/ml/) - Datasets clásicos

### Desafíos Semanales
Cada semana publicamos nuevos desafíos en:
- [Issues del repositorio](../../issues) con label "desafío"
- [Twitter #RStudioCurso](https://twitter.com/hashtag/RStudioCurso)

---

<div align="center">

**¡La práctica hace al maestro! 💪**

[🏠 Volver al Curso](../README.md) | [💬 Discusiones](../../discussions) | [🐛 Reportar Problema](../../issues)

*Cada ejercicio completado te acerca más a ser un experto en RStudio* 🎯

</div>