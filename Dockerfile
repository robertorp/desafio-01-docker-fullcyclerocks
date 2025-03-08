# foi obrigado a usar está versão para ficar pequeno a imagem
# por exemplo se deixar apenas golang ele fica 2.1MB
# não entendo muito de golang, mas acredito que seja por ser hellow world ?
FROM golang:1.18-alpine AS build

# Criar diretório de trabalho
WORKDIR /app

# Copiar o código-fonte
COPY main.go .

# Compilar a aplicação - ldfalgs '-s -w' remove informações de debug
RUN go build -ldflags '-s -w' main.go

# Criar imagem final menor #sendo sincero não conheço scratch pelo que vi o objetivo é hello world, está no docker hub escrito
# envolveu pesquisa no stackoverflow medium um link aqui > https://medium.com/@pavelfokin/how-to-build-a-minimal-golang-docker-image-b4a1e51b03c8
# outro link https://www.youtube.com/watch?v=uDCzxwFT2-w
# descobri o que é scratch, aos 13:45 segundos da primeira aula é falado
FROM scratch

# meu diretório de trabalho
WORKDIR /app

# Copiar o binário compilado da etapa de build
COPY --from=build /app .

# Executar a aplicação
ENTRYPOINT ["./main"]