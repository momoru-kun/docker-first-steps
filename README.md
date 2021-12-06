# First image

Первый docker образ. За основу будет взято простое Flask приложение на python

## Запуск

Для запуска необходимо собрать образ, а затем запустить его

```bash
docker build . -t my-first-image
docker run my-first-image python ./app.py
```
