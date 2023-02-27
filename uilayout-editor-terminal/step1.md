При работе с редактором вы можете заменять полностью или частично текст в файле, а также вставлять текст в начало или конец файла.

Функция замены всего текста в файле (Если файл пустой, то текст просто вставится):

<pre class="file" data-filename="file.txt" data-target="replace">Замена всего текста в файле
Это еще одна строка
</pre>


Так выглядит Markdown для замены всего текста в файле:

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;replace&#x22;&#x3E;Замена всего текста в файле
Это еще одна строка
&#x3C;/pre&#x3E;
</pre>
***
Функция вставки текста в начало файла:

<pre class="file" data-filename="file.txt" data-target="prepend">Вставка текста в начало файла
</pre>


Так выглядит Markdown для вставки текста в начало файла:

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;prepend&#x22;&#x3E;Вставка текста в начало файла
&#x3C;/pre&#x3E;
</pre>
***
Функция вставки текста в конец файла:

<pre class="file" data-filename="file.txt" data-target="append">Вставка текста в конец файла
</pre>


Так выглядит Markdown для вставки текста в конец файла:

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;append&#x22;&#x3E;Вставка текста в конец файла
&#x3C;/pre&#x3E;
</pre>
***
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
***
Также вы можете просто открыть файл для работы в редакторе
`file2.txt`{{open}}


Markdown для открытия файла:
<pre>`file2.txt`{{open}}</pre>
