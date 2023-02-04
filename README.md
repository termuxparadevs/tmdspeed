# TMD Speedtest

O TMD Speedtest é um script para automatizar a instalação da biblioteca speedtest-cli no Termux. Ele verifica se as dependências (curl e Python3) estão instaladas e, caso contrário, instala automaticamente. Em seguida, ele baixa o script speedtest-cli, torna-o executável e cria um link simbólico para tmdspeed.

## Descrição
Este script foi criado com o objetivo de facilitar a instalação da biblioteca speedtest-cli no Termux, garantindo que todas as dependências estejam instaladas antes de baixar o script. Após a execução do script, o comando "tmdspeed" pode ser executado a partir de qualquer diretório no terminal Termux, fornecendo informações sobre a velocidade da conexão com a internet.

## Tecnologias Utilizadas
 - Shell Scripting
 - curl
 - Python3
 - Termux


## Utilização
 *1 Clone este repositório para o seu dispositivo.
 *2 Abra o terminal e navegue até a pasta do repositório clonado.
 *3 Execute o script install.sh com o seguinte comando: sh install.sh
 *4 Depois de concluir a instalação, você pode executar o comando "tmdspeed" a partir de qualquer diretório no terminal Termux.


## Detalhes da Criação
Este script foi criado como uma forma fácil de instalar a biblioteca speedtest-cli no Termux. Ele foi criado com o objetivo de automatizar o processo de instalação, verificando as dependências e instalando-as automaticamente, se necessário. Além disso, ele cria um link simbólico para tmdspeed, tornando a utilização da biblioteca ainda mais fácil.

Contribuições
Todas as contribuições são bem-vindas. Se você encontrar algum bug ou quiser sugerir uma nova funcionalidade, abra uma issue ou envie um pull request.



