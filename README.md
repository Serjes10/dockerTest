# Pasos para ejecutar la aplicación utilizando docker

## Contruir la Imagen

`docker build -t nombre-de-tu-aplicacion .`
 - docker build: Comando para construir una imagen Docker.
  - -t: nombre-de-tu-aplicacion: Asigna un nombre (tag) a la imagen. Reemplaza nombre-de-tu-aplicacion con un nombre descriptivo para tu aplicación.
  - .: Especifica el contexto de construcción, que es el directorio actual (donde se encuentra el Dockerfile).

## Ejecutar el contenedor docker

`docker run -p 80:80 nombre-de-tu-aplicacion`

- docker run: Comando para ejecutar un contenedor basado en la imagen creada.
- -p 80:80: Mapea el puerto 80 del contenedor al puerto 80 de tu máquina host, permitiendo que accedas a la aplicación desde tu navegador web.
- nombre-de-tu-aplicacion: Reemplaza esto con el nombre de la imagen que especificaste al construirla.
