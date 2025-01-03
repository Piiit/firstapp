FROM node:lts-alpine

WORKDIR /node/app

COPY ../../src/index.js /code/
ENV NODE_ENV production

ENV PORT 8080
EXPOSE 8080

CMD ["node", "index.js"]

