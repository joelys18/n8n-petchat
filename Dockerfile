FROM n8nio/n8n:latest

# Para evitar problemas de permisos
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Render asigna el puerto automáticamente
ENV N8N_PORT=${PORT}
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https

# Mantiene UI y Webhooks funcionales detrás de Render
ENV N8N_TUNNEL=true

# Iniciar n8n
CMD ["n8n", "start", "--tunnel"]
