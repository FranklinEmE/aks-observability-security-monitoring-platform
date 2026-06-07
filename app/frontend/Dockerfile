# ---------- BUILD ----------
FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build


# ---------- RUN ----------
FROM nginx:alpine

# install required tools
RUN apk add --no-cache wget

# fix nginx permissions (IMPORTANT)
RUN mkdir -p /var/cache/nginx && \
    mkdir -p /var/run && \
    chmod -R 777 /var/cache/nginx && \
    chmod -R 777 /var/run

# copy build
COPY --from=builder /app/build /usr/share/nginx/html

# healthcheck
HEALTHCHECK CMD wget -qO- http://localhost:80 || exit 1

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
