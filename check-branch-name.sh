#!/bin/bash

# Получаем имя текущей ветки
BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)

# Проверяем, является ли ветка main, develop или release/*
if [ "$BRANCH_NAME" = "main" ] || [ "$BRANCH_NAME" = "develop" ] || [[ "$BRANCH_NAME" =~ ^release/.* ]]; then
  echo "✅ Ветка '$BRANCH_NAME' исключена из проверки формата."
  exit 0
fi

# Проверяем, соответствует ли имя ветки формату feature/MF-XX
if ! [[ "$BRANCH_NAME" =~ ^feature/MF-[0-9]+$ ]]; then
  echo "❌ Ошибка: Имя ветки '$BRANCH_NAME' не соответствует требуемому формату."
  echo "Имя ветки должно быть в формате: feature/MF-XX (например, feature/MF-1)."
  echo "Разрешены только ветки feature/MF-XX, кроме main, develop и release/*."
  exit 1
fi

echo "✅ Имя ветки '$BRANCH_NAME' корректно."
exit 0