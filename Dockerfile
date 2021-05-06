FROM node:14.6

LABEL description="nodos-project from Hexlet"

RUN npm install --global @nodosjs/cli@0.0.55

WORKDIR /app

CMD nodos server -h 0.0.0.0

EXPOSE 8080