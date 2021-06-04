## copyLib.sh

O comando copyLib.sh copiar as bibliotecas associada ao comando para um diretório desejado.

## Recomendação:
Emular enjaulamento do usuário em sistema GNU/Linux; 


Exemplo: ./copyLib.sh comando diretório

$ ./copyLib.sh ls /home/walter/chroot

'/lib/arm-linux-gnueabihf/libselinux.so.1' -> '/home/walter/chroot/libselinux.so.1'
'/lib/arm-linux-gnueabihf/libc.so.6' -> '/home/walter/chroot/libc.so.6'
'/lib/ld-linux-armhf.so.3' -> '/home/walter/chroot/ld-linux-armhf.so.3'
'/lib/arm-linux-gnueabihf/libpcre.so.3' -> '/home/walter/chroot/libpcre.so.3'
'/lib/arm-linux-gnueabihf/libdl.so.2' -> '/home/walter/chroot/libdl.so.2'
'/lib/arm-linux-gnueabihf/libpthread.so.0' -> '/home/walter/chroot/libpthread.so.0'

O camando valida os paramentos:

$./copyLib.sh
+ Camando não existe;
+ Diretório não informado;


