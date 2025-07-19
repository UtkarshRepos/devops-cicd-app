# Use official Node image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package files first (for caching dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port your app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
