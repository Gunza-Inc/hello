FROM node:lts-alpine as build-stage

WORKDIR . /nuxt-app

COPY package*.json ./

COPY . .

RUN npm install
RUN npm run build

EXPOSE 3000

CMD [ "npm", "run", "start" ]



