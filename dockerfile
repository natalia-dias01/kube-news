# Use a imagem oficial do Node.js como base
FROM node:14

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todos os arquivos do diretório atual para o diretório de trabalho
COPY . .

# Expõe a porta 8080 para o tráfego externo
EXPOSE 8080

# Comando para iniciar a aplicação
CMD [ "node", "index.js" ]
