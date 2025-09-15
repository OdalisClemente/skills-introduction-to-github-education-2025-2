# 🤝 Guía de Contribución

¡Gracias por tu interés en contribuir al curso de RStudio! Tu participación es valiosa para hacer este curso mejor para toda la comunidad.

## 🎯 Formas de Contribuir

### 📝 Contenido Educativo
- **Corregir errores** en el código o documentación
- **Agregar ejemplos** adicionales o casos de uso
- **Mejorar explicaciones** para hacerlas más claras
- **Traducir contenido** a otros idiomas
- **Crear ejercicios** nuevos y desafiantes

### 🐛 Reportes de Errores
- **Errores en el código** que no funciona como se espera
- **Enlaces rotos** o recursos no disponibles
- **Problemas de formato** en la documentación
- **Datos incorrectos** en los datasets

### 💡 Sugerencias y Mejoras
- **Nuevos módulos** o temas a cubrir
- **Herramientas adicionales** relevantes
- **Mejoras en la estructura** del curso
- **Recursos útiles** para agregar

### 🎨 Diseño y Presentación
- **Mejorar el diseño** visual del README
- **Agregar imágenes** o diagramas explicativos
- **Crear infografías** para conceptos complejos
- **Optimizar la navegación** entre módulos

## 🚀 Cómo Comenzar

### 1. Fork del Repositorio
```bash
# Clonar tu fork
git clone https://github.com/TU_USUARIO/skills-introduction-to-github-education-2025-2.git
cd skills-introduction-to-github-education-2025-2
```

### 2. Crear una Rama
```bash
# Crear rama para tu contribución
git checkout -b feature/nombre-descriptivo
# o
git checkout -b fix/descripcion-del-bug
```

