При работе с редактором вы можете заменять полностью или частично текст в файле, а также вставлять текст в начало или конец файла.

Функция замены всего текста в файле (Если файл пустой, то текст просто вставится):

<pre class="file" data-filename="file.txt" data-target="replace">Замена всего текста в файле
Это еще одна строка
</pre>


<details>
<summary>Тест</summary>
  
* *италик*
* **жирный**
* ***жирный италик***
  
</details>

<details>
<summary></summary>
  
* *италик*
* **жирный**
* ***жирный италик***
  
</details>

<details>
<summary>Тест3</summary>
  
* Так выглядит Markdown для замены всего текста в файле, это поведение определеяется маркером data-target="replace":
  
<pre class="file" data-filename="file.txt" data-target="replace">Замена всего текста в файле
Это еще одна строка
</pre>

* &#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;append&#x22;&#x3E;Вставка текста в конец файла &#x3C;/pre&#x3E;
* *италик*
* **жирный**
* ***жирный италик***
  
</details>

<details>
<summary>Тест4</summary>
  
+ First item
+ Second item
+ Third item
+ Fourth item 
  
</details>

<details>
<summary>Тест5</summary>
  
- [сайт]([[UUID_SUBDOMAIN]]-80-[[HOST]]/)
- <a href="https://sberbank-school.ru" target="_blank">СберУниверситет</a>
- https://github.com/amukatay/katacoda-scenarios-1
- [Fourth item ](https://github.com/amukatay/katacoda-scenarios-1)
  
</details>

<details>
<summary>Тест6</summary>
  
- First item
- Second item
- Third item
    - Indented item
    - Indented item
        - Indented item in item
- Fourth item 
  
</details>


Так выглядит Markdown для замены всего текста в файле, это поведение определеяется маркером data-target="replace":

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;replace&#x22;&#x3E;Замена всего текста в файле
Это еще одна строка
&#x3C;/pre&#x3E;
</pre>
***
Функция вставки текста в начало файла:

<pre class="file" data-filename="file.txt" data-target="prepend">Вставка текста в начало файла
</pre>


Так выглядит Markdown для вставки текста в начало файла, это поведение определеяется маркером data-target="prepend":

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;prepend&#x22;&#x3E;Вставка текста в начало файла
&#x3C;/pre&#x3E;
</pre>
***
Функция вставки текста в конец файла:

<pre class="file" data-filename="file.txt" data-target="append">Вставка текста в конец файла
</pre>


Так выглядит Markdown для вставки текста в конец файла, это поведение определеяется маркером data-target="append":

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;file.txt&#x22; data-target=&#x22;append&#x22;&#x3E;Вставка текста в конец файла
&#x3C;/pre&#x3E;
</pre>
***
Функция замены части текста в файле. В этом примере мы заменим часть строки "Это еще одна строка".

<pre class="file" data-filename="file.txt" data-target="insert" data-marker="Это еще одна">
Мы заменили часть строки, оставив только слово 
</pre>


Так выглядит Markdown для замены текста в файле это поведение определеяется маркером data-target="insert", заменяемый текст нужно поместить в data-marker:

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
