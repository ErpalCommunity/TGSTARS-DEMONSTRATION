FROM node:20-alpine

WORKDIR /bot

COPY package*.json ./
COPY api ./api
COPY vercel.json ./

RUN npm install

CMD ["node", "--experimental-modules", "api/webhook.js"]