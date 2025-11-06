# Imagen base oficial de n8n
FROM n8nio/n8n:latest

# Directorio de trabajo donde n8n guarda los datos
WORKDIR /data

# Render asigna el puerto dinámicamente
ENV N8N_PORT=${PORT}
ENV WEBHOOK_URL=${WEBHOOK_URL}

# Obligatorio para evitar el warning de permisos
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Esta línea evita problemas con limitaciones del túnel (NO usar --tunnel en producción)
CMD ["n8n", "--port", "${PORT}"]
