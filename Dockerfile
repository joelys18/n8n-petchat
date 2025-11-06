FROM n8nio/n8n:latest

# Render asigna el puerto automáticamente (no lo fijes aquí)
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https
ENV N8N_TUNNEL=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Base de datos
ENV DB_TYPE=postgres

# Render expone el puerto dinámicamente
EXPOSE 5678

CMD ["n8n", "start", "--tunnel"]
