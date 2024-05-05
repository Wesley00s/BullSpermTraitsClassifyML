#!/bin/bash

java -jar build/libs/SpermTraitsClassify-0.0.1-SNAPSHOT.jar && cd src/main/react/sperm-bulls-classify-frontend && npm install && npm start
