FROM node:14.12.0-alpine3.12

WORKDIR /frontend

RUN apk update && \
  npm install -g @vue/cli

COPY package.json ./

RUN npm install

COPY . ./

CMD ["npm", "run", "serve"]
