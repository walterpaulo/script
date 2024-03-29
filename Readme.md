# Comando Extra GNU/Linux

- [copyLib.sh](comandos/copyLib.sh)
- [testeMemória-Oscilacao.sh](comandos/testeMemoria-Oscilacao.sh)
- [backupServar.sh](comandos/backupServer.sh)
- [testeMemoria2.sh](comandos/testeMemoria2.sh)
- [installIReport.sh](comandos/installIReport.sh)

## Dicas
- [Configuração De Ambiente Java ou similar](https://gist.github.com/walterpaulo/993faf4069c910d534571a23b4e50f21)
- [Configuração IReport](https://gist.github.com/walterpaulo/19736480b98b63c5d53d48c713ff5a6d)
- [Pendrive Botável](https://gist.github.com/walterpaulo/d1781282629574df11684ef12c8aa42c)
- [Orange Pi e Similar](https://gist.github.com/walterpaulo/f4bf6774cac5d62e0404e9b7ceb63e53)

## CopyLib.sh

O comando copyLib.sh copiar as bibliotecas associada ao comando para um diretório desejado.

### Recomendação:
Emular enjaulamento do usuário em sistema GNU/Linux. A técnica hardening tem  o principal objetivo de aprimorar a infraestrutura para enfrentar tentativas de ataques. 


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
## Simular Consumo de Memória(Oscilação)

O comando testeMemória.sh estressa a memória(Física).

### Recomendação:
O comando testeMomeria.sh simula consumo de memória e compatível em sistemas GNU/LINUX. O comando projeta cenários reais, pode ser usado para configurar item(coleta) e trigger(ação), Zabbix Server.  O código fica disponível para uso.


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

## Simular Consumo de Memória 2

O comando testeMemória.sh tem a função para stress a memória(Física).

### Recomendação:
Simular uso de memória(físico) em sistema GNU/Linux; 


Exemplo: ./testeMemoria2.sh

```
Início dos Testes 2: Memória
*Teste 1*
Inicio: Monday,29/11/2021 15:43:29
2s basico
Consumo de Memória: 2 G
Fase 1: 2
Fim: Monday,29/11/2021 15:46:29

*Teste 2*
Inicio: Monday,29/11/2021 15:47:29
3s basico
Consumo de Memória: 3 G
Fase 1: 3
Fim: Monday,29/11/2021 15:50:29

*Teste 3*
Inicio: Monday,29/11/2021 15:51:29
4s basico
Consumo de Memória: 4 G
Fim: Monday,29/11/2021 15:59:29

*Teste 4*
Inicio: Monday,29/11/2021 16:00:29
5s basico
Consumo de Memória: 5 G
Fase 1: 5
Fim: Monday,29/11/2021 16:03:29

*Teste 5*
Inicio: Monday,29/11/2021 16:04:29
6s basico
Consumo de Memória: 6 G
Fase 1: 6
Fim: Monday,29/11/2021 16:07:29
```
