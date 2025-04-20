# === Stage 1: Build the React app ===
FROM node:20-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the source code and build the app
COPY . .
RUN npm run build

# === Stage 2: Serve with Nginx ===
FROM nginx:alpine

# Remove the default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy built React app from builder
COPY --from=builder /app/build /usr/share/nginx/html

# Copy custom Nginx config if you have one
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
