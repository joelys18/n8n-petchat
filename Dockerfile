FROM docker.n8n.io/n8nio/n8n

# Render asigna el puerto dinámicamente
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https
ENV N8N_TUNNEL=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Base de datos
ENV DB_TYPE=postgresdb

EXPOSE 5678
