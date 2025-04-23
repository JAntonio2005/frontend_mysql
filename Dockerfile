FROM nginx:alpine

# Limpia archivos default de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia el contenido de tu frontend
COPY ./ /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# Mantiene nginx corriendo en foreground
CMD ["nginx", "-g", "daemon off;"]
