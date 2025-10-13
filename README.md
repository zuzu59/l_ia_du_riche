# l_ia_du_riche
Même chose que l'ai du pauvre mais cette fois avec un interface WEB (Open WEBUI) au lieu de ssh et possibilité de nourrir son modèle perso RAG

zf241110.1122, zf251013.1751


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

