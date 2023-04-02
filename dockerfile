# Vai instalar esta dependencia 
FROM node:14.17.0-slim

# Diretorio do arquivo
WORKDIR /home/node/app

CMD ["tail","-f", "/dev/null"]

# Para build da imagem use docker build -t <nome da imagem .>
# Faça a pesquisa depois que a sua imagem for criada com docker image ls | grep <nome>
# Inicie com docker run -d <nome>
# Para ver ela use o comando docker exec -it <id> /bin/bash