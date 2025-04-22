# Usa la imagen oficial de Nginx para servir archivos estáticos
FROM nginx:alpine

# Copia los archivos del frontend (suponiendo que los archivos estén en una carpeta `dist/` después de la compilación)
COPY ./dist /usr/share/nginx/html

# Expone el puerto 80 para poder acceder a la aplicación desde fuera del contenedor
EXPOSE 80

# Configura Nginx para servir los archivos estáticos
CMD ["nginx", "-g", "daemon off;"]
