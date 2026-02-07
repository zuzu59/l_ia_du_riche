#!/bin/bash

# Petit script pour créer des nouveaux modèles avec une fenêtre de contexte propre à eux
#
#zf260207.2014

read -p "Etes-vous certain de vouloir créer ces nouveaux modèles ?"

cp *.modelfile ./ollama

docker exec -it ollama ollama create gpt-oss-20b-128k -f /root/.ollama/gpt-oss-20b-128k.modelfile
docker exec -it ollama ollama create qwen3-coder-30b-55k -f /root/.ollama/qwen3-coder-30b-55k.modelfile
docker exec -it ollama ollama create devstral-small-2-24b-55k -f /root/.ollama/devstral-small-2-24b-55k.modelfile

docker exec -it ollama ollama list
