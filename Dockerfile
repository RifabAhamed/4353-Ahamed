# Use Node.js 14 as the base image
FROM node:14

# Set working directory within the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which the Node.js server will run
EXPOSE 3000

# Command to start the Node.js server
CMD ["npm", "start"]
