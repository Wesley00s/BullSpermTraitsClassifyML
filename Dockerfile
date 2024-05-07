# Usa uma imagem base com Ubuntu
FROM ubuntu:latest

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Atualiza a lista de pacotes e instala o Python 3 e pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv && \
    apt-get clean

# Instala as dependências do psycopg2
RUN apt-get install -y libpq-dev && \
    apt-get clean

# Cria e ativa o ambiente virtual
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Instala as bibliotecas Python necessárias dentro do ambiente virtual
RUN pip install pandas numpy psycopg2 scikit-learn

# Verifica se as bibliotecas foram instaladas corretamente
RUN python -c "import pandas, numpy, psycopg2, sklearn"

# Atualiza a lista de pacotes e instala o OpenJDK 17
RUN apt-get install -y openjdk-17-jdk-headless && \
    apt-get clean

# Verifica se o Java e o Node.js foram instalados corretamente
RUN java -version

# Copia todos os arquivos do diretório atual para o diretório de trabalho no contêiner
COPY . .

# Executa o comando para compilar e iniciar a aplicação
CMD ["java", "-jar", "build/libs/SpermTraitsClassify-0.0.1-SNAPSHOT.jar"]
