---
layout: post
title: "Pasos para agregar una funcion reusable en devc++"
date: 2024-06-27 15:54:58 -0600
categories: devcpp devc++ staticlibrary espanol c++
---

# Crear una función en otro archivo y llamarla en tu programa principal en C usando Dev-C++

## 1. Crear la función en un archivo separado

- Abre Dev-C++ y crea un nuevo archivo fuente (por ejemplo, `functions.c`).
- Escribe tu función en este archivo. Por ejemplo:

```c
// functions.c
#include <stdio.h>

void sayHello() {
    printf("¡Hola desde otro archivo!\n");
}
```

## 2. Crear un archivo de encabezado para la función

- Crea otro archivo nuevo (por ejemplo, `functions.h`).
- Declara tu función en este archivo de encabezado. Por ejemplo:

```c
// functions.h
#ifndef FUNCTIONS_H
#define FUNCTIONS_H

void sayHello();

#endif
```

## 3. Incluir el archivo de encabezado y llamar a la función en tu programa principal

- Crea tu archivo principal del programa (por ejemplo, `main.c`).
- Incluye el archivo de encabezado y llama a la función en tu función `main`. Por ejemplo:

```c
// main.c
#include <stdio.h>
#include "functions.h"

int main() {
    sayHello();
    return 0;
}
```

## 4. Configurar tu proyecto en Dev-C++

- Ve a `Archivo` -> `Nuevo` -> `Proyecto`.
- Elige una aplicación de consola y C como el lenguaje.
- Dale un nombre a tu proyecto y guárdalo en una ubicación adecuada.
- Agrega tus archivos fuente (`main.c` y `functions.c`) al proyecto haciendo clic derecho en `Archivos de origen` en el gestor de proyectos y seleccionando `Añadir al proyecto`.

## 5. Compilar y ejecutar tu proyecto

- Haz clic en `Ejecutar` -> `Compilar y Ejecutar` o presiona `F9` para compilar y ejecutar tu programa.

Si todo está configurado correctamente, deberías ver la salida `¡Hola desde otro archivo!` en la consola. Esta configuración asegura que la función definida en `functions.c` sea accesible desde `main.c` a través de la declaración en `functions.h`.
