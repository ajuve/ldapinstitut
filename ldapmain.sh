#!/bin/bash

source ldaputils.sh

if [ $USER != root ]; then
  >&2 echo "Necessites ser usuari root :("
  exit 1
fi

menu(){
  echo "1) Instal·lar LDAP"
  echo "2) Crear UOs (alumnes,professors)"
  echo "3) Afegir usuari"
  echo "4) Eliminar usuari"
  echo "5) Importar usuaris (csv)"
  echo "9) Mostrar menu"
  echo "0) Sortir del programa"
}

menu
op=999
while((op!=0));do

  echo ""
  read -p "Entra una opció: " op

  if((op==1));then
    instalar_ldap
  elif((op==2));then
    crear_unitats
  elif((op==3));then
    afegir_usuari
  elif((op==4));then
    eliminar_usuari
  elif((op==5));then
    importar_usuaris
  elif((op==9));then
    menu
  elif((op==0));then
    echo "Adéu-siau"
  else
    echo "Opció no vàlida :("
  fi

done

