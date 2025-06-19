# Usar uma imagem base do Node.js
FROM node:18

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Instalar o Mintlify CLI globalmente
RUN npm install -g mintlify@latest

# Copiar os arquivos do diretório local para o contêiner
COPY . .

# Comando de inicialização
CMD ["mintlify", "dev", "--port", "3333"]
