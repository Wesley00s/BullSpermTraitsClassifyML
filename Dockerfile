# Use a imagem base
FROM openjdk:21

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo JAR para o diretório atual no contêiner
COPY build/libs/SpermTraitsClassify-0.0.1-SNAPSHOT.jar .

# Comando para executar o arquivo JAR
CMD ["java", "-jar", "SpermTraitsClassify-0.0.1-SNAPSHOT.jar"]
