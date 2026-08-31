# GitHub Migration Roadmap

## GH0 — Repository Architecture ✅
- repo structure
- immutable frozen directories
- status entrypoint
- protocol
- CI integrity check

## GH1 — Pre-Git Migration Bundle ✅
- D1 frozen v1
- D2 frozen v1
- D3 frozen v1
- D4 architecture + G1–G7
- system docs

## GH2 — Create Public GitHub Repository ⏭️
Создать пустой публичный repository, рекомендованное имя:
`skillsvault-content`

## GH3 — Bootstrap History ⏭️
Запустить `bootstrap-github.ps1` с URL репозитория.

Результат:
- semantic migration commits
- freeze tags D1/D2/D3
- main pushed
- Actions enabled automatically

## GH4 — Verify Remote
Проверить:
- Actions green
- tags visible
- `status/CONTENT_STATUS.json` opens in browser

## GH5 — Continue Content Work
Следующий content stage:
`CRN-M-01 / D4-G8`

После каждого accepted stage:
- commit
- update status
- push

После freeze:
- new immutable `FROZEN_vN`
- tag
- GitHub Release with freeze ZIP + SHA.
