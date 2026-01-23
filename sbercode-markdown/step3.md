Для открытия файла в редакторе есть отдельная кнопка. В данном примере мы открываем изображение, также поддерживаются и текстовые файлы. 
`file.jpg`{{open}}


Markdown для открытия файла:
<pre>`file.jpg`{{open}}</pre>

***
В SberСode можно скачать текстовый файл размера до 1 МБ с домашней папки или подпапки на свой компьютер, путь до файла указан в параметре path. 
<download-file path="/root/file.txt"/>

Markdown для скачивания файла:

<pre>
<download-file path="/root/file.txt"/>
</pre>

***
SberСode также позволяет загрузить любой файл из компьютера до 1 МБ, файл загрузится в домашнюю папку или подпапку с именем, указанным в параметре path. Загружать можно любые типы файлов.
<upload-file path="/root/test_folder/file_upload.txt"/>

Markdown для загрузки файла:

<pre>
<upload-file path="/root/test_folder/file_upload.txt"/>
</pre>