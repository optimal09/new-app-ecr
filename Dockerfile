# Use Node.js v14 as the base image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy your application code to the container
COPY . /app

# Install any necessary dependencies for your application
RUN npm install --production

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environmental variable
ENV NODE_ENV=production

# Set the command to run your application
CMD ["node", "index.js"]


