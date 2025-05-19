#!/bin/bash

# main_toolkit.sh - Seccion: Menú principal del toolkit de administración

while true; do
    clear
    echo "===================================="
    echo "    TOOLKIT DE ADMINISTRACIÓN JR.   "
    echo "===================================="
    echo "1. Gestión de Procesos"
    echo "0. Salir"
    echo "===================================="
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo "Procesos en ejecución:"
            ps aux | less
            read -p "Presione Enter para continuar..."
            ;;
        2)
            read -p "Ingrese el PID del proceso: " pid
            if ps -p "$pid" > /dev/null 2>&1; then
                ps -p "$pid" -o pid,ppid,user,%cpu,%mem,etime,cmd
            else
                echo "PID no válido o proceso inexistente."
            fi
            read -p "Presione Enter para continuar..."
            ;;
        3)
            read -p "Ingrese el PID del proceso a finalizar: " pid
            if ps -p "$pid" > /dev/null 2>&1; then
                read -p "¿Está seguro de enviar SIGTERM al proceso $pid? (s/n): " confirmacion
                if [[ "$confirmacion" == "s" || "$confirmacion" == "S" ]]; then
                    kill -15 "$pid" && echo "Señal enviada exitosamente." || echo "Error al enviar la señal."
                else
                    echo "Acción cancelada."
                fi
            else
                echo "PID no válido o proceso inexistente."
            fi
            read -p "Presione Enter para continuar..."
            ;;
        0)
            echo "Saliendo del toolkit. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción inválida. Presione Enter para continuar..."
            read
            ;;
    esac
done

