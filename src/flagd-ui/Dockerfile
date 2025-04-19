# syntax=docker/dockerfile:1.4

FROM node:20-alpine AS builder
WORKDIR /app

# Use local files relative to Docker build context
COPY package*.json ./
RUN npm ci

COPY . ./
RUN npm run build

# Production image
FROM node:20-alpine AS runtime
WORKDIR /app

COPY --from=builder /app/package*.json ./
RUN npm ci --omit=dev

COPY --from=builder /app/.next ./.next
COPY --from=builder /app/next.config.mjs ./next.config.mjs

EXPOSE 4000
CMD ["npm", "start"]
