#!/usr/bin/env bash
#Petit script pour passer les updates facilement pour Ollama qui utilise le GPU
#zf250316.1804, zf260515.1022

./stop.sh
docker container rm -f open-webui ollama
docker image rm -f ghcr.io/open-webui/open-webui:main ollama/ollama
./start-ollama-srv-falsh-q4_0.sh

