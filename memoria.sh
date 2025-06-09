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
            echo ""
            vmstat 1 5
            read -p "Presione Enter para continuar..."
            ;;
        0) break ;;
    esac
done
