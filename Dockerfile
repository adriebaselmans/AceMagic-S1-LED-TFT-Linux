FROM node:18-slim

# Install libusb and other required packages
RUN apt-get update && apt-get install -y \
    libusb-1.0-0 \
    fonts-liberation \
    fonts-dejavu \
    fonts-freefont-ttf \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy only s1panel source files
COPY s1panel/package*.json ./

RUN npm install

COPY s1panel/. .

EXPOSE 8686

CMD ["node", "main.js"]
# Dockerfile for s1panel-service
# ...existing content from your Dockerfile...
