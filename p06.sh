#!/bin/bash

if (( EUID != 0 ))
then
	zenity --error --text="Aquest script s'ha d'executar amb privilegis de l'usuari root"
	exit 1 
fi
usuari=$(zenity --forms --title="Afegeix un usuari" --text="usuari" \
--add-entry="Interpret d'ordres" --add-password="Contrasenya de l'usuari" --text="S'ha canviat exitosament la contrasenya")
exit 0
fi
