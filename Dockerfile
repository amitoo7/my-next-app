# Use a Node.js image for building
FROM node:18 AS builder

# Set the working directory
WORKDIR /app

# Copy package.json and lock files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files and build the Next.js app
COPY . .
#RUN npm run build

# Expose port and start the app
EXPOSE 3000
CMD ["npm", "run", "dev"]

