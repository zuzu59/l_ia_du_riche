#!/usr/bin/env bash
#Petit script pour démarrer facilement un Ollama serveur flash q4_0
#zf260510.1709

# source: 

echo -e "
Démarrage de Ollama serveur flash q4_0...


"

docker rm -f ollama 2>/dev/null || true && docker run -d --restart unless-stopped --name ollama -v ./ollama:/root/.ollama -p 11434:11434 --gpus all -e OLLAMA_FLASH_ATTENTION=1 -e OLLAMA_KV_CACHE_TYPE=q4_0 ollama/ollama:latest



echo -e "

Ollama serveur flash q4_0 démarré !

"


