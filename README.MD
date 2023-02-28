# Reverse Proxy https for webservice

How to configure nginx as a https reverse proxy for serving a webservice into the web.
the webservice and nginx are executed on two distinct docker containers called "webserver" and "reverseproxy".

The download and renewal of the certificate has been automated and require no input except for the insertion off your domain name and email into the `docker-compose.yml` file


# How to use:

clone the repository in your web server

`git clone git@github.com:naddi96/NGNX-reverse-proxy-docker-configuration.git`


change directory into the repository

`cd NGNX-reverse-proxy-docker-configuration`

set the environment variable in the `docker-compose.yml` file according to your dns domain and email

    environment:
      - DOMAIN_NAME= yourdomain.com
      - EMAIL= your@email.com    


use standard docker-compose command for starting and stopping

`docker-compose up -d`

`docker-compose stop`

`docker-compose down`

Congrats you now have a https on your webservice!


