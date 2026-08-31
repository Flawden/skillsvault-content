# GitHub Migration v1

Этот snapshot уже разложен как Git-репозиторий.

## Рекомендуемый сценарий

1. Создать **пустой публичный** GitHub repository, например `skillsvault-content`.
2. Не создавать на GitHub README/.gitignore/license при создании — они уже есть здесь.
3. Распаковать этот ZIP.
4. В PowerShell из корня выполнить:

```powershell
.\bootstrap-github.ps1 -RepoUrl "https://github.com/USERNAME/skillsvault-content.git"
```

Скрипт:
- создаст Git;
- реконструирует миграционные commits;
- поставит freeze tags D1/D2/D3;
- добавит текущую D4 работу;
- подключит remote;
- отправит `main` и tags.

После этого постоянная точка входа:
`status/CONTENT_STATUS.json`.

> Миграционные коммиты отражают смысловые контрольные точки, а не исходное реальное время авторинга в чатах.
