# 📊 Módulo 4: Visualización de Datos con ggplot2

<div align="center">

![ggplot2](../imagenes/ggplot2-logo.png)

**Crea visualizaciones impresionantes que cuenten historias con tus datos**

</div>

## 🎯 Objetivos del Módulo

Al finalizar este módulo serás capaz de:

- ✅ Entender la gramática de gráficos de ggplot2
- ✅ Crear gráficos de barras, líneas, dispersión y más
- ✅ Personalizar colores, temas y etiquetas
- ✅ Crear gráficos múltiples con facetas
- ✅ Exportar gráficos en alta calidad

## 📋 Contenido del Módulo

1. [Introducción a ggplot2](#introducción-a-ggplot2)
2. [La Gramática de Gráficos](#la-gramática-de-gráficos)
3. [Tipos de Gráficos Básicos](#tipos-de-gráficos-básicos)
4. [Personalización Avanzada](#personalización-avanzada)
5. [Ejercicios Prácticos](#ejercicios-prácticos)

## 🎨 Introducción a ggplot2

**ggplot2** es el paquete de visualización más popular de R, creado por Hadley Wickham. Se basa en la "Gramática de Gráficos" que te permite construir gráficos capa por capa.

### Instalación y Carga

```r
# Instalar ggplot2 (solo la primera vez)
install.packages("ggplot2")

# Cargar el paquete
library(ggplot2)

# O cargar todo el tidyverse
library(tidyverse)
```

## 🏗️ La Gramática de Gráficos

Un gráfico en ggplot2 se construye con estos elementos:

```r
ggplot(data = datos) +                    # 1. Datos
  aes(x = variable_x, y = variable_y) +   # 2. Estéticas (aesthetics)
  geom_point() +                          # 3. Geometrías
  scale_x_continuous() +                  # 4. Escalas
  coord_cartesian() +                     # 5. Sistema de coordenadas
  facet_wrap(~variable) +                 # 6. Facetas
  theme_minimal()                         # 7. Tema
```

### Estructura Básica

```r
# Plantilla básica
ggplot(data = <DATA>) + 
  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))
```

## 📈 Tipos de Gráficos Básicos

### 1. Gráfico de Dispersión (Scatter Plot)

```r
# Cargar datos de ejemplo
data(mtcars)

# Gráfico básico
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()

# Gráfico mejorado
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Relación entre Peso y Eficiencia",
       subtitle = "Datos de automóviles (mtcars)",
       x = "Peso (1000 lbs)",
       y = "Millas por Galón",
       color = "Cilindros") +
  theme_minimal()
```

### 2. Gráfico de Barras

```r
# Datos de ejemplo
ventas_mes <- data.frame(
  mes = c("Ene", "Feb", "Mar", "Abr", "May", "Jun"),
  ventas = c(23000, 25000, 22000, 27000, 30000, 28000)
)

# Gráfico de barras
ggplot(ventas_mes, aes(x = mes, y = ventas)) +
  geom_col(fill = "steelblue", alpha = 0.8) +
  geom_text(aes(label = scales::comma(ventas)), 
            vjust = -0.5, size = 3.5) +
  labs(title = "Ventas Mensuales 2024",
       x = "Mes",
       y = "Ventas (€)") +
  theme_minimal() +
  scale_y_continuous(labels = scales::comma_format())
```

### 3. Gráfico de Líneas

```r
# Datos de serie temporal
fechas <- seq(as.Date("2024-01-01"), as.Date("2024-06-30"), by = "day")
valores <- cumsum(rnorm(length(fechas), mean = 0.1, sd = 1))
serie_tiempo <- data.frame(fecha = fechas, valor = valores)

# Gráfico de líneas
ggplot(serie_tiempo, aes(x = fecha, y = valor)) +
  geom_line(color = "darkblue", size = 1) +
  geom_smooth(method = "loess", se = FALSE, color = "red") +
  labs(title = "Tendencia Temporal",
       subtitle = "Datos simulados con tendencia",
       x = "Fecha",
       y = "Valor") +
  theme_minimal() +
  scale_x_date(date_breaks = "1 month", date_labels = "%b")
```

### 4. Histograma

```r
# Histograma con datos normales
set.seed(123)
datos_normales <- rnorm(1000, mean = 50, sd = 10)

ggplot(data.frame(x = datos_normales), aes(x = x)) +
  geom_histogram(bins = 30, fill = "lightblue", 
                 color = "darkblue", alpha = 0.7) +
  geom_density(aes(y = ..density.. * 30 * 1000), 
               color = "red", size = 1) +
  labs(title = "Distribución de Datos",
       subtitle = "Histograma con curva de densidad",
       x = "Valores",
       y = "Frecuencia") +
  theme_minimal()
```

### 5. Boxplot

```r
# Boxplot por grupos
ggplot(mtcars, aes(x = factor(cyl), y = mpg, fill = factor(cyl))) +
  geom_boxplot(alpha = 0.7) +
  geom_jitter(width = 0.2, alpha = 0.5) +
  labs(title = "Distribución de MPG por Número de Cilindros",
       x = "Número de Cilindros",
       y = "Millas por Galón",
       fill = "Cilindros") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2")
```

## 🎨 Personalización Avanzada

### Colores y Paletas

```r
# Colores personalizados
mi_paleta <- c("#FF6B6B", "#4ECDC4", "#45B7D1", "#96CEB4", "#FFEAA7")

ggplot(mtcars, aes(x = factor(cyl), fill = factor(gear))) +
  geom_bar(position = "dodge") +
  scale_fill_manual(values = mi_paleta) +
  labs(title = "Gráfico con Paleta Personalizada") +
  theme_minimal()
```

### Temas Personalizados

```r
# Crear un tema personalizado
mi_tema <- theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    plot.subtitle = element_text(size = 12, hjust = 0.5),
    axis.title = element_text(size = 12, face = "bold"),
    axis.text = element_text(size = 10),
    legend.position = "bottom",
    panel.grid.minor = element_blank(),
    plot.background = element_rect(fill = "white", color = NA)
  )

# Aplicar el tema
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(size = 3, alpha = 0.7, color = "steelblue") +
  labs(title = "Mi Gráfico Personalizado",
       subtitle = "Con tema personalizado",
       x = "Peso", y = "MPG") +
  mi_tema
```

### Facetas (Múltiples Gráficos)

```r
# Facetas por filas
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  facet_wrap(~cyl, nrow = 1) +
  labs(title = "Relación Peso-MPG por Cilindros") +
  theme_minimal()

# Facetas en grid
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  facet_grid(vs ~ am, 
             labeller = labeller(vs = c("0" = "V-shaped", "1" = "Straight"),
                                am = c("0" = "Automatic", "1" = "Manual"))) +
  theme_minimal()
```

## 💾 Exportar Gráficos

```r
# Crear un gráfico
mi_grafico <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(size = 3) +
  theme_minimal()

# Guardar en diferentes formatos
ggsave("mi_grafico.png", mi_grafico, width = 10, height = 6, dpi = 300)
ggsave("mi_grafico.pdf", mi_grafico, width = 10, height = 6)
ggsave("mi_grafico.svg", mi_grafico, width = 10, height = 6)
```

## 🏋️ Ejercicios Prácticos

### Ejercicio 1: Análisis de Ventas

```r
# Cargar datos de ventas
ventas <- read.csv("../datasets/ventas.csv")

# 1. Gráfico de barras de ventas por producto
ggplot(ventas, aes(x = reorder(producto, ventas_mes), y = ventas_mes)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(title = "Ventas por Producto",
       x = "Producto", y = "Ventas del Mes") +
  theme_minimal()

# 2. Relación precio vs ventas
ggplot(ventas, aes(x = precio, y = ventas_mes)) +
  geom_point(size = 3, alpha = 0.7) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(title = "¿Afecta el Precio a las Ventas?",
       x = "Precio (€)", y = "Ventas del Mes") +
  theme_minimal()
```

### Ejercicio 2: Dashboard de Empleados

```r
# Cargar datos de empleados
empleados <- read.csv("../datasets/empleados.csv")

# Múltiples gráficos
library(gridExtra)

p1 <- ggplot(empleados, aes(x = departamento)) +
  geom_bar(fill = "lightblue") +
  theme_minimal() +
  labs(title = "Empleados por Departamento")

p2 <- ggplot(empleados, aes(x = edad)) +
  geom_histogram(bins = 10, fill = "lightgreen") +
  theme_minimal() +
  labs(title = "Distribución de Edades")

p3 <- ggplot(empleados, aes(x = departamento, y = salario)) +
  geom_boxplot(fill = "lightcoral") +
  theme_minimal() +
  labs(title = "Salarios por Departamento")

p4 <- ggplot(empleados, aes(x = edad, y = salario)) +
  geom_point(size = 2) +
  geom_smooth(method = "lm") +
  theme_minimal() +
  labs(title = "Edad vs Salario")

# Combinar gráficos
grid.arrange(p1, p2, p3, p4, nrow = 2)
```

## 🎯 Proyecto Final del Módulo

Crea un dashboard completo de análisis de datos usando ggplot2:

1. **Carga** los datasets del curso
2. **Explora** los datos con gráficos básicos
3. **Crea** visualizaciones que respondan preguntas específicas
4. **Personaliza** con colores y temas atractivos
5. **Exporta** los gráficos en alta calidad

## 📚 Recursos Adicionales

- [ggplot2 Cheat Sheet](https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf)
- [R Graphics Cookbook](https://r-graphics.org/)
- [ggplot2 Extensions Gallery](https://exts.ggplot2.tidyverse.org/)

## 🔄 Próximo Módulo

En el [Módulo 5: Estadísticas](../05-Estadisticas/README.md) aprenderás:
- Estadística descriptiva e inferencial
- Pruebas de hipótesis
- Correlaciones y regresiones
- Modelos estadísticos

---

<div align="center">

[⬅️ Módulo 3: Manipulación](../03-Manipulacion-Datos/README.md) | [➡️ Módulo 5: Estadísticas](../05-Estadisticas/README.md)

*¡Crea visualizaciones que impacten! 📊✨*

</div>