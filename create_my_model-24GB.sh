#!/bin/bash

# Petit script pour créer des nouveaux modèles avec une fenêtre de contexte propre à eux
#
#zf260207.2053, zf260502.1902

read -p "Etes-vous certain de vouloir créer ces nouveaux modèles ?"

rm ./ollama/*.modelfile
cp *.modelfile ./ollama

#docker exec -it ollama ollama create ministral-3:8b-wctx -f /root/.ollama/ministral-3:8b-wctx.modelfile
#docker exec -it ollama ollama create ministral-3:14b-wctx -f /root/.ollama/ministral-3:14b-wctx.modelfile
#docker exec -it ollama ollama create nemotron-3-nano:4b-wctx -f /root/.ollama/nemotron-3-nano:4b-wctx.modelfile
#docker exec -it ollama ollama create toto-wctx -f /root/.ollama/glm-4.7-flash-q4_K_M-wctx.modelfile

docker exec -it ollama ollama create z-gpt-oss-20b-128k -f /root/.ollama/gpt-oss-20b-wctx.modelfile

docker exec -it ollama ollama create z-qwen3-5-2b-128k -f /root/.ollama/qwen3.5-2b-wctx.modelfile
docker exec -it ollama ollama create z-qwen3-5-4b-128k -f /root/.ollama/qwen3.5-4b-wctx.modelfile
docker exec -it ollama ollama create z-qwen3-5-9b-128k -f /root/.ollama/qwen3.5-9b-wctx.modelfile

docker exec -it ollama ollama create z-qwen3.6-4b-plus-128k -f /root/.ollama/qwen3.6-4b-plus-wctx.modelfile
docker exec -it ollama ollama create z-qwen3-6-27b-xk -f /root/.ollama/qwen3.6-27b-wctx.modelfile
docker exec -it ollama ollama create z-qwen3-6-35b-xk -f /root/.ollama/qwen3.6-35b-wctx.modelfile

docker exec -it ollama ollama create z-gemma4-e2b-128k -f /root/.ollama/gemma4-e2b-wctx.modelfile
docker exec -it ollama ollama create z-gemma4-e4b-128k -f /root/.ollama/gemma4-e4b-wctx.modelfile

docker exec -it ollama ollama create z-granite4-1-e3b-128k -f /root/.ollama/granite4.1-3b-wctx.modelfile

docker exec -it ollama ollama list
