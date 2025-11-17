FROM node:18-alpine

WORKDIR /app

# Install only production dependencies for runtime image
COPY package.json package-lock.json* ./
RUN npm install --production --no-audit --no-fund

COPY src ./src

EXPOSE 3000

CMD ["node", "src/index.js"]
