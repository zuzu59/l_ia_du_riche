#!/usr/bin/env bash
#Petit script pour démarrer facilement ComfyUI et si jamais arrêter Ollama s'il tourne déjà dans une vm Ubuntu de Proxmox
# ATTENTION, cela ne fonctionne seulement dans mon environnement de dev
#zf250913.1931

# source: 

echo -e "Arrêt de Ollama...

"
cd ~/dev/l_ia_du_riche
./stop.sh


echo -e "Démarre ComfyUI gpu...

"
cd ~/dev/z-comfyui
./start.sh


echo -e "

ComfyUI démarré !

"

