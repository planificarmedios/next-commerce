# Usa una imagen base oficial de Node.js
FROM node:14

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias
RUN npm install

#Construye la aplicación de Next.js
RUN npm run build

# Copia el resto de los archivos del proyecto al directorio de trabajo
COPY . .

# Expone el puerto en el que Next.js correrá
EXPOSE 3000

# Comando para ejecutar el script de Prisma
CMD ["npx", "prisma", "db", "push", "npm", "start"]
