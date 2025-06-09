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
