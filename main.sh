#!/usr/bin/env bash

clear
echo "###################################################"
echo "#                                                 #"
echo "#       Bem vindo ao Instalador/Desinstalador     #"
echo "#                  do tmdspeed                    #"
echo "#                                                 #"
echo "###################################################"
echo ""
echo "Escolha uma opção:"
echo "1) Instalar"
echo "2) Desinstalar"
echo ""

opcao=0
read -p "Opção: " opcao

if [ $opcao -eq 1 ]; then
  source install.sh
elif [ $opcao -eq 2 ]; then
  source uninstall.sh
else
  echo "Opção inválida."
  exit 1
fi
