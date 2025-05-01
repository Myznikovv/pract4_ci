# Используем официальный образ Python 3.9 в минимальной версии
FROM python:3.9-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы зависимостей и приложение
COPY requirements.txt requirements.txt
COPY app.py app.py

# Устанавливаем зависимости из requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Открываем порт 5000, на котором будет работать приложение
EXPOSE 5000

# Запускаем приложение
CMD ["python", "app.py"]

