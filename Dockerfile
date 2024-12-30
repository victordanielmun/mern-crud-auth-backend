# Usar una imagen base de Node.js
FROM node:20

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar archivos necesarios
COPY package*.json ./
COPY .env.template ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Script para copiar .env.template a .env
RUN chmod +x ./start.sh

# Exponer el puerto usado por el backend (ejemplo: 3000)
EXPOSE 4000

# Iniciar el servidor
CMD ["./start.sh"]