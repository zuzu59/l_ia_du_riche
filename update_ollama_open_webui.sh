#!/usr/bin/env bash
#Petit script pour passer les updates facilement pour Ollama ainsi que Open WEBUI
#zf250316.1804

read -p "Etes-vous certain de vouloir tout effacer ce qui ne tourne pas au niveau Docker sur votre machine, donc un system prune ? (CTRL-C pour arrêter)"
read -p "Mais cela va VRAIMENT VRAIMENT tout effacer ce qui ne tourne pas, donc un prune ?"

docker compose down
docker system prune -a -f
docker compose up -d

