FROM debian:latest

RUN apt-get update

RUN apt-get install -y nodejs npm

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

RUN npx playwright install chromium

RUN npx playwright install-deps chromium

COPY . .

EXPOSE $PORT

CMD ["npm", "start"]