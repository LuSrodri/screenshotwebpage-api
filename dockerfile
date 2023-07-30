FROM debian:11

USER root

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get -y install curl
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs

WORKDIR /screenshotwebpage

COPY package.json ./

RUN npm install

RUN npx playwright install --with-deps chromium

COPY . .

EXPOSE $PORT

CMD ["npm", "start"]