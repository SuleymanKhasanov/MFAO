# MFAO Barbershop

**MFAO Barbershop** — это CRM-система для парикмахерской, разработанная для управления записями, услугами и уведомлениями. Проект реализован как монорепозиторий с бэкендом на NestJS (с Prisma и PostgreSQL) и фронтендом на Next.js. Система поддерживает авторизацию через Telegram, роли администратора и клиента, а также уведомления в Telegram.

## Функционал

- **Авторизация и регистрация**:

  - Регистрация и вход через номер телефона или имя пользователя Telegram с подтверждением OTP (одноразовый пароль) в Telegram.
  - Роли: Администратор и Клиент.

- **Функции администратора**:

  - Установка рабочего времени через календарь и временные слоты.
  - Создание, редактирование и удаление услуг (например, стрижка, бритье).
  - Просмотр очереди бронирований.
  - Уведомления о новых бронированиях в Telegram.

- **Функции клиента**:

  - Просмотр и выбор доступных услуг.
  - Бронирование времени для записи на основе рабочего времени администратора.
  - Уведомления о бронировании (за 1 час и во время записи) в Telegram.

- **Будущий функционал**:

  - Панель аналитики для администратора с графиками посещений (неделя, месяц, год).

## Технологический стек

- **Бэкенд**: NestJS, Prisma, PostgreSQL
- **Фронтенд**: Next.js, TypeScript, Tailwind CSS, Axios
- **Инструменты разработки**:

  - Yarn Workspaces для управления монорепозиторием
  - ESLint и Prettier для линтинга и форматирования кода
  - Husky и Commitlint для проверки коммитов и веток
  - Git Flow для управления ветвлением

- **Планируется**:

  - Тестирование: Jest, Supertest (бэкенд), Jest + React Testing Library, Cypress (фронтенд)
  - Docker для контейнеризации
  - CI/CD через GitHub Actions с деплоем на Oracle Cloud Free Tier

## Структура проекта

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   MFAO_barbershop/  ├── backend/                # Бэкенд (NestJS)  │   ├── prisma/             # Схема и миграции Prisma  │   ├── src/                # Исходный код бэкенда  │   ├── package.json        # Зависимости бэкенда  ├── frontend/               # Фронтенд (Next.js)  │   ├── src/                # Исходный код фронтенда  │   ├── package.json        # Зависимости фронтенда  ├── .husky/                 # Хуки Git (Husky)  ├── eslint.config.mjs       # Конфигурация ESLint  ├── .prettierrc             # Конфигурация Prettier  ├── .prettierignore         # Игнорируемые файлы для Prettier  ├── .gitignore              # Игнорируемые файлы для Git  ├── package.json            # Корневой package.json (Yarn Workspaces)  ├── README.md               # Документация проекта   `

## Установка и запуск

### Требования

- Node.js v18+
- Yarn v1.22+
- PostgreSQL v15+
- Git

### Установка

1.  Клонируйте репозиторий:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   git clone <ваш-репозиторий>  cd MFAO_barbershop   `

1.  Установите зависимости:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   yarn install   `

1.  Настройте PostgreSQL:

    - Создайте базу данных barber_app.
    - Обновите файл backend/.env:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   DATABASE_URL="postgresql://user:password@localhost:5432/barber_app?schema=public"   `

1.  Выполните миграции Prisma:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   cd backend  npx prisma migrate dev --name init   `

### Запуск в режиме разработки

1.  Запустите бэкенд:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   yarn backend:dev   `

- Бэкенд будет доступен на http://localhost:3000.

1.  Запустите фронтенд:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   yarn frontend:dev   `

- Фронтенд будет доступен на http://localhost:3001.

### Тестирование API

Используйте Postman или cURL для проверки API. Пример создания парикмахера:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   curl -X POST http://localhost:3000/barbers -H "Content-Type: application/json" -d '{    "firstName": "Иван",    "lastName": "Иванов",    "email": "ivan@example.com",    "phone": "+79991234567",    "description": "Опытный парикмахер"  }'   `

## Разработка

### Формат веток

- Используйте ветки формата feature/MF-XX для новых фич (например, feature/MF-1).
- Исключения: main, develop, release/\*.

Создание ветки:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   git checkout develop  git checkout -b feature/MF-1   `

### Формат коммитов

Коммиты должны соответствовать формату \[MF-XX\]: :

- : feat, fix, docs, style, refactor, test, chore, revert.
- \[MF-XX\]: Номер тикета JIRA (например, MF-1 для MFAO-1).
- : Краткое описание на английском или русском, начинающееся с заглавной буквы.

Пример:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   git commit -m "feat [MF-1]: add phone registration"   `

### Линтинг и форматирование

Перед коммитом автоматически запускаются:

- **ESLint** для проверки кода:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   yarn lint   `

- **Prettier** для форматирования:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   yarn format   `

Исправление ошибок:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   yarn lint:fix  yarn format   `

### Хуки Git

- **Husky**: Проверяет линтинг и форматирование перед коммитом, формат коммитов и веток перед пушем.
- **Commitlint**: Гарантирует формат коммитов \[MF-XX\]: .

Если хук блокирует коммит или пуш, исправьте сообщение коммита или имя ветки:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   git commit --amend -m "feat [MF-1]: fix commit message"  git branch -m feature/MF-1   `

## Планируемые улучшения

1.  **Тестирование**:

    - Бэкенд: Jest + Supertest для модульных и E2E-тестов.
    - Фронтенд: Jest + React Testing Library для компонентов, Cypress для E2E-тестов.

2.  **Docker**:

    - Контейнеризация бэкенда, фронтенда и PostgreSQL с использованием Docker Compose.

3.  **CI/CD**:

    - Настройка GitHub Actions для линтинга, тестирования и деплоя.
    - Развертывание на Oracle Cloud Free Tier (ARM-инстансы).

4.  **Telegram Bot**:

    - Интеграция с Telegram Bot API для отправки OTP и уведомлений.

## JIRA

Задачи отслеживаются в JIRA. Тикеты имеют формат MFAO-XX (например, MFAO-1 для реализации регистрации через телефон). Ветки и коммиты должны включать соответствующий номер (MF-XX).

Пример:

- Тикет: MFAO-1
- Ветка: feature/MF-1
- Коммит: feat \[MF-1\]: implement phone registration

## Контрибьютинг

1.  Создайте ветку feature/MF-XX для нового тикета.
2.  Напишите код, следуя стандартам ESLint и Prettier.
3.  Создайте коммит с правильным форматом.
4.  Отправьте pull request в develop с описанием изменений и ссылкой на тикет JIRA.

## Лицензия

Проект находится в стадии разработки и пока не имеет лицензии.

## Контакты

Для вопросов и предложений свяжитесь с командой через JIRA или репозиторий.
