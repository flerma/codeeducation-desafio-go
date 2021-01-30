# README #

Repositório para entrega do Desafio GO do curso Fullcycle da Code Education 

### What is this repository for? ###

* Sumário
* Versão 1.0
* URL da imagem no docker hub
* Como rodar a aplicação?  

### URL da imagem no docker hub ###

* https://hub.docker.com/repository/docker/fernandolerma/codeeducation

### Como rodar a aplicação? ###

* Para executar rode os comandos abaixo:

    docker pull fernandolerma/codeeducation:latest  
    docker build -t fernandolerma/codeeducation .  
    docker run -it --rm --name mygoapp fernandolerma/codeeducation  

    A mensagem 'Code.education Rocks!' deve ser apresentada  
