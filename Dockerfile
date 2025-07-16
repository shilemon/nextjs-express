# Dockerfile

# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy all files
COPY . .

# Build Next.js (optional if pre-building)
RUN npm run build

# Expose the port
EXPOSE 3000

# Start app
CMD ["npm", "run", "start"]
