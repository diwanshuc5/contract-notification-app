# Use an official Node.js runtime (LTS version)
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Install nodemon globally for hot reload
RUN npm install -g nodemon

# Copy the rest of the application
COPY . .

# Expose the port your app runs on (e.g., 3000)
EXPOSE 3000

# Start the application with nodemon
CMD ["nodemon", "server.js"]