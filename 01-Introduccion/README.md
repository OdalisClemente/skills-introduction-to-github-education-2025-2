# 🎯 Módulo 1: Introducción a RStudio

<div align="center">

![Bienvenida](../imagenes/welcome-rstudio.png)

**¡Bienvenido al mundo del análisis de datos con RStudio!**

</div>

## 📋 Contenido del Módulo

1. [¿Qué es R y RStudio?](#qué-es-r-y-rstudio)
2. [Instalación y Configuración](#instalación-y-configuración)
3. [Primer Vistazo a RStudio](#primer-vistazo-a-rstudio)
4. [Tu Primera Sesión en R](#tu-primera-sesión-en-r)
5. [Ejercicios Prácticos](#ejercicios-prácticos)

## 🤔 ¿Qué es R y RStudio?

### R: El Lenguaje de la Estadística

**R** es un lenguaje de programación y un entorno de software libre para computación estadística y gráficos. Fue desarrollado por Ross Ihaka y Robert Gentleman en la Universidad de Auckland, Nueva Zelanda.

#### ⭐ Características principales de R:
- 📊 **Análisis estadístico avanzado**
- 📈 **Visualización de datos potente**
- 🔧 **Extensible mediante paquetes**
- 🆓 **Completamente gratuito y open source**
- 🌍 **Comunidad global activa**

### RStudio: Tu IDE Favorito

**RStudio** es un entorno de desarrollo integrado (IDE) para R. Hace que trabajar con R sea mucho más fácil y productivo.

#### ✨ Ventajas de RStudio:
- 🖥️ **Interfaz intuitiva y amigable**
- 📝 **Editor de código con resaltado de sintaxis**
- 📊 **Visualización integrada de gráficos**
- 📁 **Gestión de proyectos**
- 🔍 **Debugging avanzado**

## 🛠️ Instalación y Configuración

### Paso 1: Instalar R

1. Ve a [https://cran.r-project.org/](https://cran.r-project.org/)
2. Selecciona tu sistema operativo:
   - **Windows**: Clic en "Download R for Windows"
   - **macOS**: Clic en "Download R for macOS"
   - **Linux**: Clic en "Download R for Linux"
3. Descarga la versión más reciente
4. Ejecuta el instalador y sigue las instrucciones

### Paso 2: Instalar RStudio

1. Ve a [https://rstudio.com/products/rstudio/download/](https://rstudio.com/products/rstudio/download/)
2. Descarga **RStudio Desktop** (versión gratuita)
3. Ejecuta el instalador
4. ¡Listo! Ya tienes RStudio instalado

### Verificación de Instalación

Abre RStudio y ejecuta este comando en la consola:

```r
# Verificar versión de R
R.version.string

# Verificar que RStudio funciona
print("¡Hola, mundo desde RStudio!")
```

## 🖥️ Primer Vistazo a RStudio

RStudio tiene 4 paneles principales:

```
┌─────────────────┬─────────────────┐
│                 │                 │
│   1. EDITOR     │   2. AMBIENTE   │
│   (Scripts)     │   (Variables)   │
│                 │                 │
├─────────────────┼─────────────────┤
│                 │                 │
│   3. CONSOLA    │   4. ARCHIVOS   │
│   (Resultados)  │   (Navegador)   │
│                 │                 │
└─────────────────┴─────────────────┘
```

### 1. 📝 Panel del Editor
- Donde escribes tus scripts de R
- Resaltado de sintaxis
- Autocompletado

### 2. 🌍 Panel del Ambiente
- Variables y objetos en memoria
- Historial de comandos
- Conexiones a bases de datos

### 3. 💻 Panel de la Consola
- Donde se ejecutan los comandos
- Resultados y mensajes
- Terminal del sistema

### 4. 📁 Panel de Archivos
- Explorador de archivos
- Gráficos generados
- Paquetes instalados
- Ayuda y documentación

## 🎮 Tu Primera Sesión en R

¡Vamos a probar RStudio! Ejecuta estos comandos uno por uno:

### Operaciones Básicas

```r
# Matemáticas básicas
2 + 2
10 * 5
15 / 3

# Crear variables
mi_nombre <- "Tu Nombre Aquí"
mi_edad <- 25
mi_altura <- 1.75

# Mostrar variables
print(mi_nombre)
print(mi_edad)
print(mi_altura)
```

### Vectores y Listas

```r
# Crear un vector de números
numeros <- c(1, 2, 3, 4, 5)
print(numeros)

# Crear un vector de nombres
frutas <- c("manzana", "banana", "naranja")
print(frutas)

# Operaciones con vectores
numeros * 2
sum(numeros)
mean(numeros)
```

### Tu Primer Gráfico

```r
# Datos para el gráfico
x <- 1:10
y <- x^2

# Crear el gráfico
plot(x, y, 
     type = "b",           # línea con puntos
     col = "blue",         # color azul
     main = "Mi Primer Gráfico en R",
     xlab = "Valores X",
     ylab = "Valores Y")
```

## 🏋️ Ejercicios Prácticos

### Ejercicio 1: Presentación Personal
Crea variables con tu información personal y muéstralas:

```r
# Completa con tu información
mi_nombre <- "___"
mi_edad <- ___
mi_ciudad <- "___"
mi_profesion <- "___"

# Crea un mensaje de presentación
presentacion <- paste("Hola, soy", mi_nombre, 
                     "tengo", mi_edad, "años,", 
                     "vivo en", mi_ciudad,
                     "y soy", mi_profesion)
print(presentacion)
```

### Ejercicio 2: Calculadora Básica
Crea una calculadora que haga las 4 operaciones básicas:

```r
# Define dos números
numero1 <- 15
numero2 <- 3

# Realiza las operaciones
suma <- numero1 + numero2
resta <- numero1 - numero2
multiplicacion <- numero1 * numero2
division <- numero1 / numero2

# Muestra los resultados
print(paste("Suma:", suma))
print(paste("Resta:", resta))
print(paste("Multiplicación:", multiplicacion))
print(paste("División:", division))
```

### Ejercicio 3: Análisis de Datos Simples
Analiza las notas de un estudiante:

```r
# Notas del estudiante
notas <- c(8.5, 9.0, 7.8, 9.5, 8.2, 9.1, 8.7)

# Calcula estadísticas básicas
promedio <- mean(notas)
nota_maxima <- max(notas)
nota_minima <- min(notas)
total_examenes <- length(notas)

# Muestra los resultados
print(paste("Promedio:", round(promedio, 2)))
print(paste("Nota máxima:", nota_maxima))
print(paste("Nota mínima:", nota_minima))
print(paste("Total de exámenes:", total_examenes))

# Crea un gráfico de las notas
barplot(notas, 
        main = "Notas del Estudiante",
        xlab = "Exámenes",
        ylab = "Calificaciones",
        col = "lightblue",
        names.arg = paste("Examen", 1:length(notas)))
```

## 🎯 Resumen del Módulo

En este módulo has aprendido:

- ✅ Qué son R y RStudio
- ✅ Cómo instalar y configurar el entorno
- ✅ Los 4 paneles principales de RStudio
- ✅ Operaciones básicas en R
- ✅ Crear variables y vectores
- ✅ Hacer tu primer gráfico
- ✅ Ejercicios prácticos

## 🎉 ¡Felicitaciones!

Has completado el primer módulo del curso. Ya tienes las bases para comenzar tu aventura en el análisis de datos con RStudio.

## 🔄 Próximo Módulo

En el [Módulo 2: Fundamentos de R](../02-Fundamentos-R/README.md) aprenderás:
- Tipos de datos en R
- Estructuras de datos
- Operadores y funciones
- Control de flujo básico

---

<div align="center">

[⬅️ Inicio del Curso](../README.md) | [➡️ Módulo 2: Fundamentos](../02-Fundamentos-R/README.md)

*¿Preguntas? ¡Usa las [GitHub Discussions](../../discussions)!*

</div>