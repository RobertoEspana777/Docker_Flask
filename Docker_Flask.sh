#!/bin/bash

# Verificar si el usuario tiene Docker instalado
if ! command -v docker &> /dev/null; then
    echo "Error: Docker no está instalado. Por favor, instala Docker antes de continuar."
    exit 1
fi

# Detener y eliminar el contenedor existente si ya está en ejecución
docker stop flaskdocker1 &> /dev/null
docker rm flaskdocker1 &> /dev/null

# Descargar la imagen desde Docker Hub
docker pull robertoorfeo22/flaskdocker1

# Ejecutar el contenedor con la imagen descargada
docker run -d -p 1018:1018 --name flaskdocker1 robertoorfeo22/flaskdocker1

# Mostrar los registros del contenedor en tiempo real
docker logs -f flaskdocker1
