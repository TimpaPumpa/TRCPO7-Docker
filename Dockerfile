# Базовый образ Python
FROM python:3.9-slim

# Создаём рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Запуск нашего сервера при старте контейнера
CMD ["python", "server.py"]
