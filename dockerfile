# Vai instalar esta dependencia 
FROM node:14.17.0-slim

# Diretorio do arquivo
WORKDIR /home/node/app

CMD ["tail","-f", "/dev/null"]

#Vamos iniciar de uma forma diferente agora colocando volume na aplicação
#docker run -d -v $(pwd):/home/node/app <nome>

# Apos a execução acima faça 
# docker exec -it <id> /bin/bash 
# e ir ate a pasta escrita cd /home/node/app

# Agora crie uma pequena aplicação node e coloque ela no ar em LAN