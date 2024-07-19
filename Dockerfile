# Etapa 1: Construir a aplicação Angular
FROM node:20.11.0 AS build

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o package.json e package-lock.json
COPY package*.json ./

# Instalar o npm na versão 10.2.4
RUN npm install -g npm@10.2.4

# Instalar as dependências do projeto
RUN npm install

# Copiar o restante dos arquivos do projeto
COPY . .

# Construir a aplicação Angular
RUN npm run build --prod

# Etapa 2: Configurar Nginx para servir a aplicação
FROM nginx:latest

# Remover a página padrão do Nginx
RUN rm /usr/share/nginx/html/*

# Copiar os arquivos construídos para o diretório do Nginx
COPY --from=build /app/dist/angular-base-project/browser /usr/share/nginx/html

# Expor a porta 80
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
