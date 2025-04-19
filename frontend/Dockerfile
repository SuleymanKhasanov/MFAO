# Используем node:22-slim для минимизации уязвимостей
FROM node:22-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем корневые файлы зависимостей
COPY package.json yarn.lock ./
COPY frontend/package.json ./frontend/

# Устанавливаем зависимости с замороженным lockfile
RUN yarn workspace frontend install --frozen-lockfile

# Копируем остальные файлы frontend
COPY frontend/ ./frontend/

# Выполняем сборку Next.js
RUN yarn workspace frontend build

# Открываем порт 3000
EXPOSE 3000

# Запускаем приложение
CMD ["yarn", "workspace", "frontend", "start"]