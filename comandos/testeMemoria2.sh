#/bin/bash

MEMORIA=2
echo "Início dos Testes 2: Memória"
for i in {1..5}
do
   hoje=$(date +'%A,%d/%m/%Y %T');
   echo -e "*Teste $i*\nInicio: "$(date +'%A,%d/%m/%Y %T');
   echo $MEMORIA's basico';
   if [ $i == 3 ]; then
   	echo -e "Consumo de Memória: $MEMORIA G";
   	stress -m 1 -t 8m --vm-bytes 7G > /dev/null 2>&1
   else
	echo -e "Consumo de Memória: $MEMORIA G";
 	stress -m 1 -t 3m --vm-bytes $MEMORIA'G' > /dev/null 2>&1
   	echo -e "Fase 1: $MEMORIA";
   fi
   echo "Fim: "$(date +'%A,%d/%m/%Y %T');
   echo
   let "MEMORIA++";
   sleep 1m
done   
