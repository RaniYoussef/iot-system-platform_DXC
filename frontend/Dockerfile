# Stage 1: Build Angular app
FROM node:18-alpine AS build-stage
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build --output-path=dist/angular-temp

# Stage 2: Serve with NGINX
FROM nginx:alpine
COPY --from=build-stage /app/dist/angular-temp/browser /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
