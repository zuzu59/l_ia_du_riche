# l_ia_du_riche
Même chose que l'ai du pauvre mais cette fois avec un interface WEB au lieu de ssh et possibilité de nourrir son modèle perso

zf241110.1122, zf250412.1116

Pour une installation sur un serveur Proxmox, j'ai fait une documentation détaillée dans mon *Proxmox sur un NUC, mais c'est si simple ;-)* que l'on peu trouver ici:

https://docs.google.com/document/d/1k1uVhVjPzqJOoVm0QMkPrjgZNUV07pYZwnXaDLSKZB4/edit?tab=t.0#heading=h.v1aqmw51j32i

que je conseille fortemet de lire car il y a pleins de trucs au sujet de Open WEBUI !


Autrement pour les pressés, il y a ceci:

Il faut installer docker avec le script docker et après faire un:

```
docker compose up
```

et après si les logs sont corrects faire un ctrl+c puis un

```
docker compose up -d
```

pour le mettre en tâche ds fond

Pour faire la mise à jour de Open WEB UI ainsi que Ollama il faut lire ceci:

https://docs.openwebui.com/getting-started/updating/


