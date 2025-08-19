#!/usr/bin/env bash
#Petit script pour passer les updates facilement pour Ollama ainsi que Open WEBUI qui utilise le CPU seulement
#zf250316.1804, zf250819.1709

./stop.sh
docker container rm -f open-webui ollama
docker image rm -f ghcr.io/open-webui/open-webui:main ollama/ollama
./start-cpu.sh
