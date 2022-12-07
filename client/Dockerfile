# # base image
# FROM node:14.21.1-alpine
# LABEL version="1.0" \
#  maintainer="Mishael Ratemo <ratemomishael@gmail.com>"

# # working directory
# WORKDIR /app

# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy rest of the app to the working directory
# COPY . .

# # Expose port 8000
# EXPOSE 3000

# # Define entry point
# CMD ["npm", "start"]
FROM node:16.17.1-alpine3.16 as build
WORKDIR /usr/app
COPY . /usr/app

RUN npm run build

FROM nginx:1.23.1-alpine
EXPOSE 80
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /usr/app/build /usr/share/nginx/html