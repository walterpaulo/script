#!/bin/bash
#
# copyLib.sh -  Programa em Shell Script - Procurar e copiar lib para o diretório
#
# Homepage: 
# Autor: Walter Paulo <walter0paulo@hotmail.com>
# Mantenedor: Walter Paulo
#
#--------------------------------------------------------
#
# Este programa irá procurar as bibliotecas essencial para o comando. O usuário
# digita o comando e diretório. 
#
#
# $ ./copyLib.sh ls /home/walter/chroot
# 
#  
#
# Hitório de Versões
#
# Versão: 1.1
#
# COPYRIGHT: Este programa é GPL


CAMANDO=$1
LIB=$(which $CAMANDO|xargs -I %s ldd %s|grep -o "/lib.*\.[0-9]")
FILEDIR=$2
ERROR=""


NEWDIR(){
[ ! -d $FILEDIR ] &&
	mkdir -p $FILEDIR
}

VALIDAR_COMANDO(){
	[[ -n "$(which $CAMANDO)" ]] || ERROR="\e[31m+ \e[m\e/Camando não existe;\n"
	[[ -n "$FILEDIR" ]] || ERROR+="\e[31m+ \e[m\e/Diretório não informado;"
}

VALIDAR_COMANDO

if [ "$ERROR" ]; then
	echo
	echo -e $ERROR
	echo
else
	NEWDIR
	cp -fva $LIB $FILEDIR
fi
exit 0


