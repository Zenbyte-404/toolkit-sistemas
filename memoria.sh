#!/bin/bash

# memoria.sh - Módulo de monitoreo de memoria

while true; do
    clear
    echo "========= MONITOREO DE MEMORIA ========="
    echo "1. Ver uso de RAM y SWAP (free)"
    echo "2. Ver información extendida de memoria (/proc/meminfo)"
    echo "3. Ver estadísticas con vmstat"
    echo "0. Volver al menú principal"
    echo "========================================"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        0) break ;;
    esac
done
