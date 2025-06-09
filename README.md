# 🧰 Toolkit de Administración Jr.

Este proyecto forma parte del trabajo práctico integrador del módulo **Sistemas Operativos** de la Tecnicatura Superior en Desarrollo de Software (ISPC).

---

## Objetivo

Desarrollar un toolkit basado en scripts de Bash para facilitar tareas básicas de administración en sistemas operativos Linux (Ubuntu/Debian), enfocado en esta etapa en la **gestión de procesos, memoria y disco**.

---

##  Estructura del Proyecto

```
├── main_toolkit.sh # Menú principal del toolkit
├── procesos.sh # Módulo de gestión de procesos
├── memoria.sh # Módulo de gestión de memoria
├── disco.sh # Módulo de gestión de disco/archivos
└── README.md # Manual de usuario
```

---

## Requisitos

Sistema operativo Linux (Ubuntu/Debian)
- Bash Shell
- Terminal con soporte de lectura estándar (`read`, `clear`)
- Permisos de ejecución para scripts (`chmod +x`)
---

## Cómo ejecutar el toolkit

1. Cloná el repositorio o descargá los archivos.
2. Abrí la terminal en la carpeta del proyecto.
3. Asigná permisos de ejecución a los scripts:
   ```bash
   chmod +x main_toolkit.sh procesos.sh memoria.sh disco.sh

   ```

---
Navegación y uso
Cuando ejecutes main_toolkit.sh, verás un menú sencillo con varias opciones para que elijas el módulo que querés utilizar:

Gestión de procesos

Monitoreo de memoria

Información del disco y archivos

Salir

Para seleccionar una opción, simplemente ingresá el número correspondiente. Dentro de cada módulo encontrarás submenús con las funciones disponibles, y siempre tendrás la posibilidad de regresar al menú principal o salir del programa cuando quieras.

## Funcionalidades disponibles 

1)Gestión de procesos (procesos.sh)
Listar procesos en ejecución: muestra una lista estática, parecida a ps aux, donde podés ver todos los procesos activos en el sistema.

Mostrar información detallada por PID: te permite ingresar el PID de un proceso y obtener datos importantes como el uso de CPU, memoria, usuario, tiempo que lleva activo y el comando que lo ejecuta.

Enviar señal a un proceso: opción para finalizar un proceso enviándole la señal SIGTERM (kill -15). Antes de ejecutarlo, te pedirá confirmación para evitar cerrar procesos por error.

2) Monitoreo de memoria (memoria.sh)
Mostrar uso de memoria RAM y SWAP: similar al comando free -h, te permite ver cuánta memoria está en uso, cuánta queda libre y el total disponible.

Información adicional de memoria virtual: obtiene datos más detallados desde /proc/meminfo o vmstat para ofrecer un monitoreo más completo de la memoria del sistema.

3. Información de disco y archivos (disco.sh)
Mostrar espacio libre y usado en los sistemas de archivos montados: funciona parecido a df -h, mostrando cuánto espacio hay disponible y cuánto se está usando en cada partición.

Consultar tamaño ocupado por directorio o archivo: podés ingresar la ruta que quieras para saber cuánto espacio ocupa, usando du -sh <ruta>.

Listar archivos con permisos: muestra una lista detallada de los archivos en un directorio, incluyendo sus permisos, con ls -l <directorio>.


## Autores

- Integrantes del grupo [José Tiranti, Nicolas Menon, Fabian Perisset, Mariano Casarino]
- Docente a cargo: [Gerlero, Martín]

---



---
