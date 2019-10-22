FROM node:10
WORKDIR /code
COPY package*.json ./
RUN npm install
RUN npm ci --only=production
COPY . .
EXPOSE 8080
CMD [ "node", "example-session-redis.js" ]