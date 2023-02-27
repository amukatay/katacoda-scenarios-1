## Отображение ссылки для открытия в iframe

SberCode по умолчанию открывает ссылки в секции Внешние ресурсы, используя iframe. Например, ссылка на [Яндекс](https://sberbank.ru/).


Markdown для вставки ссылки:
<pre>
[Яндекс](https://ya.ru/)
</pre>
  
  
## Отображение ссылки для открытия в новой вкладке браузера

Некоторые сайты не поддерживают открытие через iframe. В этом случае можно сформировать ссылку на <a href="https://ya.ru" target="_blank">Яндекс</a>, которая откроется в новой вкладке браузера.


Markdown:
<pre>
<a href="https://ya.ru" target="_blank">Яндекс</a>
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
