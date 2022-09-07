FROM debian:buster

RUN apt-get update && \
    apt-get -y install nodejs npm

RUN mkdir -p app

ADD snake.tar app/
RUN  npm i --save ejs
RUN npm i -S express
WORKDIR /app/snake
CMD ["npm", "run", "start"]

