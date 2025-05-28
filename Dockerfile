# Use Node.js version 18 from Docker's official image
FROM node:18

# Set the folder inside the container where your app will live
WORKDIR /usr/src/app

# Copy just package.json and install dependencies (faster builds)
COPY package*.json ./
RUN npm install

# Copy the rest of your app files into the image
COPY . .

# Tell Cloud Run which port you're using
EXPOSE 8080

# Tell Docker how to start your app
CMD ["node", "server.js"]