### 3. Hacer Cambios
- Realiza tus modificaciones siguiendo las [mejores prácticas](#mejores-prácticas)
- Asegúrate de que el código funcione correctamente
- Documenta los cambios importantes

### 4. Probar Cambios
```r
# Probar scripts de R
source("01-Introduccion/ejercicios_modulo1.R")

# Verificar datasets
empleados <- read.csv("datasets/empleados.csv")
head(empleados)
```

### 5. Commit y Push
```bash
# Agregar cambios
git add .

# Commit descriptivo
git commit -m "Tipo: descripción breve

Descripción más detallada si es necesario
- Cambio específico 1
- Cambio específico 2"

# Push a tu fork
git push origin feature/nombre-descriptivo
```

### 6. Pull Request
1. Ve a GitHub y crea un Pull Request
2. Usa una descripción clara del cambio
3. Menciona cualquier issue relacionado
4. Espera el review y feedback

## 📋 Tipos de Commits

Usa estos prefijos para commits claros:

- `feat:` Nueva funcionalidad o contenido
- `fix:` Corrección de errores
- `docs:` Cambios en documentación
- `style:` Cambios de formato (no afectan funcionalidad)
- `refactor:` Reestructuración de código
- `test:` Agregar o modificar tests
- `data:` Cambios en datasets

**Ejemplos:**
```bash
git commit -m "feat: agregar módulo de machine learning"
git commit -m "fix: corregir error en cálculo de promedio"
git commit -m "docs: mejorar explicación de ggplot2"
git commit -m "data: actualizar dataset de empleados"
```

## ✅ Mejores Prácticas

### Para Código R
```r
# ✅ Bueno: código claro y comentado
calcular_promedio <- function(numeros) {
  # Verificar que los datos sean numéricos
  if (!is.numeric(numeros)) {
    stop("Los datos deben ser numéricos")
  }
  
  # Calcular y retornar promedio
  return(mean(numeros, na.rm = TRUE))
}

# ❌ Malo: código sin comentarios ni validación
calc_prom <- function(x) { mean(x) }
```

### Para Documentación
- Usa **markdown** estándar
- Incluye **ejemplos de código** ejecutables
- Mantén **consistencia** en el formato
- Usa **emojis** moderadamente para mejorar legibilidad
- Estructura el contenido con **headers** claros

### Para Datasets
```r
# ✅ Bueno: datos limpios y documentados
empleados <- data.frame(
  nombre = c("Ana García", "Carlos López"),
  edad = c(28, 35),
  salario = c(45000, 52000),
  stringsAsFactors = FALSE
)

# Documentar columnas en README
# nombre: Nombre completo del empleado
# edad: Edad en años
# salario: Salario anual en euros
```

## 🎓 Estándares de Calidad

### Contenido Educativo
- **Progresión lógica**: De simple a complejo
- **Ejemplos prácticos**: Casos reales y relevantes
- **Ejercicios graduales**: Diferentes niveles de dificultad
- **Explicaciones claras**: Lenguaje accesible
- **Referencias**: Enlaces a recursos adicionales

### Código
- **Funciona correctamente**: Probado en RStudio
- **Bien comentado**: Explicaciones de lógica compleja
- **Estilo consistente**: Siguiendo convenciones de R
- **Eficiente**: Evitar código innecesariamente complejo

### Documentación
- **Sin errores ortográficos**: Revisa antes de enviar
- **Enlaces funcionales**: Verifica que no estén rotos
- **Formato consistente**: Sigue el estilo del resto del curso
- **Navegación clara**: Enlaces entre módulos

## 🐛 Reportar Issues

### Información a Incluir
```markdown
## Descripción del Problema
Descripción clara y concisa del issue.

## Pasos para Reproducir
1. Ve a '...'
2. Ejecuta '...'
3. Ve el error '...'

## Comportamiento Esperado
Lo que esperabas que pasara.

## Comportamiento Actual
Lo que realmente está pasando.

## Información del Sistema
- OS: [ej. Windows 10, macOS Big Sur]
- R version: [ej. 4.3.0]
- RStudio version: [ej. 2023.06.1]

## Información Adicional
Cualquier otro contexto o capturas de pantalla.
```

## 🎨 Directrices de Diseño

### Estructura de Archivos
```
modulo/
├── README.md           # Contenido principal
├── ejercicios.R        # Scripts ejecutables
├── imagenes/           # Recursos visuales
├── datos_ejemplos/     # Datos específicos del módulo
└── recursos/           # Material adicional
```

### Formato de README
```markdown
# 📊 Título del Módulo

## 🎯 Objetivos
- Lista de objetivos claros

## 📋 Contenido
1. [Tema 1](#tema-1)
2. [Tema 2](#tema-2)

## Tema 1
Contenido explicativo...

```r
# Código de ejemplo
ejemplo <- "código aquí"
```

## 🏋️ Ejercicios
Ejercicios prácticos...

## 🔄 Próximo Módulo
Enlaces a siguiente módulo...
```

## 🌟 Reconocimiento

### Hall of Fame
Los contribuidores destacados serán reconocidos en:
- **README principal** del curso
- **Sección de agradecimientos**
- **Releases notes** de nuevas versiones

### Badges de Contribución
- 🥇 **Contributor Gold**: 10+ contribuciones significativas
- 🥈 **Contributor Silver**: 5+ contribuciones
- 🥉 **Contributor Bronze**: Primera contribución

## 💬 Comunicación

### Donde Obtener Ayuda
- **GitHub Discussions**: Para preguntas generales
- **GitHub Issues**: Para bugs y sugerencias específicas
- **Email**: curso.rstudio@example.com

### Código de Conducta
- **Sé respetuoso** con otros contribuidores
- **Proporciona feedback constructivo**
- **Mantén las discusiones enfocadas** en el tema
- **Celebra las contribuciones** de otros

## 🏆 Proceso de Review

### Qué Esperamos
1. **Funcionalidad**: El código funciona como se describe
2. **Calidad**: Sigue las mejores prácticas
3. **Documentación**: Cambios bien documentados
4. **Pruebas**: Verificación de que funciona

### Timeline
- **Review inicial**: 2-3 días laborables
- **Feedback**: Respuestas en 1-2 días
- **Merge**: Después de approval y tests pasados

## 🚀 Contribuciones Especiales

### Nuevos Módulos
Para contribuir un módulo completo:
1. **Abre un issue** describiendo el módulo propuesto
2. **Discute el alcance** con los mantenedores
3. **Crea un outline** detallado
4. **Implementa por secciones** con PRs separados

### Traduciones
Para traducciones:
1. **Crea carpeta** `idioma/` (ej. `english/`, `french/`)
2. **Traduce módulo por módulo**
3. **Mantén la estructura** original
4. **Actualiza enlaces** internos

---

<div align="center">

**¡Gracias por hacer este curso mejor para todos! 🙏**

[🏠 Volver al Curso](README.md) | [📧 Contacto](mailto:curso.rstudio@example.com)

*Juntos construimos conocimiento* 🤝

</div>