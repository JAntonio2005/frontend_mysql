# Usa una imagen base de Nginx para servir el frontend
FROM nginx:alpine

# Copia los archivos del frontend (como index.html, css, js) al contenedor
COPY ./ /usr/share/nginx/html

# Expone el puerto 80 para acceder a la aplicación desde fuera del contenedor
EXPOSE 80

# Comando para mantener Nginx corriendo
CMD ["nginx", "-g", "daemon off;"]
