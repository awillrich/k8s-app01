# Verwende das offizielle Nginx-Image als Basis
FROM nginx:latest

# Kopiere den Inhalt deines Webseitenverzeichnisses in das Image
COPY ./src /usr/share/nginx/html

# Öffne den Port 80, auf dem der Webserver läuft
EXPOSE 80

# Starte Nginx, wenn der Container gestartet wird
CMD ["nginx", "-g", "daemon off;"]
