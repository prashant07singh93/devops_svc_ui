FROM node:16
WORKDIR /app
COPY package* ./
RUN npm ci --omit=dev
COPY . .
CMD ["node", "server.js"]