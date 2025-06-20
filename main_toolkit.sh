while true; do
    clear
    echo "===================================="
    echo "    TOOLKIT DE ADMINISTRACIÓN JR.   "
    echo "===================================="
    echo "1. Gestión de Procesos"
    echo "2. Monitoreo de Memoria"
    echo "3. Estado del Disco"
    echo "0. Salir"
    echo "===================================="
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) bash procesos.sh ;;
        2) bash memoria.sh ;;
        3) bash disco.sh ;;
        0) echo "Saliendo del toolkit. ¡Hasta luego!"; exit 0 ;;
        *) echo "Opción inválida. Presione Enter para continuar..."; read ;;
    esac
done
