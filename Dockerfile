# FROM node:latest

# # RUN apk add --no-cache nodejs npm

# WORKDIR /app

# COPY . ./app

# RUN npm install

# EXPOSE 3000

# ENTRYPOINT [ "node", "../bin/www" ]

# # CMD ["node", "./bin/www"]


FROM node:12-slim

# create a directory in your docker image
WORKDIR /app

# install dependencies
COPY ./package*.json ./

# run npm install. you just need the runtime dependencies here
RUN npm ci --only-production

# Copy the rest of the code
COPY ./ ./

# Expose the port, on which your application is running
EXPOSE 3000

# Run the code
CMD [ "node", "./bin/www" ]