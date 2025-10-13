#!/usr/bin/env bash
#Petit script pour passer les updates facilement de tous les modèles d'un coup de Ollama
#zf251013.1731, zf251013.1735


docker exec -it ollama sh -c 'ollama list | awk '\''NR>1 && !/reviewer/ {print $1}'\'' | xargs -n1 ollama pull'
./restart.sh

