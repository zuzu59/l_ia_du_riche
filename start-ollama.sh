#!/usr/bin/env bash
#Petit script pour démarrer facilement Ollama et si jamais arrêter ComfyUI si il tourne déjà dans une vm Ubuntu de Proxmox
# ATTENTION, cela ne fonctionne seulement dans mon environnement de dev
#zf250913.1932

# source: 

echo -e "Arrêt de ComfyUI si démarré...

"
cd ~/dev/z-comfyui
./stop.sh


echo -e "Démarre Ollama gpu...

"
cd ~/dev/l_ia_du_riche
./start-gpu.sh


echo -e "

Ollama démarré !

"

