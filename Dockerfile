# Usa a imagem oficial do Node.js versão 18 baseada no Alpine Linux
FROM node:18-alpine3.20

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia todos os arquivos do diretório atual para o diretório de trabalho no container
COPY . .

# Instala as dependências do projeto
RUN npm install

# Executa o build da aplicação
RUN npm run build

# Expõe a porta 3333 para acesso externo
EXPOSE 3333

# Comando para iniciar a aplicação
CMD ["npm", "start"]