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
        0) break ;;
    esac
done
