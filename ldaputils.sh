#!/bin/bash

domini=ncognom.local

instalar_ldap(){
  apt update
  apt install ldap-utils slapd -y
  dpkg-reconfigure slapd
}

crear_unitats(){
  echo "Crear la unitat organitzativa alumnes"
  echo "Crear la untiat organitzativa professors"
}

afegir_usuari(){
  echo "Afegir un usuari. Pot ser un alumne o un professor"
}

eliminar_usuari(){
  echo "Eliminar un usuari. Pot ser un alumne o un professor"
}

importar_usuaris(){
  echo "Afegir alumnes i professors des d'un fitxer csv"
}
