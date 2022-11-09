FROM node:16.12.0

# Create app directory
RUN mkdir -p /usr/src/face_recognition_api_tables
WORKDIR /usr/src/face_recognition_api_tables

# Install app dependencies
COPY package.json /usr/src/face_recognition_api_tables
RUN npm install

# Bundle app source
COPY . /usr/src/face_recognition_api_tables

# Build arguments
ARG NODE_VERSION=16.12.0

# Environment
ENV NODE_VERSION $NODE_VERSION
