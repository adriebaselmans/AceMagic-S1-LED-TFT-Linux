FROM node:18-slim

# Install libusb and other required packages
RUN apt-get update && apt-get install -y \
    libusb-1.0-0 \
    fonts-liberation \
    fonts-dejavu \
    fonts-freefont-ttf \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8686

CMD ["node", "main.js"]
