#!/usr/bin/env bash
#Petit script pour arrêter facilement Ollama et ComfyUI dans une vm Ubuntu de Proxmox
# ATTENTION, cela ne fonctionne seulement dans mon environnement de dev
#zf250913.1938

# source: 

echo -e "Arrêt de ComfyUI...

"
cd ~/dev/z-comfyui
./stop.sh


echo -e "Arrêt de Ollama...

"
cd ~/dev/l_ia_du_riche
./stop.sh


echo -e "

Ollama et ComfyUI arrêtés !

"

