# Imagen base oficial de n8n
FROM n8nio/n8n:latest

# Definir el directorio de trabajo
WORKDIR /data

# Copiar las variables de entorno (Render las inyecta automáticamente)
# No es necesario copiar .env manualmente

# Exponer el puerto que Render asignará dinámicamente
EXPOSE 5678

# Comando de inicio para Render (usa el túnel para evitar "Cannot GET /")
CMD ["n8n", "start", "--tunnel"]
