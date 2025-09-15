# 📚 Recursos para el Curso de RStudio

Esta sección contiene recursos adicionales, referencias y material complementario para profundizar en tu aprendizaje de RStudio y Data Science.

## 🔗 Enlaces Oficiales

### R y RStudio
- [Sitio Oficial de R](https://www.r-project.org/) - Página principal del proyecto R
- [RStudio](https://rstudio.com/) - IDE oficial para R
- [CRAN](https://cran.r-project.org/) - Repositorio oficial de paquetes de R
- [RStudio Cheat Sheets](https://rstudio.com/resources/cheatsheets/) - Hojas de referencia rápida

### Documentación y Manuales
- [R Manual](https://cran.r-project.org/doc/manuals/r-release/R-intro.html) - Manual oficial de introducción a R
- [Advanced R](https://adv-r.hadley.nz/) - Libro avanzado de Hadley Wickham
- [R for Data Science](https://r4ds.had.co.nz/) - Libro esencial para Data Science

## 📖 Libros Recomendados

### Para Principiantes
1. **"R for Everyone"** - Jared Lander
   - Excelente introducción para principiantes
   - Ejemplos prácticos y claros

2. **"Learning R"** - Richard Cotton
   - Paso a paso desde lo básico
   - Enfoque didáctico

3. **"Hands-On Programming with R"** - Garrett Grolemund
   - Aprende programación con proyectos reales
   - Muy práctico

### Para Nivel Intermedio
1. **"R Graphics Cookbook"** - Winston Chang
   - Todo sobre visualización de datos
   - Recetas paso a paso para gráficos

2. **"The Art of R Programming"** - Norman Matloff
   - Técnicas avanzadas de programación
   - Optimización y mejores prácticas

### Para Nivel Avanzado
1. **"Advanced R"** - Hadley Wickham
   - Programación avanzada en R
   - Desarrollo de paquetes

2. **"R Packages"** - Hadley Wickham
   - Cómo crear tus propios paquetes
   - Workflow de desarrollo

## 🎓 Cursos Online Recomendados

### Gratuitos
- [Coursera - R Programming](https://www.coursera.org/learn/r-programming)
- [edX - Introduction to R](https://www.edx.org/course/introduction-to-r)
- [DataCamp - Free Introduction to R](https://www.datacamp.com/courses/free-introduction-to-r)
- [Swirl](https://swirlstats.com/) - Aprende R interactivamente

### De Pago (con certificación)
- [DataCamp - R Track](https://www.datacamp.com/tracks/r-programmer)
- [Pluralsight - R Path](https://www.pluralsight.com/paths/r)
- [Udemy - Complete R Course](https://www.udemy.com/topic/r-programming-language/)

## 🛠️ Herramientas Complementarias

### Paquetes Esenciales

#### Manipulación de Datos
```r
install.packages(c(
  "dplyr",      # Manipulación de datos
  "tidyr",      # Limpieza de datos
  "readr",      # Lectura de archivos
  "stringr",    # Manipulación de strings
  "lubridate"   # Fechas y tiempo
))
```

#### Visualización
```r
install.packages(c(
  "ggplot2",    # Gráficos estáticos
  "plotly",     # Gráficos interactivos
  "ggthemes",   # Temas adicionales
  "gridExtra",  # Múltiples gráficos
  "RColorBrewer" # Paletas de colores
))
```

#### Análisis Estadístico
```r
install.packages(c(
  "psych",      # Estadística descriptiva
  "corrplot",   # Matriz de correlaciones
  "car",        # Regresión avanzada
  "lmtest",     # Tests estadísticos
  "broom"       # Resultados ordenados
))
```

#### Reportes y Documentos
```r
install.packages(c(
  "rmarkdown",  # Documentos reproducibles
  "knitr",      # Integración código-texto
  "DT",         # Tablas interactivas
  "flexdashboard", # Dashboards
  "bookdown"    # Libros y documentos largos
))
```

### Editores Alternativos
- [Visual Studio Code](https://code.visualstudio.com/) con extensión R
- [Sublime Text](https://www.sublimetext.com/) con paquete R
- [Vim](https://www.vim.org/) con Nvim-R
- [Emacs](https://www.gnu.org/software/emacs/) con ESS

## 🌐 Comunidades y Foros

### Foros de Ayuda
- [Stack Overflow - R tag](https://stackoverflow.com/questions/tagged/r)
- [RStudio Community](https://community.rstudio.com/)
- [Reddit - r/Rlanguage](https://www.reddit.com/r/Rlanguage/)
- [Cross Validated](https://stats.stackexchange.com/) - Para estadística

### Redes Sociales
- [R-bloggers](https://www.r-bloggers.com/) - Blog agregador
- [Twitter #rstats](https://twitter.com/hashtag/rstats) - Comunidad activa
- [LinkedIn R Groups](https://www.linkedin.com/groups/77616/) - Networking profesional

### Newsletters
- [R Weekly](https://rweekly.org/) - Noticias semanales
- [Data Elixir](https://dataelixir.com/) - Data science en general

## 📊 Datasets para Práctica

### Datasets Integrados en R
```r
# Ver todos los datasets disponibles
data()

# Datasets populares para práctica
data(mtcars)    # Datos de automóviles
data(iris)      # Datos de flores
data(diamonds)  # Datos de diamantes (ggplot2)
data(mpg)       # Datos de eficiencia de combustible
```

### Repositorios de Datos
- [Kaggle](https://www.kaggle.com/datasets) - Competencias y datasets
- [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/)
- [Google Dataset Search](https://datasetsearch.research.google.com/)
- [Our World in Data](https://ourworldindata.org/) - Datos socioeconómicos
- [Datos.gob.es](https://datos.gob.es/) - Datos abiertos del gobierno español

### APIs para Datos en Tiempo Real
```r
# Paquetes para APIs
install.packages(c(
  "jsonlite",   # JSON
  "httr",       # HTTP requests
  "rvest",      # Web scraping
  "tidyquant"   # Datos financieros
))
```

## 🎯 Proyectos de Práctica

### Proyectos para Principiantes
1. **Análisis Personal**: Analiza tus propios datos (gastos, ejercicio, etc.)
2. **Análisis Deportivo**: Estadísticas de tu equipo favorito
3. **Clima Local**: Datos meteorológicos de tu ciudad
4. **Ventas Ficticias**: Crear y analizar datos de ventas simulados

### Proyectos Intermedios
1. **Dashboard Interactivo**: Con Shiny
2. **Análisis de Sentimientos**: Twitter o reseñas
3. **Predicción de Precios**: Inmobiliarios o acciones
4. **Análisis de Redes Sociales**: Patrones de interacción

### Proyectos Avanzados
1. **Machine Learning**: Modelos predictivos
2. **Time Series**: Análisis de series temporales
3. **Aplicación Web**: Shiny completa
4. **Paquete R**: Crear tu propio paquete

## 💡 Tips y Mejores Prácticas

### Organización de Proyectos
```
mi_proyecto/
├── data/           # Datos crudos
├── data_clean/     # Datos procesados
├── scripts/        # Scripts de R
├── outputs/        # Resultados y gráficos
├── docs/           # Documentación
└── README.md       # Descripción del proyecto
```

### Estilo de Código
- Usar [styler](https://styler.r-lib.org/) para formateo automático
- Seguir [Tidyverse Style Guide](https://style.tidyverse.org/)
- Comentar el código abundantemente
- Usar nombres descriptivos para variables

### Control de Versiones
```bash
# Configurar Git para R
git config --global user.name "Tu Nombre"
git config --global user.email "tu.email@ejemplo.com"

# Inicializar repositorio
git init
git add .
git commit -m "Primer commit"
```

## 🔧 Solución de Problemas Comunes

### Problemas de Instalación
```r
# Limpiar y reinstalar paquetes
remove.packages("nombre_paquete")
install.packages("nombre_paquete", dependencies = TRUE)

# Verificar configuración
sessionInfo()
```

### Problemas de Memoria
```r
# Liberar memoria
rm(list = ls())  # Limpiar workspace
gc()             # Garbage collection

# Verificar uso de memoria
object.size(mi_objeto)
memory.size()    # Solo Windows
```

### Encoding de Caracteres
```r
# Para caracteres especiales (ñ, acentos)
read.csv("archivo.csv", encoding = "UTF-8")
Sys.setlocale("LC_CTYPE", "Spanish")
```

## 🎓 Certificaciones

### Oficiales
- [RStudio Certified Instructor](https://education.rstudio.com/trainers/)
- [Microsoft Azure Data Scientist](https://docs.microsoft.com/en-us/learn/certifications/azure-data-scientist/)

### MOOCs con Certificado
- [Coursera - Data Science Specialization](https://www.coursera.org/specializations/jhu-data-science)
- [edX - Data Science MicroMasters](https://www.edx.org/micromasters/mitx-statistics-and-data-science)

## 🔄 Mantente Actualizado

### Blogs y Sitios Web
- [R-bloggers](https://www.r-bloggers.com/)
- [Simply Statistics](https://simplystatistics.org/)
- [RStudio Blog](https://blog.rstudio.com/)
- [Revolution Analytics](https://blog.revolutionanalytics.com/)

### Conferencias
- [useR!](https://www.r-project.org/conferences/) - Conferencia anual de R
- [rstudio::conf](https://www.rstudio.com/conference/) - Conferencia de RStudio
- [satRday](https://satrdays.org/) - Conferencias locales

---

<div align="center">

**¿Encontraste un recurso útil que no está aquí? ¡Compártelo en [GitHub Issues](../../issues)!**

[🏠 Volver al Inicio](../README.md)

*Actualizado regularmente por la comunidad* 🔄

</div>