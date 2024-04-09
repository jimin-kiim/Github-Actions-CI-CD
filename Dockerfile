# base image: Node.js v20
FROM node:20

# working directory
WORKDIR /usr/src/app

# copying application dependency file
COPY package*.json ./

# installing dependencies
RUN npm install

# copying application source files
COPY . .

# command starting application
CMD [ "node", "app.js" ]
