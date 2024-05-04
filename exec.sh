#!/bin/sh

java -jar build/libs/SpermTraitsClassify-0.0.1-SNAPSHOT.jar
# shellcheck disable=SC2164
cd src/main/react/sperm-bulls-classify-frontend
npm start