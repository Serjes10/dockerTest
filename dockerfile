# Usamos la imagen oficial de Node.js como base para construir la aplicación
FROM node:18 as build

# Establecemos el directorio de trabajo en el contenedor
WORKDIR /app

# Copiamos el archivo package.json y package-lock.json para instalar las dependencias
COPY package*.json ./

# Instalamos las dependencias de la aplicación
RUN npm install

# Copiamos el resto del código fuente de la aplicación al contenedor
COPY . .

# Construimos la aplicación Angular
RUN npm run build --prod

# Usamos una imagen de servidor web ligero para servir la aplicación (Nginx)
FROM nginx:alpine

# Copiamos los archivos compilados de la aplicación Angular desde la etapa de construcción
COPY --from=build /app/dist/docker-front /usr/share/nginx/html

# Exponemos el puerto 80 para acceder a la aplicación
EXPOSE 80

# Comando por defecto para ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]
