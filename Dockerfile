FROM node:16-alpine

ARG PORT=8078

RUN mkdir -p /usr/src/scratch-paint

WORKDIR /usr/src/scratch-paint

COPY . .

RUN npm install && npm run build

EXPOSE $PORT

CMD [ "npm", "start" ]
