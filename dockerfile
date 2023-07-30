FROM debian:latest

RUN apt-get update

RUN apt-get install -y nodejs npm

RUN apt install wget

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

RUN apt install ./google-chrome-stable_current_amd64.deb -y

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

RUN npx playwright install chromium

RUN npx playwright install-deps chromium

COPY . .

EXPOSE $PORT

CMD ["npm", "start"]