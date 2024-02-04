#!/bin/bash

# Leer la variable GITHUB_USER
read -p "Ingrese el nombre de usuario de GitHub: " GITHUB_USER

# Consultar la URL de GitHub
API_URL_GIT="https://api.github.com/users/${GITHUB_USER}"
RESPONSE=$(curl -s $API_URL_GIT)

# Extraer datos del JSON
ID=$(echo $RESPONSE | jq -r '.id')
CREATED_DATE=$(echo $RESPONSE | jq -r '.created_at')

# Imprimir el mensaje
echo "Hola ${GITHUB_USER}. User ID: ${ID}. Cuenta fue creada el: ${CREATED_DATE}."

# Crear el directorio temporal si no existe
LOG_DIR="/tmp/$(date +'%Y%m%d')"
mkdir -p $LOG_DIR

# Crear el archivo de log
LOG_FILE="${LOG_DIR}/saludos.log"
echo "Hola ${GITHUB_USER}. User ID: ${ID}. Cuenta fue creada el: ${CREATED_DATE}." > $LOG_FILE

# Definir la ruta completa al script
SCRIPT_PATH="$(realpath $0)"

# Crear un cronjob para ejecutar el script cada 5 minutos
CRON_CMD="*/5 * * * * $SCRIPT_PATH"
(crontab -l 2>/dev/null; echo "$CRON_CMD") | crontab -


