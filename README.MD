# Reverse Proxy e web server
Semplice prova di un sito Web servito attraverso un reverse proxy NGINX cofigurato anche per certificati ssl.
Il web server e NGINX sono eseguiti su due container docker distinti, chiamati rispettivamente "webserver" e "reverseproxy"

# Istruzioni per l'uso:
Scaricare il repository in locale

`git clone git@github.com:naddi96/NGNX-reverse-proxy-docker-configuration.git`

n.b. tutti i comandi vanno eseguiti nella root del progetto e potrebbero richiedere il sudo. 
Per avviare entrambi basta eseguire

`docker-compose up -d`

Mentre se si vuole stoppare ma non cancellare i due container

`docker-compose stop`

Se si vuole stoppare e cancellare i container

`docker-compose down`

Per generare un nuovo certificato autogenerato

`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-config-cert/cert.key -out nginx-config-cert/cert.crt`


