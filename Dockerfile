# Imagen base oficial de n8n
FROM n8nio/n8n:latest

# Directorio de trabajo para n8n
WORKDIR /home/node/.n8n

# Ajustes importantes para Render
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_TUNNEL=true

# Esta URL es la pública generada por Render
ENV WEBHOOK_TUNNEL_URL=https://n8n-petchat-1.onrender.com/

# Exponer puerto estándar de n8n
EXPOSE 5678

# Iniciar n8n
CMD ["n8n", "start"]
