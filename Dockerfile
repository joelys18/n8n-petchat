FROM docker.n8n.io/n8nio/n8n

# Render asigna el puerto dinámicamente
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# ❗ Muy importante:
# NO USAR N8N_TUNNEL en Render
ENV N8N_TUNNEL=false

# Base de datos
ENV DB_TYPE=postgresdb

# Render necesita saber qué puerto estás exponiendo
EXPOSE 5678
