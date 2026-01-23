## Работа с изображениями

Вы можете добавлять изображения в упражнение, для этого нужно положить их в папку assets (git) или сделать это в разделе Изображения (UGC):

![App_](./assets/Example.jpg)

Markdown для вставки изображения, в данном случае мы берем файл Example.jpg:

<pre>
![App_](./assets/Example.jpg)
</pre>
  
***  
## Работа с видео (старый функционал)

<iframe width="480" height="270" src="https://www.youtube.com/embed/syrGPPekLHQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Для вставки видео (Youtube, Rutube и др.) используется стандартный iframe:

<pre>
<iframe width="480" height="270" src="https://www.youtube.com/embed/syrGPPekLHQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</pre>

***
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


Так выглядит Markdown для копирования нескольких строк, используется маркер data-target="clipboard":

<pre>
&#x3C;pre data-target=&#x22;clipboard&#x22;&#x3E;
Привет мир!
Хорошего дня!
&#x3C;/pre&#x3E;
</pre>

***
## Вставка команды в терминал
SberCode может вставлять команды в терминал:
`echo "Пример вставки кода в терминал"
echo "Можно запустить несколько команд одной кнопкой"`{{execute}}


Так выглядит Markdown, команды нужно поместить между одинарными кавычками:

<pre>
`echo "Пример вставки кода в терминал"
echo "Можно запустить несколько команд одной кнопкой"`{{execute}}
</pre>

***
## Вставка команды в терминал c блокировкой кнопок
SberCode может вставлять команды в терминал с блокировкой кнопок вставки кода в терминал и перехода по шагам упражнения.

Обратите внимание, что разблокировка будет по полному совпадению строки, указанной в параметре *unlock*.

Если совпадение не будет найдено, кнопки останутся заблокированными.
<code-to-term-sync cmd="sleep 5 && cat /root/nofile" unlock="cat: /root/nofile: No such file or directory"/>

Markdown для вставки команды в терминал с блокировкой:
<pre>
<code-to-term-sync cmd="sleep 5 && cat /root/nofile" unlock="cat: /root/nofile: No such file or directory"/>
</pre>

