# Desafio Docker FullCycle

Este repositório contém um desafio para criar uma imagem Docker extremamente pequena.

## Imagem Docker

A imagem Docker está disponível no Docker Hub com o nome `robertorp/fullcycle`.

## Comandos para rodar a imagem

Para baixar e rodar a imagem Docker, utilize os seguintes comandos:

```sh
docker pull robertorp/fullcycle
docker run robertorp/fullcycle
```

## Tamanho da Imagem

A imagem Docker `robertorp/fullcycle` tem apenas 1.75 MB. Você pode verificar o tamanho da imagem utilizando o comando abaixo:

```sh
docker images robertorp/fullcycle
```

A saída será similar a esta:

```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
robertorp/fullcycle latest              <image_id>          <creation_date>     1.75MB
```

![Tamanho da Imagem](desafio%2001%20tamanho%20imagem.png)
