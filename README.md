# LAB-1

Proyecto de ejemplo para el CASO 1: Pipeline CI/CD.

Contenido:
- Aplicación Node.js simple en `src/`.
- Tests con `jest` en `test/`.
- `Dockerfile` para construir imagen de producción.
- `.github/workflows/ci-cd.yml` con pipeline que ejecuta tests, construye y publica imagen en GHCR y opcional despliegue a Heroku.

Cómo ejecutar localmente:

1. Instalar dependencias:

```bash
npm ci
```

2. Ejecutar tests:

```bash
npm test
```

3. Ejecutar la aplicación:

```bash
npm start
```

CI/CD (GitHub Actions):
- `test` job: instala dependencias y ejecuta tests.
- `build-and-push` job: construye imagen Docker y la publica en Docker Hub (`${{ secrets.DOCKERHUB_USERNAME }}/lab-1-app`).
- `deploy-heroku` job (opcional): despliega a Heroku si configuras los secretos `HEROKU_API_KEY` y `HEROKU_APP_NAME`.

Secrets recomendados para publicar/desplegar:
- `GITHUB_TOKEN` (ya disponible automáticamente para Actions)
- `DOCKERHUB_USERNAME` y `DOCKERHUB_TOKEN` — para publicar la imagen en Docker Hub desde Actions.
- `HEROKU_API_KEY` y `HEROKU_APP_NAME` (si quieres desplegar a Heroku)

Notas de seguridad:
- No incluyas credenciales en el repo.
- Usa los Secrets de GitHub Actions para claves.

<!-- This README file has been touched for no-op purposes -->