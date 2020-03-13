# Infraestructura d'energia i monitorització

Wiki amb informació sobre com muntar sistemes redundants d'energia en microPoPs

## SAIs

* Salicru SPS One
  * No monitoritzable amb Mikrotik
  * NUTs + upsc

* APC BackUPS 700VA
  * Integrat amb Mikrotik
  * apcupsd

* MeanWell DRUPS-40
  * *Raw, DiY* i tot això
  * Complicat de monitoritzar. No es dispara el senyal de bateria fins que la càrrega supera els 2A.
  * Inviable!

## Altres dispositius

 * Alternadora per casos extrems
 * *Interruptor diferencial auto rearmable Super inmunizado SI de 40A Tipo A, 6Ka 2P 30ma* en casos complicats (caigudes de diferencials)
