#!/usr/bin/env bash
#Petit script pour démarrer facilement Ollama et Open WEBUI avec GPU dans une vm Ubuntu de  Proxmox
#zf250819.1557

# source: 

echo -e "
Démarrage de Ollama...

ATTENTION: il faut faire un ENTER pour continuer le démarrage !

"

#./stop.sh

./run-compose.sh --enable-gpu



echo -e "

Ollama démarré !

"


