FROM node:22-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY dist ./dist
ENV NODE_ENV=production HOST=0.0.0.0 PORT=3100
EXPOSE 3100
CMD ["node", "dist/server.js"]
