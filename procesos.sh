#!/bin/bash

while true; do
    clear
    echo "____________"
    echo "Gestión de procesos"
    echo "1. Mostrar procesos en ejecución"
    echo "2. Ver detalles de un PID"
    echo "3. Finalizar un proceso"
    echo "0. Volver al menú principal"
    echo "____________"

    read -p "Seleccione una opción de Gestión de procesos: " opcion_proceso

    case $opcion_proceso in
        1)
            echo "Mostrando procesos en ejecución (q para salir):"
            ps aux
            read -p "Presione enter para continuar"
            ;;
        2)
            read -p "Ingrese el PID del proceso: " pid
            if [[ "$pid" =~ ^[0-9]+$ ]] && ps -p "$pid" > /dev/null 2>&1; then
                echo "Información detallada del PID $pid:"
                ps -p "$pid" -o pid,ppid,user,%cpu,%mem,etime,cmd --forest
            else
                echo "Error: PID no válido o proceso inexistente."
            fi
            read -p "Presione enter para continuar"
            ;;
        3)
            read -p "Ingrese el PID a finalizar (SIGTERM): " pid
            if [[ "$pid" =~ ^[0-9]+$ ]] && ps -p "$pid" > /dev/null 2>&1; then
                echo "Usted está a punto de finalizar el proceso $pid."
                read -p "¿Seguro quiere enviar SIGTERM al proceso $pid? (s/N): " confirmacion
                confirmacion=$(echo "$confirmacion" | tr '[:upper:]' '[:lower:]')

                if [[ "$confirmacion" == "s" ]]; then
                    kill -15 "$pid"
                    if [ $? -eq 0 ]; then
                        echo "Señal SIGTERM enviada con éxito al proceso $pid."
                    else
                        echo "Error: No se pudo enviar la señal SIGTERM al proceso $pid."
                    fi
                else
                    echo "Finalizar proceso cancelado"
                fi
            else
                echo "Error: PID no válido o proceso inexistente"
            fi
            read -p "Presione enter para continuar"
            ;;
        0)
            echo "Opción 0: Volver al menú principal"
            break
            ;;
        *)
            echo "Opción inválida, ingrese un número válido (0, 1, 2, 3)"
            read -p "Presione enter para continuar"
            ;;
    esac
done


