#! /bin/bash

function informacion {
    verde="\e[32m"
    normal="\e[39m"    
    echo -e "$verde$1$normal"
}

function informacionSistema {
    reporte=reporteSistema.txt    
    informacion "Creando el reporte del sistema"
	lsb_release -a > $reporte
	uname -r  -m  -o >> $reporte
	sudo lspci | grep 802 >> $reporte
    cat $reporte
    informacion "El reporte ha sido guardado en $reporte"
}
informacionSistema
