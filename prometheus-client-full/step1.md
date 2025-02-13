Теперь давайте запустим Prometheus. Prometheus - это система мониторинга с открытым кодом, работающая по pull-модели сбора метрик. Prometheus также предоставляет возможность запрашивать данные с помощью языка запросов PromQL. 

Теперь <a href="https://ya.ru" target="_blank">яндекс</a> живет на которой ссылке

Теперь <a href="https://ya.ru" target="_blank"></a> живет на которой ссылке


Prometheus написан на go и распространяется в виде бинарного запускаемого файла. Чтобы запустить Prometheus достаточно запустить исполняемый файл и передать ему конфигурацию. 

Минимальный конфиг для Prometheus-а представляется собой файл в формате yaml. И в файле есть две секции: global - для глобальных настроек и scrape_configs - конфиги скрапинга. 

Prometheus с некоторой периодичностью ходит в сервисы, которые мониторит и забирает у них метрики в формате Prometheus expose format. Это процесс называется скрапингом (scaping, от английского scrape - выскабливать). А сервисы, которые должен мониторить Prometheus таргетами (targets от англисйского target - цель). Поэтому основные настройки Prometheus-а, которые мы будем использовать в конфиге, будут относится к этому процессу.  

Вот пример простейшего конфига для Prometheus-a. Введите строки ниже в файл prometheus.yml. Вы можете сделать это вручную или нажав кнопку "Copy to Editor".

<pre class="file" data-filename="prometheus.yml" data-target="replace">
global:
  scrape_interval:     15s
scrape_configs:
- job_name: app
  metrics_path: '/metrics'
  static_configs:
    - targets: ['127.0.0.1:8000']
</pre>

Давайте разберем настройки из этого файла.

Глобальные настройки. 

    scrape_interval: 15s - это интервал, с которым Prometheus будет ходить за метриками в таргеты по умолчанию. 

Настройки, описывающие, конкретные таргеты, находятся в разделе scrape_configs. Это раздел представляет собой список задач (job-ов). Задача в контексте Prometheus - это коллекция таргетов, имеющих одно и то же предназначение, плюс настройки скрапинга. Например, приложение может быть в виде 3 экземпляров сервисов, расположенных на разных нодах. Т.е. в терминах Prometheus для мониторинга этого приложения ему нужна 1 задача и 3 таргета.  

Параметры задачи (job). Прежде всего название job_name. А для описания списка таргетов воспользуемся статическим конфигом - т.е. опишем список таргетов прямо в файле конфигурации. 

У нас будет один таргет - это локально запущенный сервис на порту 8000. Мы его так и запишем в таргетах: '127.0.0.1'. 

Также мы укажем путь, по которому Prometheus будет забирать метрики в параметре _metrics_path_ .

Давайте запустим сервис Prometheus-a. Для этого воспользуемся докером и официальным образом prom/prometheus. Примонитируем внутрь контейнера конфигурационный файл.

```
docker run -d --net=host --name=prometheus \
   -v /root/prometheus.yml:/etc/prometheus/prometheus.yml \
   prom/prometheus \
   --config.file=/etc/prometheus/prometheus.yml \
   --storage.tsdb.path=/prometheus \
   --web.console.libraries=/usr/share/prometheus/console_libraries \
   --web.console.templates=/usr/share/prometheus/consoles \
   --web.route-prefix=$(cat /usr/local/etc/sbercode-prefix)-9090/ \
   --web.external-url=http://127.0.0.1/$(cat /usr/local/etc/sbercode-prefix)-9090/
```{{execute}}

Проверить, работает ли Prometheus можно зайдя по ссылке на его дашборд. Дашборд Prometheus доступен <a href="https://[[HOST_SUBDOMAIN]]-9090-[[KATACODA_HOST]].environments.katacoda.com/" target="_blank"></a>

Если зайти в раздел Status -> Targets, то там мы увидим список задач и таргетов: одну задачу app и один таргет в ней `http://localhost:8000/metrics` . Ровно так, как у нас было в конфиге. После первого скрейпа состояние таргета изменится с UNKNOWN на DOWN, потому что в нашем сервисе еще не реализован эндпоинт, который бы отдавал метрики. 

![TargetDown](./assets/katacoda_prom_target_down.png)

В следующем шаге мы с вами добавим в наш сервис этот эндпоинт, воспользовавшись клиентской библиотекой от Prometheus..
