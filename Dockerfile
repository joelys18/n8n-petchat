# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Configurar el directorio de datos
ENV N8N_USER_FOLDER=/home/node/.n8n

# Crear carpeta de datos con permisos correctos
RUN mkdir -p $N8N_USER_FOLDER && \
    chown -R node:node $N8N_USER_FOLDER

# Cambiar al usuario por defecto de n8n
USER node

# Render asignará el puerto mediante la variable PORT
ENV N8N_PORT=${PORT}
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_TUNNEL_URL=https://n8n-petchat-1.onrender.com/
ENV N8N_TUNNEL=true
ENV N8N_PROTOCOL=https

# Exponer puerto base (Render ignora, pero se deja por estandar)
EXPOSE 5678

# Comando de inicio
CMD ["n8n", "start"]
