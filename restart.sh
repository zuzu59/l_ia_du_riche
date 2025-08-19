#!/usr/bin/env bash
#Petit script pour redémarrer facilement Ollama et Open WEBUI dans une vm Ubuntu de  Proxmox
#zf250819.1622

# source: 

echo -e "Redémarrage de Ollama...

"

docker compose restart


echo -e "

Ollama redémarré !

"


