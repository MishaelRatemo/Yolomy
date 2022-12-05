# base image
FROM node:13.14.0-alpine
LABEL version="1.0" \
 maintainer="Mishael Ratemo <ratemomishael@gmail.com>"

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