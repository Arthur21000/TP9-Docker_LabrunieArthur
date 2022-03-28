#Utilisation de l'image alpine
FROM alpine:latest

#COPY du script
COPY script.sh /script.sh

#Ajouter le bash
RUN apk add --no-cache bash

#Mettre le script bash par defaut pour l'utilisateur root
RUN apk add shadow
RUN usermod --shell /bin/bash root

#Lancer le script echo
RUN su
CMD ["/script.sh"]