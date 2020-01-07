FROM ubuntu:bionic

RUN apt-get update -yq \
  && apt-get install curl -yq \
  && curl -sL https://deb.nodesource.com/setup_11.x | bash \
  && apt-get install nodejs -yq

WORKDIR /var/app

COPY ./index.js .
COPY ./package.json .

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]