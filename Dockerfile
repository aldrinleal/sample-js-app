FROM debian

RUN apt-get update

RUN apt-get -y install nodejs npm

RUN mkdir /app

COPY . /app/

ENV PORT 8000

EXPOSE 8000

WORKDIR /app

RUN npm install

CMD nodejs /app/index.js