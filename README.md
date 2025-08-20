# l_ia_du_riche
Même chose que l'ai du pauvre mais cette fois avec un interface WEB au lieu de ssh et possibilité de nourrir son modèle perso RAG

zf241110.1122, zf250820.1156


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

### Pour updater (soit un soit l'autre ! )
```
update_ollama_open_webui-cpu.sh
update_ollama_open_webui-gpu.sh
```

### Pour tout effacer
```
make remove
```

## ATTENTION
Open WEBUI a un TRES GROS défaut quand il utilise Ollama, il génère des requêtes asynchrones en // ce qui fait que le CPU 
n'est pas libéré à la fin de la réponse pendant plusieurs dizaines de secondes ! <br>
Du coup, si on pose tout de suite une 2e question la réponse va être beaucoup plus lente et pour la 3e question, tout se 
bloque pendant un bon moment !<br>
J'ai bien documenté ce problème et sa résolution dans ma petite docu mais c'est si simple sur Proxmox:

https://docs.google.com/document/d/1k1uVhVjPzqJOoVm0QMkPrjgZNUV07pYZwnXaDLSKZB4/edit?tab=t.0#heading=h.7zmqp4r6l0sf

