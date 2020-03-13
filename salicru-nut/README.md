![image](/uploads/c33814cfe17eb3fb8f070b5bbc98c0eb/image.png)

Actualment tenim muntat la monitorització dels SAIs Salicru d'Alqueria40 amb el dispositiu **cloudy** . Es troba dins l'armariet amb els mateixos SAIs. El Cloudy només pot estar endollat a un dels SAIs per temes de USBs, ja que no és capaç de distingir-los.

El cloudy envia un correu al sistema de monitorització quan el SAI entra a passa la bateria: `cat /opt/scripts/nut_notify.sh `

# Configuració

Empram el paquet **nut-server** i **nut-client**, amb el paquet de correu electrònic **heirloom-mailx**.

Per enviar correus especificant l'smtp, anteriorment s'emprava el mailx del paquet hairloom-mailx, ara substituit en les darreres versions de Debian pel paquet s-nail. Exemple:

```
s-nail -s $subject -S smtp=smtp.uib.es -S from=testinfra@$device zenoss@server.es
```

# Operació
## Start

```
systemctl start nut-server
systemctl start nut-client
```

## Status

```
systemctl status nut-server
systemctl status nut-client
```

## Stop

```
systemctl stop nut-server
systemctl stop nut-client
```

## Consultar estat SAI

```
upsc salicru01 
```
