#!/bin/bash

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
read -p "Opção: " opcao

if [ $opcao == 1 ]; then
  # Código para instalação
  if command -v python3 > /dev/null 2>&1; then
    echo "Python3 já está instalado."
  else
    echo "Instalando python3..."
    pkg install python3 -y
  fi

  if command -v curl > /dev/null 2>&1; then
    echo "Curl já está instalado."
  else
    echo "Instalando curl..."
    pkg install curl -y
  fi

  echo "Baixando arquivo..."
  curl -Lo speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
  chmod +x speedtest-cli
  mv speedtest-cli $PREFIX/bin/
  ln -s $PREFIX/bin/speedtest-cli $PREFIX/bin/tmdspeed
  echo ""
  echo -e "\033[32mInstalação concluída com sucesso!\033[0m"
  echo "O tamanho do arquivo baixado é $(du -sh $PREFIX/bin/speedtest-cli | awk '{print $1}')"

elif [ $opcao == 2 ]; then
  # Código para desinstalação
  echo "Removendo arquivo..."
  rm $PREFIX/bin/speedtest-cli
  rm $PREFIX/bin/tmdspeed
  echo ""
  echo -e "\033[32mDesinstalação concluída com sucesso!\033[0m"

else
  echo "Opção inválida."
  exit 1
fi
