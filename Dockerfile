# base image
FROM node:14.18.2-alpine

# working directory
WORKDIR /app

# Install dependencies
RUN npm install

# Copy rest of the app to the working directory
COPY . .

# Expose port 8000
EXPOSE 8000

# Define entry point
CMD ["npm", "start"]