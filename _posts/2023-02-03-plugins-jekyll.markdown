---
layout: post
title:  "Como crear un plugin para Jekyll"
date:   2023-02-02 15:54:58 -0600
categories: jekyll plugins howto como tutorial
---

### Para que sirve un plugin de Jekyll?
Básicamente para modificar ciertas funcionalidades del framework, por ejemplo
en mi caso específico lo necesite para cambiar el idioma de como se imprimía 
la fecha. Por default me servia pero venia en formato US.


Entonces lo que tuve que hacer fue crear un plugin, que es básicamente un archivo
de tipo ruby, el cual contiene una funcion, y la funcion a su vez necesita tener 
un output, normalmente los plugins sirven para eso, tu les das un input y el te 
dará un output

Necesitas crear una carpeta primero, (si es que no la tienes) con el nombre de 
`_plugins` dentro, creas un archivo de tipo ruby `.rb` le pones el nombre que tu 
quieras. Yo creare uno que se llame. `dateformat.rb`.


~~~ ruby
module DateFilter
  MONTHS = %w(Enero Febrero Marzo Abril Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre)

  def spanish_long_month(input)
    input.strftime("%C") + " de " + MONTHS[input.strftime("%m").to_i - 1] + " del " + input.strftime("%Y")
  end
end

Liquid::Template.register_filter(DateFilter)
~~~

Vamos a explicar un poco lo que hace este codigo.
El nombre del modulo es `DateFilter` lo que esta dentro de, es lo que se ejecutará
`MONTHS` vendría siendo algo así como un array, en el cual solamente tenemos
definidos los meses en español. El array comienza en 0, entonces tenemos un array
que va de 0 a 11, siendo la posición 0 Enero y la posición 11 Diciembre. 
Adentro del modulo DateFilter, tenemos definida una función `spanish_long_month`
la cual es la que se encargará de transformar el texto que le mandemos.
`input` es tal cual la entrada que estamos recibiendo, en este caso, es una
variable que ya tenemos dentro de los templates de Jekyll. Estoy 
usando un solo __bracket__ en el ejemplo, __pero deberían ser dos__

``` html
<span class="post-meta">{ post.date | spanish_long_month }</span>
```

Y listo,  de esa manera tienen un plugin que formatea la fecha por default,
de ingles a español o cualquier otro idioma que quieran.

