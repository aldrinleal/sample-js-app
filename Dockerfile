FROM etiv/nvm-base

ENV NODE_VER=iojs-2.3.1

RUN bash --login 

RUN mkdir /app

COPY . /app/

WORKDIR /app

EXPOSE 3000

RUN bash --login -c 'npm install'

CMD '/root/.nvm/nvm.sh && node /app/app.js'
