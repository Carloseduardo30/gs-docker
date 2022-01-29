# React com Docker

Este projeto foi desenvolvido para o processo seletivo da Frexco que tem como objetivo principal o foco no deploy da aplicação.

## React

React é uma biblioteca JavaScript para construção de interface do usuário.

O Create React App é uma maneira oficialmente suportada de criar aplicativos React de página única. Ele oferece uma configuração de compilação moderna sem configuração.

## Docker

O Docker é uma plataforma open-source que facilita a criação e administração de ambientes isolados. Então, você consegue criar, implantar, copiar e migrar de um ambiente para outro com maior flexibilidade. A ideia do Docker é subir apenas uma máquina, ao invés de várias. E, nessa única máquina, você pode rodar várias aplicações sem que haja conflitos entre elas.

### Dockerfile

Um Dockerfile é um conjunto de instruções usado para construir uma imagem no Docker. Dentro deste arquivo, declaramos qual o software que iremos usar para nosso projeto.

Para um projeto React, vamos precisar do Node.js. O Dockerfile é geralmente usado para fins de produção.

O acesso à aplicação ocorre atráves do redirecionamento feito pelo NGINX da porta 8080 para a porta 80 ao host.

### Docker-compose

O Docker Compose é uma ferramenta para definir e executar aplicativos Docker de vários containers. Com o Docker Compose, você usa um arquivo YAML para configurar os serviços do seu aplicativo.
Então, com um único comando, você cria e inicia todos os serviços de sua configuração, pode ser inúmeros serviços de uma única vez, só irá depender da sua configuração.

### .Dockerignore

Antes que a CLI do docker envie o contexto para o daemon do docker, ela procura um arquivo chamado .dockerignore no diretório raiz da aplicação. Se esse arquivo existir, a CLI modifica o contexto para excluir arquivos e diretórios que correspondam aos padrões nele. Isso ajuda a evitar o envio desnecessário de arquivos e diretórios grandes ou confidenciais para o daemon e potencialmente adicioná-los a imagens usando ADD ou COPY.

## NGINX

O nginx é um proxy reverso, que tem como tarefa servir arquivos como imagens ou páginas HTML estáticas. Serve como balanceador de carga, a estrutura do software é assíncrona e orientada a eventos; possibilitando o processamento de muitas solicitações ao mesmo tempo. Neste projeto estamos utilizando uma requisição mais simples de servidor.
