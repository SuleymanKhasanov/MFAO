module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    'type-enum': [
      2,
      'always',
      [
        'feature', // Новая функциональность
        'fix', // Исправление ошибок
        'docs', // Изменения в документации
        'style', // Изменения стилей (без изменения логики)
        'refactor', // Рефакторинг кода
        'test', // Добавление или изменение тестов
        'chore', // Прочие изменения (например, обновление зависимостей)
        'revert', // Откат изменений
      ],
    ],
    'type-empty': [2, 'never'],
    'subject-case': [2, 'always', 'sentence-case'],
    'subject-max-length': [2, 'always', 72],
    'subject-empty': [2, 'never'],
    'header-max-length': [2, 'always', 100],
    'scope-empty': [2, 'always'], // Отключаем scope, так как [MF-XX] часть subject
  },
  parserPreset: {
    parserOpts: {
      headerPattern: /^(\w+) \[MF-\d+\]: (.+)$/,
      headerCorrespondence: ['type', 'subject'],
    },
  },
};
