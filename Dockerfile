FROM ubuntu:18.04

# Basic
RUN apt-get update
RUN apt-get install -y build-essential curl

# Install Node.js v16.x
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN nodejs -v
RUN npm -v

# Install PM2 (a process manager for Node.js applications)
RUN npm install pm2@latest -g

# Start webapp
RUN cd ~
RUN pm2 start ./index.js --watch --ignore-watch="node_modules"
RUN pm2 startup
RUN pm2 save
