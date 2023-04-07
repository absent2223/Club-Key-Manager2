FROM node:18-buster-slim
WORKDIR /app
COPY package*.json ./
COPY tsconfig.json ./
RUN npm install --engine-strict
COPY . .
RUN npm run build
CMD [ "node", "./dist/main.js" ]