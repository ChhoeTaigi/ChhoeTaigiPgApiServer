FROM ubuntu:18.04

# Basic
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y curl
RUN apt-get install -y git

# Install Node.js v16.x
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN nodejs -v
RUN npm -v

# Install PM2 (a process manager for Node.js applications)
RUN npm install pm2@latest -g

# Clone
RUN git clone https://github.com/ChhoeTaigi/ChhoeTaigiPgApiServer

# Start webapp
RUN pm2 start ./ChhoeTaigiPgApiServer/index.js --watch --ignore-watch="node_modules"
RUN pm2 startup
RUN pm2 save
