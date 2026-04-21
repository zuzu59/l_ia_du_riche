#!/bin/bash

# Petit script pour créer des nouveaux modèles avec une fenêtre de contexte propre à eux
#
#zf260207.2053, zf260408.0936

read -p "Etes-vous certain de vouloir créer ces nouveaux modèles ?"

rm ./ollama/*.modelfile
cp *.modelfile ./ollama

docker exec -it ollama ollama create ministral-3:8b-wctx -f /root/.ollama/ministral-3:8b-wctx.modelfile
docker exec -it ollama ollama create ministral-3:14b-wctx -f /root/.ollama/ministral-3:14b-wctx.modelfile
docker exec -it ollama ollama create gpt-oss-20b-wctx -f /root/.ollama/gpt-oss-20b-wctx.modelfile
docker exec -it ollama ollama create qwen3.5-9b-wctx -f /root/.ollama/qwen3.5-9b-wctx.modelfile
docker exec -it ollama ollama create nemotron-3-nano:4b-wctx -f /root/.ollama/nemotron-3-nano:4b-wctx.modelfile
docker exec -it ollama ollama create toto-wctx -f /root/.ollama/glm-4.7-flash-q4_K_M-wctx.modelfile
docker exec -it ollama ollama create gemma4-e2b-wctx -f /root/.ollama/gemma4-e2b-wctx.modelfile
docker exec -it ollama ollama create tutu-wctx -f /root/.ollama/gemma4-e4b-wctx.modelfile

docker exec -it ollama ollama list
