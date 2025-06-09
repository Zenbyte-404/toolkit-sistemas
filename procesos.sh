#!/bin/bash

# ===============================
# Script de Gestión de Procesos
# ===============================

mostrar_menu_procesos() {
    clear
    echo ""
    echo "       Gestión de procesos      "
    echo ""
    echo "1. Mostrar procesos en ejecución"
    echo "2. Ver detalles de un PID"
    echo "3. Finalizar un proceso"
    echo "0. Volver al menú principal"
    echo ""
}

mostrar_procesos() {
    echo "Mostrando procesos en ejecución (presione 'q' para salir):"
    ps aux 
    read -p "Presione enter para continuar"
}

ver_detalles_pid() {
    read -p "Ingrese el PID del proceso: " pid
    if [[ "$pid" =~ ^[0-9]+$ ]] && ps -p "$pid" > /dev/null 2>&1; then
        echo "Información detallada del PID $pid:"
        ps -p "$pid" -o pid,ppid,user,%cpu,%mem,etime,cmd --forest
    else
        echo "Error: PID no válido o proceso inexistente."
    fi
    read -p "Presione enter para continuar"
}

finalizar_proceso() {
    read -p "Ingrese el PID a finalizar (SIGTERM): " pid
    if [[ "$pid" =~ ^[0-9]+$ ]] && ps -p "$pid" > /dev/null 2>&1; then
        echo "Usted está a punto de finalizar el proceso $pid."
        read -p "¿Seguro que quiere enviar SIGTERM al proceso $pid? (s/N): " confirmacion
        confirmacion=$(echo "$confirmacion" | tr '[:upper:]' '[:lower:]')
        if [[ "$confirmacion" == "s" ]]; then
            kill -15 "$pid"
            if [ $? -eq 0 ]; then
                echo "Señal SIGTERM enviada con éxito al proceso $pid."
            else
                echo "Error: No se pudo enviar la señal SIGTERM al proceso $pid."
            fi
        else
            echo "Finalización del proceso cancelada."
        fi
    else
        echo "Error: PID no válido o proceso inexistente."
    fi
    read -p "Presione enter para continuar"
}

# Bucle principal del menú de procesos
while true; do
    mostrar_menu_procesos
    read -p "Seleccione una opción de Gestión de procesos: " opcion_proceso

    case "$opcion_proceso" in
        1) mostrar_procesos ;;
        2) ver_detalles_pid ;;
        3) finalizar_proceso ;;
        0) echo "Volviendo al menú principal..."; break ;;
        *) echo "Opción inválida. Ingrese un número válido (0, 1, 2, 3)."
           read -p "Presione enter para continuar" ;;
    esac
done

