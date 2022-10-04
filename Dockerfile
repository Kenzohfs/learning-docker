#Imagem que vamos utlizar de base
FROM node
#Especificar o diretório padrão da aplicação
WORKDIR /
#Variáveis de ambiente durante o build do Dockerfile
ARG PORT=3000
#Variáveis de ambiente da aplicação
ENV PORT=$PORT
#Permite deixar a porta da máquina visível
EXPOSE $PORT
#Copiar os arquivos de dentro do terminal para a imagem que estamos criando
COPY ./ .
#Comando em bash para pré-inicializar a aplicação
RUN npm install 
#Executa o comando para iniciar a aplicação
ENTRYPOINT npm start