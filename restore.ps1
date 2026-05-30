Param(
    [Alias('Host')][string]$DbHost = "localhost",
    [int]$Port = 5432,
    [Alias('User')][string]$DbUser = "postgres",
    [string]$DbName = "jader_db",
    [string]$DumpFile = "JADER_MENDEZPST_Bsd.sql"
)

# Solicitar contraseña de forma segura
Write-Host "Conectar a $DbHost`:$Port como $DbUser, restaurando en base $DbName"
$Password = Read-Host -AsSecureString "Contraseña para $DbUser"
$Bstr = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password)
$Unsecure = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($Bstr)

# Establecer variable de entorno PGPASSWORD para pg_restore temporalmente
$env:PGPASSWORD = $Unsecure

# Intentar localizar automáticamente los binarios de PostgreSQL si no están en PATH
if (-not (Get-Command createdb -ErrorAction SilentlyContinue) -or -not (Get-Command pg_restore -ErrorAction SilentlyContinue)) {
    Write-Host "Binarios de PostgreSQL no en PATH. Buscando en rutas comunes..."
    $pgDirs = @()
    if (Test-Path 'C:\Program Files\PostgreSQL') {
        Get-ChildItem 'C:\Program Files\PostgreSQL' -Directory -ErrorAction SilentlyContinue | ForEach-Object { $pgDirs += Join-Path $_.FullName 'bin' }
    }
    if (Test-Path 'C:\Program Files (x86)\PostgreSQL') {
        Get-ChildItem 'C:\Program Files (x86)\PostgreSQL' -Directory -ErrorAction SilentlyContinue | ForEach-Object { $pgDirs += Join-Path $_.FullName 'bin' }
    }
    foreach ($d in $pgDirs) {
        if (Test-Path (Join-Path $d 'pg_restore.exe') -PathType Leaf -ErrorAction SilentlyContinue) {
            Write-Host "Añadiendo $d a PATH temporariamente..."
            $env:Path = $env:Path + ';' + $d
            break
        }
    }
}

# Verificar que los comandos ahora existen
if (-not (Get-Command createdb -ErrorAction SilentlyContinue) -or -not (Get-Command pg_restore -ErrorAction SilentlyContinue)) {
    Write-Error "No se encontraron los binarios requiredos de PostgreSQL: createdb y/o pg_restore. Asegura que PostgreSQL 18 esté instalado y que su carpeta bin esté en PATH."
    exit 1
}

if (-Not (Test-Path $DumpFile)) {
    Write-Error "Archivo de volcado '$DumpFile' no encontrado en $(Get-Location)"
    exit 1
}

# Crear la base de datos si no existe
Write-Host "Creando base de datos (si no existe)..."
$createdbCmd = "createdb -h $DbHost -p $Port -U $DbUser $DbName"
Invoke-Expression $createdbCmd

# Ejecutar pg_restore
Write-Host "Iniciando pg_restore..."
$restoreCmd = "pg_restore -h $DbHost -p $Port -U $DbUser -d $DbName -v `"$DumpFile`""
Invoke-Expression $restoreCmd

# Limpiar la variable de entorno
Remove-Item Env:PGPASSWORD
Write-Host "Restauración finalizada. Verifica con psql -h $DbHost -p $Port -U $DbUser -d $DbName"