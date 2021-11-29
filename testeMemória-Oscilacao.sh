#/bin/bash

echo "Início dos Testes: Memória"
for i in {1..5}
do
hoje=$(date +'%A,%d/%m/%Y %T');
   echo -e "*Teste $i*\nInicio: "$(date +'%A,%d/%m/%Y %T');

   stress -m 1 -t 3m --vm-bytes 3G > /dev/null 2>&1
   echo "Fim: "$(date +'%A,%d/%m/%Y %T');
   echo
   sleep 1m 
done
