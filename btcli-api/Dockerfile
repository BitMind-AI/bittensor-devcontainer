FROM node:20

WORKDIR /app

# Copy and build btcli-api
COPY . .
RUN npm ci && npm run build

CMD ["npm", "run", "start:prod"]