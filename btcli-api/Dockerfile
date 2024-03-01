FROM node:20

WORKDIR /app

# Copy and build btcli-api
COPY . .
RUN npm install && npm run build

CMD ["npm", "run", "start:prod"]