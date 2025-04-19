```
<!--
# MFAO Barbershop

MFAO Barbershop - это CRM-система для управления барбершопом, включающая фронтенд (Next.js) и бэкенд (NestJS) с базой данных PostgreSQL. Проект организован как монорепозиторий с использованием Yarn Workspaces, Docker для контейнеризации, Husky и Commitlint для контроля качества кода, и строгим форматом веток и коммитов.

## Установка и запуск

### Требования
- Node.js v22.12.0
- Yarn v1.22.19
- Docker и Docker Compose
- macOS (или другая ОС с соответствующими настройками)

### Локальная установка
1. Клонируй репозиторий:
   ```bash
   git clone <repository-url>
   cd MFAO_barbershop
   ```
2. Установи зависимости:
   ```bash
   yarn install
   ```
3. Настрой окружение:
   - Скопируй `backend/.env.example` в `backend/.env` и задай переменные:
     ```env
     PORT=5050
     DATABASE_URL=postgresql://user:password@localhost:8080/barber_app?schema=public
     ```
4. Примени миграции Prisma:
   ```bash
   cd backend
   npx prisma migrate dev --name init
   ```
5. Запусти фронтенд и бэкенд:
   ```bash
   yarn frontend:dev  # Запускает Next.js на http://localhost:3000
   yarn backend:dev   # Запускает NestJS на http://localhost:5050
   ```

### Запуск через Docker
1. Убедись, что Docker и Docker Compose установлены.
2. Запусти контейнеры:
   ```bash
   docker-compose up -d --build
   ```
3. Проверь доступ:
   - Фронтенд: http://localhost:3000
   - Бэкенд: http://localhost:5050
   - PostgreSQL: `psql -h localhost -p 8080 -U user -d barber_app`
4. Останови контейнеры:
   ```bash
   docker-compose down
   ```

## Структура проекта
- `backend/`: Бэкенд на NestJS, API и интеграция с PostgreSQL через Prisma.
- `frontend/`: Фронтенд на Next.js, интерфейс CRM-системы.
- `docker-compose.yml`: Конфигурация Docker для фронтенда, бэкенда и базы данных.
- `.husky/`: Хуки для линтинга, форматирования и проверки коммитов.
- `commitlint.config.js`: Правила для формата коммитов.
- `yarn.lock`: Единый файл зависимостей для Yarn Workspaces.

## Формат веток и коммитов
- **Ветки**: Используй формат `feature/MF-XX` для фич (например, `feature/MF-1` для тикета MFAO-1).
- **Коммиты**: Формат `<type> [MF-XX]: <description>` (например, `feat [MF-1]: Add Telegram auth`).
- Типы коммитов: `feature`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`, `revert`.

## Текущие задачи
- **MFAO-1**: Реализация авторизации через Telegram.
- Настройка Git Flow для структурирования ветвления.
- Настройка CI/CD для деплоя на Oracle Cloud Free Tier.

## Разработка
- **Линтинг**: `yarn lint` и `yarn lint:fix` для проверки и исправления кода.
- **Форматирование**: `yarn format` и `yarn format:check` с Prettier.
- **Тесты**: `yarn test` для Jest (фронтенд) и `yarn test:e2e` (бэкенд).
- **Cypress**: `yarn cypress:open` для UI-тестов.

## Проблемы и поддержка
Если возникли проблемы с запуском, сборкой Docker или настрой