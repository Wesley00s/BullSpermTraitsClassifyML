# Use uma imagem base do Node.js
FROM node:latest

# Crie e defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie todo o código-fonte para o diretório de trabalho
COPY . .

# Construa o projeto React
RUN npm run build

# Exponha a porta 80 para o servidor da aplicação React
EXPOSE 80

# Comando para iniciar o servidor da aplicação React
CMD ["npm", "start"]
