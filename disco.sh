#!/bin/bash
# disco.sh - Módulo de monitoreo del sistema de archivos
while true; do
    clear
    echo "=========== ESTADO DEL DISCO ==========="
    echo "1. Ver uso general del disco (df)"
    echo "2. Ver tamaño de un directorio/archivo (du)"
    echo "3. Listar archivos con permisos (ls -l)"
    echo "0. Volver al menú principal"
    echo "========================================"
    read -p "Seleccione una opción: " opcion
    case $opcion in
        1)
            echo ""
            free -h
            read -p "Presione Enter para continuar..."
            ;;
        2)
            echo ""
            head -n 10 /proc/meminfo
            read -p "Presione Enter para continuar..."
            ;;
        3)
            read -p "Ingrese el directorio a listar: " dir
            if [ -d "$dir" ]; then
                ls -l "$dir"
            else
                echo "Directorio inválido o inexistente."
            fi
            read -p "Presione Enter para continuar..."
            ;;
        0) break ;;
    esac
done
