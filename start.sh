#!/bin/bash

# Останавливаем старый контейнер, если он есть
docker stop my-web-site 2>/dev/null
docker rm my-web-site 2>/dev/null

# Собираем образ из нашего Dockerfile
echo "🏗️ Сборка образа..."
docker build -t my-devops-image .

# Запускаем контейнер
echo "🚀 Запуск контейнера на порту 8080..."
docker run -d -p 8080:80 --name my-web-site my-devops-image

echo "✅ Готово! Проверяй http://localhost:8080"
