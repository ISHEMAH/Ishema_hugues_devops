# Use official Node.js 22 image
FROM node:22

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY app.js ./

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"] 