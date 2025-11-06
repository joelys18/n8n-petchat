FROM docker.n8n.io/n8nio/n8n

# Render asigna el puerto dinámicamente
ENV N8N_PORT=${PORT}
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https
ENV N8N_TUNNEL=true

# Evitar advertencias de permisos
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Ejecutar n8n con túnel para UI y webhooks
CMD ["n8n", "start", "--tunnel"]
