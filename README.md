# l_ia_du_riche
Même chose que l'ai du pauvre mais cette fois avec un interface WEB (Open WEBUI) au lieu de ssh et possibilité de nourrir son modèle perso RAG

zf241110.1122, zf2510502.2157


## Utilisation

### Pour démarrer avec utilisation du CPU & GPU
```
./start-gpu.ch
```

### Pour démarrer avec utilisation du CPU seulement
```
./start-cpu.ch
```

### Pour arrêter
```
./stop.sh
```

### Pour redémarer 
```
./restart.sh
```

### Pour updater Ollama et Open WEBUI (soit un soit l'autre ! )
```
update_ollama_open_webui-cpu.sh
update_ollama_open_webui-gpu.sh
```

### Pour updater tous les modèles de Ollama
```
update_models.sh
```


### Pour tout effacer
```
make remove
```

## ATTENTION
Open WEBUI a un TRES GROS défaut quand il utilise Ollama, il génère des requêtes asynchrones en // ce qui fait que le CPU 
n'est pas libéré à la fin de la réponse pendant plusieurs dizaines de secondes !

Du coup, si on pose tout de suite une 2e question la réponse va être beaucoup plus lente et pour la 3e question, tout se 
bloque pendant un bon moment !

Ceci est dû parce qu'après la réponse, Open WEBUI génère automatiquement les titres et tags dans l'historique des questions 
à gauche dans Open WEBUI avec le modèle utilisé pour la question. 
Et si ce modèle est 'gros' donc lent et que la réponse est longue, il va lancer des requête à Ollama en // en tâche de fond et tout bloquer au bout d'un moment.

L'astuce pour éviter ce problème est de changer le modèle utilisé pour la génération des titres et tags et de prendre un modèle beaucoup plus petit et rapide !

Le modèle qwen3:0.6b est super rapide et assez puissant pour faire un résumé correct de la réponse. On doit en 1er le 'charger' comme pour tout modèle 
puis le rendre *publique* afin de pouvoir l'utiliser pour la génération automatique de titres et tags en allant sur son *profile* (tout en haut à droite) 
dans *Admin pannel/Settings/Modèles* et on clique sur qwen3:0.6b pour le rendre publique (on n'oublie pas de *sauver*).

Après toujours dans *settings* on va dans *Interface* et on choisit *deux fois* le modèle qwen3:0.6b au lieu du modèée actuel (on n'oublie pas de *sauver*).

C'est tout !


## Sources
https://github.com/open-webui/open-webui

https://github.com/ollama/ollama


## Astuces

### Démarrer seulement la partie serveur de Ollama
Serveur avec kv cache à f16:
```
docker rm -f ollama 2>/dev/null || true && docker run -d --restart unless-stopped --name ollama -v ./ollama:/root/.ollama -p 11434:11434 --gpus all ollama/ollama:latest
```

Serveur avec compression de kv cache à q4_0 (consomme nettement moins de VRAM avec des grandes fenêtres de contextes
```
docker rm -f ollama 2>/dev/null || true && docker run -d --restart unless-stopped --name ollama -v ./ollama:/root/.ollama -p 11434:11434 --gpus all -e OLLAMA_FLASH_ATTENTION=1 -e OLLAMA_KV_CACHE_TYPE=q4_0 ollama/ollama:latest
```

### Bench, la question qui tue et qui montre la vraie différence d'un bon modèle
Très peu de modèles arrivent à répondre correctement !
```
je suis à 100m d'une station de lavage automobiles, je veux laver ma voiture, dois-je aller à pieds ou en voiture ?

je veux laver ma voiture, je suis à 100m d'une station de lavage automobiles, dois-je aller à pieds ou en voiture ?

je veux laver ma voiture à une station de lavage automobiles qui se trouve à 100m, dois-je aller à pieds ou en voiture ?
```



