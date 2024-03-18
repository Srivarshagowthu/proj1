# Use Node.js LTS version as base image
FROM node:lts AS development

# Set working directory
WORKDIR /

# Copy package.json and package-lock.json
COPY src/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY src/ ./

# Expose the port the app runs on (default is 3000 for React)
EXPOSE 3000

# Command to start the development server
CMD ["npm", "run", "dev"]
