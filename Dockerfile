FROM n8nio/n8n:latest

# Ajustes para Render
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https

# Si quieres que webhooks funcionen desde URL pública
ENV N8N_TUNNEL=true

# Evita problemas de permisos al escribir config
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Database
ENV DB_TYPE=postgresdb

EXPOSE 5678

CMD ["n8n", "start", "--tunnel"]
