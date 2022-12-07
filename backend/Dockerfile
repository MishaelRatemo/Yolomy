# base image
FROM node:14.21.1-alpine
LABEL version="1.0" \
 maintainer="Mishael Ratemo <ratemomishael@gmail.com>"


# working directory
WORKDIR /backend

COPY package*.json ./


# Install dependencies
RUN npm install

# Copy rest of the app to the working directory
COPY . .

# Expose port 8000
EXPOSE 5000

# Define entry point
CMD ["npm", "start"]