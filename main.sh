#!/usr/bin/env bash

#!/usr/bin/env bash

# Cabeçalho
# Nome: install.sh
# Autor: TMD - Termux para Devs
# Fonte: speedtest-cli (https://github.com/sivel/speedtest-cli)
# Descrição: Este script automatiza a instalação e desinstalação da biblioteca speedtest-cli no Termux. 
# Ele verifica se o curl e o Python3 estão instalados e, se não estiverem, instala-os automaticamente. 
# Em seguida, ele baixa o script speedtest-cli, torna-o executável e cria um link simbólico para tmdspeed.
# O objetivo deste script é facilitar a instalação da biblioteca speedtest-cli no Termux, garantindo que todas as dependências estejam instaladas antes de baixar o script.

clear
echo "###################################################"
echo "#                                                 #"
echo "#       Bem vindo ao Instalador/Desinstalador     #"
echo "#                  do tmdspeed                    #"
echo "#                                                 #"
echo "###################################################"
echo ""

# Verifica se o curl está instalado
if command -v python3 > /dev/null 2>&1; then
  echo "Python3 já está instalado."
else
  echo "Instalando python3..."
  pkg install python3 -y
fi

# Verifica se o Python está instalado
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

