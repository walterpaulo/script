#!/bin/bash

#####   NOME:            backupServer.sh
#####   VERSÃO:            1.0
#####   DESCRIÇÃO:         Backup do Zabbix e grafana.
#####   DATA DA CRIAÇÃO:           30/11/2021
#####   ESCRITO POR:              Walter Paulo
#####   E-MAIL:            walter0paulo@gmail.com
#####   DISTRO:            Debian GNU/Linux 10 (Buster)
#####   LICENÇA:                 GPLv3
#####   PROJETO:                 https://github.com/walterpaulo/backupServer.git

DIR_ZABBIX=/etc/zabbix
DIR_GRAFANA=/etc/grafana
DIR_BACKUP=/root/bakcup
DATA=`date +%d-%m-%Y-%H-%M`

[ ! -f $DIR_BACKUP ] && { mkdir $DIR_BACKUP;}
cd $DIR_BACKUP;
tar -czf backup-"$DATA".tar.gz $DIR_ZABBIX $DIR_GRAFANA;
ls -l $DIR_BACKUP;
cd -;

