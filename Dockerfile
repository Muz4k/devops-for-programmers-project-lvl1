FROM node:14.6
WORKDIR /app

LABEL description="nodos-project from Hexlet"

RUN npm install --global @nodosjs/cli@0.0.55

CMD ["sh", "-c", "nodos server -h 0.0.0.0"]

EXPOSE 8080