# Usa uma imagem base com Ubuntu
FROM ubuntu:latest

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Atualiza a lista de pacotes e instala o OpenJDK 17, Node.js e npm
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk-headless nodejs npm

# Verifica se o Java e o Node.js foram instalados corretamente
RUN java -version && \
    node -v && \
    npm -v

# Copia todos os arquivos do diretório atual para o diretório de trabalho no contêiner
COPY . .

# Executa o comando para compilar e iniciar a aplicação
CMD ["java", "-jar", "build/libs/SpermTraitsClassify-0.0.1-SNAPSHOT.jar"]
