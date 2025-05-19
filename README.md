# 🧰 Toolkit de Administración Jr.

Este proyecto forma parte del trabajo práctico integrador del módulo **Sistemas Operativos** de la Tecnicatura Superior en Desarrollo de Software (ISPC).

---

## Objetivo

Desarrollar un toolkit basado en scripts de Bash para facilitar tareas básicas de administración en sistemas operativos Linux (Ubuntu/Debian), enfocado en esta etapa en la **gestión de procesos**.

---

##  Estructura del Proyecto

```
├── main_toolkit.sh     # Menú principal del toolkit
├── procesos.sh         # Módulo de gestión de procesos
└── README.md           # Manual de usuario
```

---

## Requisitos

- Sistema operativo Linux (Ubuntu/Debian)
- Bash Shell
- Permisos de ejecución (`chmod +x`)

---

## Cómo ejecutar el toolkit

1. Cloná el repositorio o descargá los archivos.
2. Abrí la terminal en la carpeta del proyecto.
3. Asigná permisos de ejecución:
   ```bash
   chmod +x main_toolkit.sh procesos.sh
   ```
4. Ejecutá el script principal:
   ```bash
   ./main_toolkit.sh
   ```

---

## Funcionalidades disponibles (Evidencia 2)

### 1. Ver procesos en ejecución
Muestra los procesos activos en el sistema, similar a `ps aux`, con paginación para facilitar la lectura.

```bash
ps aux | less
```

---

### 2. Ver información detallada de un proceso por PID
Permite ingresar un PID y visualizar información relevante como uso de CPU, memoria, usuario, etc.

```bash
ps -p <PID> -o pid,ppid,user,%cpu,%mem,etime,cmd
```

---

### 3. Enviar señal a un proceso
Permite finalizar un proceso mediante el envío de una señal `SIGTERM` (kill -15), con confirmación del usuario.

```bash
kill -15 <PID>
```

---


## Autores

- Integrantes del grupo [José Tiranti, Nicolas Menon, Matias Saig, Fabian Perisset, Mariano Casarino]
- Docente a cargo: [Gerlero, Martín]

---

## Evidencia de Aprendizaje N° 2

Este README y los scripts están asociados a la segunda entrega del proyecto ABP. El repositorio refleja el trabajo colaborativo, la documentación del código y la integración básica del módulo de procesos.

---
