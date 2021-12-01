# Comando Extra GNU/Linux

- [copyLib.sh](copyLib.sh)
- [testeMemória-Oscilacao.sh](testeMemória-Oscilacao.sh)
- [backupServar.sh](backupServer.sh)


## CopyLib.sh

O comando copyLib.sh copiar as bibliotecas associada ao comando para um diretório desejado.

### Recomendação:
Emular enjaulamento do usuário em sistema GNU/Linux; 


Exemplo: ./copyLib.sh comando diretório
```
$ ./copyLib.sh ls /home/walter/chroot
```
<img src="https://i.ibb.co/8dYp2c2/copyLib.png">

Checagem de parâmetros:
```
$./copyLib.sh
+ Camando não existe;
+ Diretório não informado;
```
## Simular Consumo de Memória-Oscilicao

O comando testeMemória.sh tem a função para stress a memória(Física).

### Recomendação:
Simular uso de memória(físico) em sistema GNU/Linux; 


Exemplo: ./testeMemoria-Oscilacao.sh
```
$ ./testeMemoria-Oscilacao.sh
Início dos Testes: Memória
*Teste 1*
Inicio: Sunday,28/11/2021 16:09:06
Fim: Sunday,28/11/2021 16:12:06

*Teste 2*
Inicio: Sunday,28/11/2021 16:13:06
Fim: Sunday,28/11/2021 16:16:06

*Teste 3*
Inicio: Sunday,28/11/2021 16:17:06
Fim: Sunday,28/11/2021 16:20:06

*Teste 4*
Inicio: Sunday,28/11/2021 16:21:06
Fim: Sunday,28/11/2021 16:24:06

*Teste 5*
Inicio: Sunday,28/11/2021 16:25:06
Fim: Sunday,28/11/2021 16:28:06

```
## Gerador de Backup

O comando backupserver.sh tem a função de backup.

### Recomendação:
Uso do agendamento de tarefas, cron;


Exemplo:
```
. backupServer.sh

```
