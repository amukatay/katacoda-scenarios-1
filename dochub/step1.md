## Клонировать условно работающий пример

`git clone https://github.com/Rock2k3/digital_bbb_study_sbercode_demo.git`{{execute}}

## Создадим сеть

```
docker network create dochub-test
```{{execute}}

## Запустить пример

```
docker run \
-p 3030:3030 \
-p 8079:8079 \
-v /root/digital_bbb_study_sbercode_demo:/app/public/ceaf-app \
-v /root/example.env:/app/.env \
--name dochub \
--network=dochub-test \
-d docker.io/alexander894/dochub:0.0.1
```{{execute}}

## запустить nginx

```
docker run --name test-nginx \
-p 8080:8080 -p 8081:8081 \
-v /root/nginx.conf:/etc/nginx/nginx.conf:ro \
-v /root/nginx:/usr/share/nginx/html \
--network=dochub-test \
-d nginx
```{{execute}}

[DochubUI]([[UUID_SUBDOMAIN]]-8081-[[HOST]]/)

Запрос релоада `fetch('/core/storage/reload', {method: 'PUT'})`


Запрос схемы `fetch('/core/storage/jsonata/\(%24\)')`
