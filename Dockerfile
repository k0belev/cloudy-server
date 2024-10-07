FROM node:21-alpine

WORKDIR /app

COPY . .

RUN yarn install --frozen-lockfile

COPY . .

RUN yarn build

EXPOSE 5000

CMD ["node", "./dist/main.js"]