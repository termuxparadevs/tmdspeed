#!/usr/bin/env bash

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
