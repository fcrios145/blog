---
layout: post
title: "Migración de 1Password a Bitwarden/Vaultwarden"
date: 2024-04-23 12:56:58 -0700
categories: español 1Password Bitwarden Vaultwarden
---

# Problema
He estado usando 1Password durante aproximadamente 4 años de manera habitual sin ningún tipo de problema. Actualmente, 
tengo el plan familiar, ya que lo comparto con un familiar. Sin embargo, hace algunos meses compré una mini computadora 
que he instalado en mi oficina para que funcione como un servidor local, en el cual pueda instalar la mayoría de los
 servicios que uso en mi día a día en internet.

El principal problema al instalar Bitwarden de manera local es que de alguna manera tengo que hacerlo accesible a 
internet. Ya cuento con WireGuard instalado en el servidor, el cual me ayudaría a conectarme de manera remota. Sin 
embargo, surge el problema de los certificados. VaultWarden o Bitwarden requieren forzosamente certificados SSL.
* Si lo hago de manera local, exponiéndolo solamente a través de WireGuard, entonces no puedo generar certificados 
* con Let's Encrypt, tendría que generarlos yo mismo e instalar esos certificados de manera manual en mis otros dispositivos.
* Si abro los puertos (80, 443) en el router, eso podría conllevar algún ataque.

# Conclusión
Las dos posibles soluciones son:
* Seguir con la suscripción (60 dólares anuales).
* Animarme y abrir los puertos para exponer Bitwarden.
