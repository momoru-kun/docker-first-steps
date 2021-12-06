# Используем образ python версии 3.8 основанный на образе Linux Alpine как базовый
FROM python:3.8-alpine

# Копируем файл с зависимостями
COPY . ./requirements.txt

# Устанавливаем зависимости
RUN pip install -r ./requirements.txt

# Копируем остальные файлы из локальной директории в образ
COPY . .

# Команда, которая будет выполнена при запуске
CMD ["gunicorn", "--bind", "0.0.0.0", "app:app"]
