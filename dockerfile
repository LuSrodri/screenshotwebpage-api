FROM debian:latest

RUN apt-get update

RUN apt-get install -y nodejs npm

WORKDIR /usr/src/app

COPY package.json ./

RUN npx playwright install chromium

RUN npx playwright install-deps chromium

RUN npm install

COPY . .

EXPOSE $PORT

CMD ["npm", "start"]