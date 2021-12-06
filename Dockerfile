# Используем образ python версии 3.8 основанный на образе Linux Alpine как базовый
FROM python:3.8-alpine

# Копируем файлы из локальной директории в образ
COPY . .

# Устанавливаем зависимости
RUN pip install -r ./requirements.txt

# Открываем порт локальной сети docker
EXPOSE 5000

# Команда, которая будет выполнена при запуске
CMD ["gunicorn", "--bind", "0.0.0.0", "app:app"]