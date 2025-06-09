#!/bin/bash

while true; do
    clear
    echo "____________"
    echo "       Gestión de procesos      "
    echo "____________"
    echo "1. Mostrar procesos en ejecución"
    echo "2. Ver detalles de un PID"
    echo "3. Finalizar un proceso"
    echo "0. Volver al menú principal"
    echo "____________"

    read -p "Seleccione una opción de Gestión de procesos: " opcion_proceso

    case $opcion_proceso in
        1)
            echo "Mostrando procesos en ejecución (primeros 15):"
            ps -eo pid,cmd,%cpu,%mem --sort=-%cpu | head -n 15
            read -p "Presione Enter para continuar..."
            ;;
        2)
            read -p "Ingrese el PID del proceso: " pid
            if [[ "$pid" =~ ^[0-9]+$ ]] && ps -p "$pid" > /dev/null 2>&1; then
                echo "Información detallada del PID $pid:"
                ps -p "$pid" -o pid,ppid,user,%cpu,%mem,etime,cmd --forest
            else
                echo "Error: PID no válido o proceso inexistente."
            fi
            read -p "Presione Enter para continuar..."
            ;;
        3)
            #!/bin/bash

# main_toolkit.sh - Menú principal del Toolkit de Administración Jr.

while true; do
    clear
    echo "=============================================="
    echo "        TOOLKIT DE ADMINISTRACIÓN JR.         "
    echo "=============================================="
    echo "Seleccione una opción:"
    echo "----------------------------------------------"
    echo "  1. Gestión de Procesos"
    echo "  2. Gestión de Memoria"
    echo "  3. Gestión de Disco / Archivos"
    echo "  0. Salir"
    echo "----------------------------------------------"

    read -p "Ingrese su opción (0-3): " opcion

    case "$opcion" in
        1)
            bash procesos.sh
            ;;
        2)
            bash memoria.sh
            ;;
        3)
            bash disco.sh
            ;;
        0)
            echo "Gracias por utilizar el Toolkit. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción inválida. Ingrese un número entre 0 y 3."
            read -p "Presione Enter para continuar..."
            ;;
    esac
done
        0)
            echo "Volviendo al menú principal..."
            break
            ;;
        *)
            echo "Opción inválida. Ingrese 0, 1, 2 o 3."
            read -p "Presione Enter para continuar..."
            ;;
    esac
done