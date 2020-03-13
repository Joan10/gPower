## Introducció

Els UPS d'APC permeten la connexió a un servidor per USB a efectes de monitorització. En Linux hi ha un paquet anomenat apcupsd que monitoritza l'estat de les bateries i envia events al syslog.

De moment hi ha una instància d'apcupsd al servidor ofre2 (10.91.9.66). Aquest servidor envia per syslog els events del UPS al sistema de monitorització.

Mikrotik implementa també un client SMART UPS per poder monitoritzar els SAIs. Tot i així, aquest client posa el router en hibernació passats uns minuts enlloc de durar vàries hores. Més recomanable emprar una Raspberry per monitoritzar-lo.

## Instal·lació i configuració

Instal·lam el paquet
```
sudo apt-get install apcupsd
```

Modificam i afegim a /etc/apcupsd els camps següents
```
UPSNAME rack-guifi-ups
UPSCABLE usb
UPSTYPE usb
DEVICE
FACILITY LOCAL7
```

I llavors a /etc/defaults/apcups modificam la línia ISCONFIGURED i la deixam a yes
```
ISCONFIGURED=yes
```

A /etc/rsyslog.conf enviam LOCAL7 al sistema de monitorització:
```
[...]
local7.* @monitor.guifi.gotes.org:514
[...]
```

Reiniciam els serveis:
```
sudo service rsyslog restart
sudo service apcupsd restart
```


