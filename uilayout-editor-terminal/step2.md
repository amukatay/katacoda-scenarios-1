## Работа с картинками

Вы можете добавлять картинки в упражнение, для этого нужно положить их в папку assets:

![App_](./assets/Example.jpg)

Markdown для вставки картинок:

<pre>
![App_](./assets/Example.jpg)
</pre>
  
  
## Работа с видео

<iframe width="480" height="270" src="https://www.youtube.com/embed/syrGPPekLHQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Для вставки видео (Youtube, Rutube и др.) используется стандартный iframe:

<pre>
<iframe width="480" height="270" src="https://www.youtube.com/embed/syrGPPekLHQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</pre>


## Буфер обмена

Копирование текста в буфер обмена:

`Привет`{{copy}}


Markdown для копирования текста:

<pre>
`Привет`{{copy}}
</pre>


Также Sbercode умеет копировать несколько строк сразу:

<pre data-target="clipboard">
Привет мир!
Хорошего дня!
</pre>


Так выглядит Markdown для копирования нескольких строк:

<pre>
&#x3C;pre data-target=&#x22;clipboard&#x22;&#x3E;
Привет мир!
Хорошего дня!
&#x3C;/pre&#x3E;
</pre>


## Вставка команды в терминал
SberCode может вставлять команды в терминал:
`echo "Пример вставки кода в терминал"
echo "Можно запустить несколько команд одной кнопкой"`{{execute}}


Так выглядит Markdown:

<pre>
`echo "Пример вставки кода в терминал"
echo "Можно запустить несколько команд одной кнопкой"`{{execute}}
</pre>
