FROM node:current-alpine

WORKDIR /app

COPY . .

EXPOSE 9090

RUN npm install -g --verbose
RUN npm ci

CMD ["npm", "start"]