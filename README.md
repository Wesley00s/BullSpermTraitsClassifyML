#  Sperm Traits Classifier API

- Este aplicativo serve como um serviço de back-end desenvolvido com Kotlin e Spring Boot para conexão com um front-end React. Sua principal funcionalidade envolve o emprego de algoritmos de aprendizado de máquina, especificamente baseados em Python, para classificar as características reprodutivas de touros com base nas características de seus espermatozoides.

```
|src
  |main
    |kotlin
      |org
        |wesley
          |sperm
            |traits
              |classify
                |controller
                  ServiceController.kt
                |model
                  Data.kt
                |repositories
                  ReceiveDataRepository.kt
                |service
                  |implement
                    ReceiveDataServiceImplement.kt
                  ReceiveDataService.kt
                Application.kt
    |python
      |SpermTraitsPy
        RandomForestModel.py
```

## Endpoint

O endpoint principal da API lida com solicitações POST para envio de dados e recebimento do resultado da classificação. Ele aceita dados no formato especificado pela classe de dados Data e retorna se o touro é apto para reprodução, apto com restrições ou totalmente apto.

## Deployment

- Back-end: o back-end do aplicativo é implantado no Google Cloud Platform em [Back](https://app-cz7upoyahq-uc.a.run.app).
- Frontend: A contraparte do frontend está hospedada no Vercel em [Front](sperm-traits-classify-ml-front.vercel.app). Sua implementação se encontra neste repositório [SpermTraitsClassifyML-Front](https://github.com/Wesley00s/SpermTraitsClassifyML-Front.git)
- Banco de dados: A aplicação utiliza uma instância do PostgreSQL para armazenar os dados que serão analisados pelo algoritmo de aprendizado de máquina.

## Machine Learning 
O aspecto de aprendizado de máquina deste aplicativo envolve um script Python localizado em [/src/main/python/SpermTraitsPy/RandomForestModel.py](https://github.com/Wesley00s/BullSpermTraitsClassifyML/blob/master/src/main/python/SpermTraitsPy/RandomForestModel.py). Este script contém a implementação do modelo de floresta aleatória utilizado para classificar as características reprodutivas de touros com base nas características espermáticas.
