# 📊 Datasets para el Curso de RStudio

Esta carpeta contiene conjuntos de datos especialmente diseñados para el aprendizaje de RStudio y análisis de datos.

## 📁 Datasets Disponibles

### 👥 empleados.csv
**Descripción**: Información de empleados de una empresa ficticia.

**Columnas**:
- `nombre`: Nombre completo del empleado
- `edad`: Edad en años
- `ciudad`: Ciudad de residencia
- `salario`: Salario anual en euros
- `departamento`: Departamento de trabajo

**Uso recomendado**: 
- Análisis estadístico descriptivo
- Visualización de datos categóricos
- Análisis de correlaciones
- Agrupaciones y filtros

### 🛒 ventas.csv
**Descripción**: Datos de ventas de productos electrónicos.

**Columnas**:
- `producto`: Nombre del producto
- `categoria`: Categoría del producto
- `precio`: Precio unitario en euros
- `ventas_mes`: Cantidad vendida en el mes
- `stock`: Cantidad en inventario

**Uso recomendado**:
- Análisis de tendencias de ventas
- Gráficos de barras y dispersión
- Cálculos de revenue y métricas
- Análisis de inventario

## 🎯 Ejercicios Sugeridos

### Con empleados.csv:
```r
# Cargar datos
empleados <- read.csv("datasets/empleados.csv")

# Estadísticas básicas
summary(empleados)

# Salario promedio por departamento
aggregate(salario ~ departamento, data = empleados, mean)

# Gráfico de edades
hist(empleados$edad, main = "Distribución de Edades")
```

### Con ventas.csv:
```r
# Cargar datos
ventas <- read.csv("datasets/ventas.csv")

# Top 5 productos más vendidos
head(ventas[order(-ventas$ventas_mes), ], 5)

# Revenue total por producto
ventas$revenue <- ventas$precio * ventas$ventas_mes

# Gráfico de ventas vs precio
plot(ventas$precio, ventas$ventas_mes,
     main = "Precio vs Ventas",
     xlab = "Precio (€)",
     ylab = "Ventas del Mes")
```

## 📝 Notas Importantes

- Todos los datos son ficticios y creados únicamente para fines educativos
- Los archivos están en formato CSV con separador de comas
- Usa encoding UTF-8 para caracteres especiales
- Siempre explora los datos antes de analizarlos con `head()`, `str()`, `summary()`

## 🔄 Próximos Datasets

En futuras actualizaciones del curso agregaremos:
- 📈 Datos de series temporales
- 🌍 Datos geográficos
- 📱 Datos de redes sociales
- 🏥 Datos de salud (anonimizados)
- 🎓 Datos educativos

---

*¿Tienes sugerencias para nuevos datasets? ¡Abre un [issue](../../issues) en el repositorio!*