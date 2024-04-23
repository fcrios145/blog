---
layout: post
title:  "Migracion de 1password a bitwarden/vaultwarden"
date:   2024-04-23 12:56:58 -0700
categories: spanish español 1password bitwarden vaultwarden
---

# Problema
Tengo alrededor de 4 años usando 1password de manera habitual sin ningun tipo de problema.
Actualmente cuento con el plan familiar dado que lo comparto con un familiar.
Ahora bien hace algunos meses compre una mini computadora, que tengo instalada en mi oficina para que fungiera como un servidor local
en el cual pudiera instalar la mayor parte de servicios que uso en mi dia a dia en internet.

El principal problema de instalar bitwarden de manera local es que de alguna manera tengo que hacer que sea accesible a internet,
ya cuento con WireGuard instalado en el servidor, el cual me ayudaria a conectarme de manera remota.

Pero entonces surge el problema de los certificados, VaultWarden o BitWarden requieren forzosamente de certificados SSL
* Si lo hago de manera local, exponiendolo solamente a traves de WireGuard, entonces no puedo generar certificados son Let's Encrypt,
  tendria que generarlos yo mismo e instalar esos certificados de manera manual en mis otros dispositivos
* Si abro el puerto (80, 443) en el router, pues, eso conllevaria a que pudiera recibir algun ataque

# Conclusion
Las dos posibles soluciones son

* Seguir con la suscripcion (60 dls anuales) 
* Animarme y abrir los puertos para exponer bitwarden
