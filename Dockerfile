# Base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose port (make it match your .env file or app setting)
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]