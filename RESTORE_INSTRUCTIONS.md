Instrucciones para restaurar la copia de seguridad `JADER_MENDEZPST_Bsd.sql`

Resumen
- El archivo `JADER_MENDEZPST_Bsd.sql` es un volcado en formato custom de PostgreSQL (pg_dump -Fc).
- Para restaurarlo se usa `pg_restore` o `pg_restore` combinado con `psql`.

Requisitos
- Tener PostgreSQL instalado (incluye `pg_restore` y `psql`).
- Variables: host, puerto, usuario, contraseña, nombre de la base de datos destino.

Opción A — Restaurar directamente a una base de datos (recomendado)
1. Crear la base de datos destino (si no existe):

```powershell
createdb -h <host> -p <port> -U <user> <dbname>
```

2. Restaurar el volcado:

```powershell
pg_restore -h <host> -p <port> -U <user> -d <dbname> -v "JADER_MENDEZPST_Bsd.sql"
```

Opción B — Volcar a SQL plano y revisar antes de aplicar
```powershell
pg_restore -f dump.sql -F c "JADER_MENDEZPST_Bsd.sql"
# luego inspeccionar dump.sql y ejecutar:
psql -h <host> -p <port> -U <user> -d <dbname> -f dump.sql
```

Notas útiles
- Si hay errores de encoding, añadir `--encoding=UTF8` según el error.
- Para conexiones locales en Windows, puedes abrir una consola `psql` y ejecutar `\\dt` para listar tablas tras restaurar.
- El script `restore.ps1` acepta ahora `-DbHost` o `-Host`, y `-DbUser` o `-User`.
- Si `createdb` o `pg_restore` no están en PATH, el script buscará automáticamente en `C:\Program Files\PostgreSQL` y `C:\Program Files (x86)\PostgreSQL`.

Script de ejemplo (PowerShell):
- Ver `restore.ps1` en el mismo directorio.

Si quieres, puedo generar un script interactivo que pida credenciales y ejecute la restauración automáticamente.