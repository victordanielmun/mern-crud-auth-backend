#!/bin/sh

# Copiar .env.template a .env si no existe
if [ ! -f .env ]; then
  cp .env.template .env
fi

# Iniciar la aplicación
npm start