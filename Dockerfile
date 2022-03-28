#Utilisation de l'image alpine
FROM alpine:latest

#COPY du script
COPY ./script.sh /root/script.sh
RUN chmod +x /script.sh
ENTRYPOINT ["/root/script.sh"]

#Mettre le shell par defaut en bash
RUN apk add --no-cache bash
RUN --shell=/bin/bash