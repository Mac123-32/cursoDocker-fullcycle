# Vai instalar esta dependencia 
FROM node:14.17.0-slim

# Diretorio do arquivo
WORKDIR /home/node/app

CMD ["tail","-f", "/dev/null"]

#Vamos iniciar de uma forma diferente agora colocando volume na aplicação
#docker run -d -v $(pwd):/home/node/app <nome>