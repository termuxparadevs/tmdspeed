#!/usr/bin/env bash

# Cabeçalho
# Nome: install.sh
# Autor: TMD - Termux para Devs
# Fonte: speedtest-cli (https://github.com/sivel/speedtest-cli)
# Descrição: Este script automatiza a instalação da biblioteca speedtest-cli no Termux. 
# Ele verifica se o curl e o Python3 estão instalados e, se não estiverem, instala-os automaticamente. 
# Em seguida, ele baixa o script speedtest-cli, torna-o executável e cria um link simbólico para tmdspeed.
# O objetivo deste script é facilitar a instalação da biblioteca speedtest-cli no Termux, garantindo que todas as dependências estejam instaladas antes de baixar o script.


# Verifica se o curl está instalado
if ! command -v curl &> /dev/null
then
    # Instala o curl
    pkg in curl
fi

# Verifica se o python estpa instalado
if ! command -v python3 $> /dev/null
then
    # Instala o Python3
    pkg in python3
fi

curl -Lo $PREFIX/bin/speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
chmod +x $PREFIX/bin/speedtest-cli
ln -s $PREFIX/bin/speedtest-cli tmdspeed

echo -e "\033[0;32mArquivo speedtest-cli baixado com sucesso!\033[0m"
ls -lh $PREFIX/bin/speedtest-cli

# Utilização:
# Depois de rodar o script install.sh, você pode executar o comando "tmdspeed" a partir de qualquer diretório no seu terminal Termux. 
# Isso irá rodar a biblioteca speedtest-cli e fornecer as informações sobre a velocidade da sua conexão com a internet.
