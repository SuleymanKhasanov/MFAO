# Используем node:22-slim для минимизации уязвимостей
FROM node:22-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем корневые файлы зависимостей
COPY package.json yarn.lock ./
COPY backend/package.json ./backend/

# Устанавливаем зависимости с замороженным lockfile
RUN yarn workspace backend install --frozen-lockfile

# Копируем остальные файлы backend
COPY backend/ ./backend/

# Выполняем сборку NestJS
RUN yarn workspace backend build

# Открываем порт 5050
EXPOSE 5050

# Запускаем приложение
CMD ["yarn", "workspace", "backend", "start:prod"]