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
Функция вставки текста в начало файла:

<pre class="file" data-filename="file.txt" data-target="prepend">Вставка текста в начало файла
</pre>

Так выглядит Markdown для вставки текста в начало файла:

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;prepend&#x22;&#x3E;Вставка текста в начало файла
&#x3C;/pre&#x3E;
</pre>

Функция вставки текста в конец файла:

<pre class="file" data-filename="file.txt" data-target="append">Вставка текста в конец файла
</pre>

Так выглядит Markdown для вставки текста в конец файла:

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;append&#x22;&#x3E;Вставка текста в конец файла
&#x3C;/pre&#x3E;
</pre>

Функция замены части текста в файле. В этом примере мы заменим часть строки "Это еще одна строка".

<pre class="file" data-filename="file.txt" data-target="insert" data-marker="Это еще одна">
Мы заменили часть строки, оставив только слово 
</pre>

Так выглядит Markdown для замены текста в файле:

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;insert&#x22; data-marker=&#x22;Это еще одна&#x22;&#x3E;
Мы заменили часть строки, оставив только слово 
&#x3C;/pre&#x3E;
</pre>

Также вы можете просто открыть файл для работы в редакторе
`file2.txt`{{open}}

Markdown для открытия файла:
<pre>`file2.txt`{{open}}</pre>

Дашборд Prometheus доступен [здесь](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/)
