link do video
https://youtu.be/F_pgDkErFIk

19 minutos

ele mostra como fazer a insatala de forma mais rapida no windows, mas tem tamb no freecodecamp,
um tutorial simples e rápido. (32 minutosdo video ele explica onde ver como instalar wsl 2).

docker deamon
  - ele é um servidor que permite que possamos trabalhar com o docker

docker client
  - é onde roda todo o sistema 

para iniciar o docker use ( sudo service ddocker start ) ( docker ps )

para dar um stop e um serviço use (docker stop <id do serviço>)

(00:49:02) - Ele ensina a excluir uma imagem co ( docker rmi <nome-da-imagem>);
(00:55:00) - Elemostra como ver todo os containers ( docker ps -a )
(00:57:41) - Para excluir um container referente a uma imagem ( docker rm <id> && docker rmi <nome>)
(1:00:00) - Mostra como baixar uma imgamgem do doker hub, momentos atras ele explica que docker hub
é um local como git hub onde garda varias imagens , você pode irlá e buscar uma imagem que seja oficial
ou uma verificada , bom ele usa o comando ( docker run <nomeImagem:versao>). No exemplo dele ele faz 
(docker run nginx:1.19.10-alpine) ao fazer isso e depois abrir um novo terminal e rodar (docker ps) ele
vai mostrar somente quem esta rodando na maquina
(1:03:12) ele volta no terminal em que abriu ocontainer nginx e apertou ctrl + c e parouo seriço, logo apos para
verificar ele fez (docker ps -a) e verificou o tempo em que ele foi parado 
(1:02:03) - Ele mostrou que tem uma forma de rodar um servidor sem precisar travar a maquina usando 
o comando (docker run -d nginx:1.19.10-alpine), apos isso o prompt mostrou o id em que ele esta rodando
(1:05:06) - Mostrar os logs do container use (docker logs <nome do container>) ou (docker logs <id>)
(1:05:29) - Para dar um stop neste container basta usar o comando (docker stop <id>)
** OBS
  Excluir um container (docker rm) pra excluir imagem (docker rmi)
(1:08:10) - Para fazer o container ser visto pela minha maquina tenho que especificar a porta em que 
ele vaificar disponivel então preciso fazer o seguinte ( docker run -d -p 8000:80 nginx:1.19.10-alpine)

Chegamos em uma parte importante deste curso (1:11:19) ele agora va rodar um HTML dentro da aplicação
ele usa o editor chamado nvim index.html

para redirencionar o caminho onde esta a plicação devo fazer 
docker run -d -p <porta:saida> -v <diretorio> nginx:1.19.10-alpine
exemplo que ele deu , ele falou que no linux use $(pwd) ele vai direto ao diretorio, logo no dele ficou
docker run -d -p 8000:80 -v $(pwd):/usr/share/nginx/html nginx:1.19.10-alpine

Agora vamos acessar o container como se fosse o shell do linux ( sabendo o id do container )
docker exec -it -> vai exeutar um comando dentro do container
docker exec -it <id> <executavel>, mas vamos ver e brincar com o que tem dentro do container 
docker exec -it <id> /bin/sh 
Pronto ele esta mostrando o que tem la dentro do container 

Então ele tenabrir por comando shell e faz cd /.....
ls
touch arquivo-xpto.txt
agora ele sai do shell com -> exit e para o container docker stop <id>

(1:25:10) - Aqui vamos para a criação de um docker file
(1:42:00) - Aqui ele cria um docker file para produção
(1:51:48) - Publicação com servidor