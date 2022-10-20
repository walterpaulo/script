#!/bin/bash
#####	NOME:				   installIReport.sh
#####	VERSÃO:				0.0.1
#####	DESCRIÇÃO:			Relatorios em Java.
#####	DATA DA CRIAÇÃO:	19/10/2022
#####	ESCRITO POR:		Walter Paulo
#####	E-MAIL:				walter0paulo@hotmail.com
#####	DISTRO:				Debian GNU/Linux
#####	LICENÇA:			   GPLv3
#####	REPOSITÓRIO:      https://github.com/walterpaulo
#####	PORTFOLIO:        https://www.walterpaulo.com.br


# Pacotes
IREPORT="https://sourceforge.net/projects/ireport/files/iReport/iReport-5.6.0/iReport-5.6.0.tar.gz"
JAVA7="https://files-cdn.liferay.com/mirrors/download.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz"

#Caminhos
CAMINHO_IREPORT="/opt/iReport-5.6.0"

# 1 - IReport 5.6.0
wget $IREPORT

# 2 -Java 7
wget $JAVA7

# 3 - Descompatando arquivos
sudo tar -xvf iReport-5.6.0.tar.gz -C /opt/
sudo tar -xvf jdk-7u80-linux-x64.tar.gz -C /opt/

sudo rm -rf iReport-5.6.0.tar.gz jdk-7u80-linux-x64.tar.gz

echo 'jdkhome="/opt/jdk1.7.0_80/"' |sudo tee -a $CAMINHO_IREPORT/etc/ireport.conf

echo '#!/bin/bash
  # Author: Walter Paulo
  # Email: walter0paulo@hotmail.com
  # Site: https://www.walterpaulo.com.br
  # Data: 19/10/2022
  # Abrir o IReport

  echo "Iniciando o IReport..."
  /opt/iReport-5.6.0/bin/ireport > /dev/null 2>&1 &
  echo "PROCESSO: "$$
  '|sudo tee /bin/ireport

sudo chmod 755 /bin/ireport

# Para excluir
# sudo rm -rf /bin/ireport /opt/iReport-5.6.0 /opt/jdk1.7.0_80/
#
#
# Obs: Antes de rodar o script, configura esse arquivo para execução, no mesmo diretório do script 'installReport.sh'
# digite o comando, chmod 755 installReport.sh
