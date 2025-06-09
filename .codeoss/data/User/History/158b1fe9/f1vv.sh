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
            while [ "$confirmacion" == "1" ]; do
    echo -e "Elige una señal:\nSIGTERM (15)\nSIGKILL (9)\nSIGSTOP (19)"
    read -p "Número de señal: " senal
    read -p "PID del proceso: " pid

    echo "Vas a ejecutar: kill -$senal $pid"
    read -p "¿Confirmás? 1(si)/0(no): " confirmar_envio

    if [ "$confirmar_envio" == "1" ]; then
        kill -$senal $pid
        if [ $? -eq 0 ]; then
            echo "Señal enviada correctamente."
        else
            echo "Error al enviar la señal."
        fi
    else
        echo "Se canceló el envío."
    fi

    read -p "¿Querés enviar otra señal? 1(si)/0(no): " confirmacion
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